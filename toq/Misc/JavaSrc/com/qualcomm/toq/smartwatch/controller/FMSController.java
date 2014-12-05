// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.tftp.filetransfer.TFTPFiletransferClient;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.database.FMSDatabaseAdapter;
import com.qualcomm.toq.smartwatch.filetransfer.PhubFileTransferClient;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import java.io.*;
import java.nio.ByteBuffer;
import java.nio.channels.*;
import java.util.*;
import java.util.concurrent.*;
import java.util.zip.*;
import org.json.JSONObject;

public class FMSController extends DefaultController
{
    public class TransactionDetails
    {

        String destPath;
        int response;
        final FMSController this$0;

        public String getDestPath()
        {
            return destPath;
        }

        public int getResponse()
        {
            return response;
        }

        public void setDestPath(String s)
        {
            destPath = s;
        }

        public void setResponse(int i)
        {
            response = i;
        }

        public TransactionDetails(int i, String s)
        {
            this$0 = FMSController.this;
            super();
            response = i;
            destPath = s;
        }
    }


    private static final String FMS_SHARED_PREFS_FILE = "fms_pref";
    private static final String TAG = "FMSController";
    public static final String appName = "FMS_CONTROLLER";
    private static FMSController mInstance = null;
    private String KEY_TRANSACTION_ID;
    private Context context;
    private HashMap destTransferFileMap;
    private ScheduledExecutorService executorService;
    private FMSDatabaseAdapter fmsDatabaseAdapter;
    BroadcastReceiver fmsReceiver;
    private boolean isPhoneWDConnected;
    private File resultFileFolderLocation;
    private HashMap transactionMap;

    private FMSController()
    {
        context = null;
        fmsDatabaseAdapter = null;
        KEY_TRANSACTION_ID = "transaction_id";
        transactionMap = null;
        destTransferFileMap = null;
        resultFileFolderLocation = null;
        executorService = null;
        isPhoneWDConnected = false;
        fmsReceiver = new BroadcastReceiver() {

            final FMSController this$0;

            public void onReceive(Context context1, Intent intent)
            {
                String s;
                s = intent.getAction();
                Log.d("FMSController", (new StringBuilder()).append("fmsReceiver: ").append(s).toString());
                if (fmsDatabaseAdapter == null)
                    fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(ConnectionFactory.getConnectionFactory().getContext());
                if (!Constants.ACTION_FMS_FILE_TRANSFER_COMPLETED.equals(s)) goto _L2; else goto _L1
_L1:
                String s3 = intent.getStringExtra("sent_file_name");
                String s4;
                int j;
                s4 = null;
                Object aobj1[];
                try
                {
                    aobj1 = destTransferFileMap.keySet().toArray();
                }
                catch (Exception exception)
                {
                    Log.e("FMSController", "Exception in FMS BroadcastReceiver");
                    exception.printStackTrace();
                    return;
                }
                j = 0;
_L8:
                if (j >= aobj1.length) goto _L4; else goto _L3
_L3:
                if (((String)destTransferFileMap.get(aobj1[j].toString())).equals(s3))
                    s4 = aobj1[j].toString();
                  goto _L5
_L4:
                if (s4 != null)
                    break MISSING_BLOCK_LABEL_193;
                Log.d("FMSController", (new StringBuilder()).append("Error: ").append(s3).append(" transfer completed, but the mapped destpath is NULL").toString());
                initiateFileTransfer();
                return;
                if (fmsDatabaseAdapter.getFMSState(s4) != 4)
                {
                    Log.d("FMSController", (new StringBuilder()).append("Error: ").append(s4).append(" is not in the expected state: FMS_TRANSFER_IN_PROGRESS").toString());
                    if (!removeTransactionId(16385, s4))
                        Log.d("FMSController", "FMSFileTransferResp Transaction doesn't exist in map");
                    Log.d("FMSController", (new StringBuilder()).append("ACTION_FMS_FILE_TRANSFER_COMPLETED-destTransferFileMap remove key: ").append(s4).toString());
                    destTransferFileMap.remove(s4);
                    initiateFileTransfer();
                    return;
                }
                if (!fmsDatabaseAdapter.setStateTransferComplete())
                {
                    Log.d("FMSController", "FMS state change to TRANSFER_COMPLETE failed");
                    if (!removeTransactionId(16385, s4))
                        Log.d("FMSController", "setStateTransferComplete failed-FMSFileTransferResp Transaction doesn't exist in map");
                    destTransferFileMap.remove(s4);
                    return;
                }
                File file1 = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir()).append("/fms").append("/transfer").toString(), s3);
                if (file1.exists())
                {
                    boolean flag1 = file1.delete();
                    Log.d("FMSController", (new StringBuilder()).append("Delete the Transfer File as transfer success: ").append(s3).append(" result: ").append(flag1).toString());
                }
                FMSDatabaseAdapter.getFMSDatabaseAdapter(ConnectionFactory.getConnectionFactory().getContext()).resetFailedPriorities();
                initiateFileTransfer();
                return;
_L2:
                if (Constants.ACTION_PHONE_WD_CONNECTED.equals(s))
                {
                    Log.d("FMSController", "Received Broadcast message: ACTION_PHONE_WD_CONNECTED");
                    resetFMSCache();
                    isPhoneWDConnected = true;
                    initiateFMSOperation();
                    return;
                }
                if (Constants.ACTION_PHONE_WD_DISCONNECTED.equals(s))
                {
                    Log.d("FMSController", "Received Broadcast message: ACTION_PHONE_WD_DISCONNECTED");
                    isPhoneWDConnected = false;
                    resetFMSCache();
                    return;
                }
                if (!Constants.ACTION_FMS_FILE_TRANSFER_FAILED.equals(s)) goto _L7; else goto _L6
_L6:
                String s1 = intent.getStringExtra("sent_file_name");
                String s2 = null;
                Object aobj[] = destTransferFileMap.keySet().toArray();
                int i = 0;
_L9:
                if (i < aobj.length)
                {
                    if (((String)destTransferFileMap.get(aobj[i].toString())).equals(s1))
                        s2 = aobj[i].toString();
                    break MISSING_BLOCK_LABEL_1016;
                }
                if (s2 != null)
                    break MISSING_BLOCK_LABEL_694;
                Log.d("FMSController", (new StringBuilder()).append("Error: ").append(s1).append(" file transfer failed, but the mapped destpath is NULL").toString());
                return;
                if (fmsDatabaseAdapter.getFMSState(s2) != 4)
                {
                    Log.d("FMSController", (new StringBuilder()).append("Error: transfer failed, but ").append(s2).append(" is not in the expected state: FMS_TRANSFER_IN_PROGRESS").toString());
                    if (!removeTransactionId(16385, s2))
                        Log.d("FMSController", "FMSFileTransferResp Transaction doesn't exist in map");
                    Log.d("FMSController", (new StringBuilder()).append("ACTION_FMS_FILE_TRANSFER_FAILED1-destTransferFileMap remove key: ").append(s2).toString());
                    destTransferFileMap.remove(s2);
                    return;
                }
                Log.d("FMSController", "update DB to Ready to Transfer, due to failure of file transfer 3 times");
                if (fmsDatabaseAdapter.getDestinationPath(4) != null)
                    fmsDatabaseAdapter.setFailedFMSPriority(fmsDatabaseAdapter.getDestinationPath(4)[0]);
                fmsDatabaseAdapter.setStateReadyToTransfer();
                if (!removeTransactionId(16385, s2))
                    Log.d("FMSController", "FMSFileTransferResp Transaction doesn't exist in map");
                Log.d("FMSController", (new StringBuilder()).append("setStateReadyToTransfer2-destTransferFileMap remove key: ").append(s2).toString());
                destTransferFileMap.remove(s2);
                File file = new File((new StringBuilder()).append(ConnectionFactory.getConnectionFactory().getContext().getFilesDir()).append("/fms").append("/transfer").toString(), s1);
                if (file.exists())
                {
                    boolean flag = file.delete();
                    Log.d("FMSController", (new StringBuilder()).append("Delete the Transfer File as transfer failed: ").append(s1).append(" result: ").append(flag).toString());
                    return;
                }
                  goto _L7
_L5:
                j++;
                  goto _L8
_L7:
                return;
                i++;
                  goto _L9
            }

            
            {
                this$0 = FMSController.this;
                super();
            }
        }
;
        Log.d("FMSController", "FMSController Constructor called");
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        if (fmsDatabaseAdapter == null)
        {
            Log.d("FMSController", "In FMSController fmsDatabaseAdapter is null");
            Log.d("FMSController", "FMSDatabaseAdapter open() from FMSController");
            fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(context);
            fmsDatabaseAdapter.open();
            if (!fmsDatabaseAdapter.isFMSDBOpen())
            {
                fmsDatabaseAdapter.close();
                fmsDatabaseAdapter.open();
            }
        }
        if (resultFileFolderLocation == null)
        {
            resultFileFolderLocation = new File((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/fms").append("/transfer").toString());
            if (!resultFileFolderLocation.exists())
                resultFileFolderLocation.mkdir();
        }
        registerFMSReceiver();
        updateTransactionId();
        transactionMap = new HashMap();
        destTransferFileMap = new HashMap();
    }

    private boolean DeleteRecursive(File file)
    {
        Log.d("FMSController", (new StringBuilder()).append("DeleteRecursive() DELETEPREVIOUS TOP").append(file.getPath()).toString());
        if (!file.isDirectory()) goto _L2; else goto _L1
_L1:
        String as[] = file.list();
        int i = 0;
_L9:
        if (i >= as.length) goto _L4; else goto _L3
_L3:
        File file1 = new File(file, as[i]);
        if (!file1.isDirectory()) goto _L6; else goto _L5
_L5:
        Log.d("FMSController", (new StringBuilder()).append("DeleteRecursive() Recursive Call").append(file1.getPath()).toString());
        DeleteRecursive(file1);
          goto _L7
_L6:
        Log.d("FMSController", (new StringBuilder()).append("DeleteRecursive() Delete File").append(file1.getPath()).toString());
        if (!file1.delete())
            Log.d("FMSController", "DeleteRecursive() DELETE FAIL");
          goto _L7
        Exception exception;
        exception;
        Log.e("FMSController", "Exception in DeleteRecursive()");
_L2:
        return false;
_L4:
        boolean flag = file.delete();
        return flag;
_L7:
        i++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    private void checkFMSPendingStateRequest()
    {
        Log.d("FMSController", "checkFMSPendingStateRequest() called");
        try
        {
            if (context == null)
                context = ConnectionFactory.getConnectionFactory().getContext();
            if (fmsDatabaseAdapter == null)
                fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(context);
            if (!isPhoneWDConnected)
            {
                Log.d("FMSController", "PHUB-WD device not in connected state with phone");
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("FMSController", "Exception in checkFMSPendingStateRequest()");
            exception.printStackTrace();
            return;
        }
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 && !isWDFMSClean())
        {
            Log.d("FMSController", "Still FMS Cleanup Response not received");
            removeTransactionId(16387, "/");
            sendFMSCleanupRequest();
            return;
        }
        String as[] = fmsDatabaseAdapter.getDestinationPath(8);
        if (as == null) goto _L2; else goto _L1
_L1:
        if (as.length <= 0) goto _L2; else goto _L3
_L3:
        int i = 0;
_L19:
        if (i >= as.length) goto _L2; else goto _L4
_L4:
        if (System.currentTimeMillis() - fmsDatabaseAdapter.getTimeStamp(as[i]) <= 30000L) goto _L6; else goto _L5
_L5:
        if (!removeTransactionId(16386, as[i])) goto _L8; else goto _L7
_L7:
        Log.d("FMSController", (new StringBuilder()).append(as[i]).append(" timeout in state FMS_DELETE_REQUEST_SENT").toString());
        fmsDatabaseAdapter.updateFMSState(as[i], 7, System.currentTimeMillis());
        Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_MARKED_FOR_DELETION: ").append(as[i]).toString());
          goto _L6
_L8:
        Set set2;
        Log.d("FMSController", (new StringBuilder()).append("Transaction ID for FMSFileRevisionResp doesn't exist for FMS_DELETE_REQUEST_SENT state: ").append(as[i]).toString());
        set2 = transactionMap.keySet();
        Integer integer2;
        for (Iterator iterator2 = set2.iterator(); iterator2.hasNext(); Log.d("FMSController", (new StringBuilder()).append("destpath expected: ").append(((TransactionDetails)transactionMap.get(integer2)).getDestPath()).toString()))
        {
            integer2 = (Integer)iterator2.next();
            Log.d("FMSController", (new StringBuilder()).append("TransId expected: ").append(((TransactionDetails)transactionMap.get(integer2)).getResponse()).toString());
        }

        set2.clear();
          goto _L6
_L2:
        String as1[] = fmsDatabaseAdapter.getDestinationPath(5);
        if (as1 == null) goto _L10; else goto _L9
_L9:
        if (as1.length <= 0) goto _L10; else goto _L11
_L11:
        int j = 0;
_L20:
        if (j >= as1.length) goto _L10; else goto _L12
_L12:
        if (System.currentTimeMillis() - fmsDatabaseAdapter.getTimeStamp(as1[j]) <= 30000L)
            break MISSING_BLOCK_LABEL_1120;
        if (removeTransactionId(16385, as1[j]))
        {
            Log.d("FMSController", (new StringBuilder()).append("checkFMSPendingStateRequest()-destTransferFileMap remove key: ").append(as1[j]).toString());
            destTransferFileMap.remove(as1[j]);
            Log.d("FMSController", (new StringBuilder()).append(as1[j]).append(" timeout in state FMS_TRANSFER_COMPLETE").toString());
            fmsDatabaseAdapter.updateFMSState(as1[j], 3, System.currentTimeMillis());
            Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: ").append(as1[j]).toString());
            if (as1[j].contains("firmware"))
            {
                Intent intent = new Intent();
                intent.setAction(Constants.ACTION_FIRMWARE_TRANSFER);
                intent.putExtra("file_name", "firmware");
                intent.putExtra("firmware_status", "failed");
                intent.putExtra("firmware_message", "FMS response timeout: Firmware file will be resent to WD again, as WD didn't send a FMSTransferResp Success for firmware file.");
                intent.putExtra("endpointtype", 0);
                context.sendBroadcast(intent);
                Log.d("FMSController", "ACTION_FIRMWARE_TRANSFER broadcast sent for failed");
            }
            break MISSING_BLOCK_LABEL_1120;
        }
        Set set1;
        Log.d("FMSController", (new StringBuilder()).append("Transaction ID for FMSFileTransferResp doesn't exist for FMS_TRANSFER_REQUEST_SENT state: ").append(as1[j]).toString());
        set1 = transactionMap.keySet();
        Integer integer1;
        for (Iterator iterator1 = set1.iterator(); iterator1.hasNext(); Log.d("FMSController", (new StringBuilder()).append("destpath expected: ").append(((TransactionDetails)transactionMap.get(integer1)).getDestPath()).toString()))
        {
            integer1 = (Integer)iterator1.next();
            Log.d("FMSController", (new StringBuilder()).append("TransId expected: ").append(((TransactionDetails)transactionMap.get(integer1)).getResponse()).toString());
        }

        set1.clear();
        break MISSING_BLOCK_LABEL_1120;
_L10:
        String as2[] = fmsDatabaseAdapter.getDestinationPath(4);
        if (as2 == null) goto _L14; else goto _L13
_L13:
        if (as2.length != 1 || as2[0].equals("/firmware/1234.zip")) goto _L14; else goto _L15
_L15:
        Set set;
        if (System.currentTimeMillis() - fmsDatabaseAdapter.getTimeStamp(as2[0]) <= 0x493e0L)
            break MISSING_BLOCK_LABEL_1086;
        Log.e("FMSController", (new StringBuilder()).append(as2[0]).append(" file in Transfer In Progress more than 5 mins").toString());
        fmsDatabaseAdapter.updateFMSState(as2[0], 3, System.currentTimeMillis());
        if (removeTransactionId(16385, as2[0]))
            break MISSING_BLOCK_LABEL_1086;
        set = transactionMap.keySet();
        Integer integer;
        for (Iterator iterator = set.iterator(); iterator.hasNext(); Log.d("FMSController", (new StringBuilder()).append("destpath expected: ").append(((TransactionDetails)transactionMap.get(integer)).getDestPath()).toString()))
        {
            integer = (Integer)iterator.next();
            Log.d("FMSController", (new StringBuilder()).append("TransId expected: ").append(((TransactionDetails)transactionMap.get(integer)).getResponse()).toString());
        }

        set.clear();
_L17:
        checkFMSPendingOperation();
        return;
_L14:
        if (as2 == null) goto _L17; else goto _L16
_L16:
        if (as2.length <= 1) goto _L17; else goto _L18
_L18:
        Log.e("FMSController", "More than one file in Transfer In Progress state!!");
          goto _L17
_L6:
        i++;
          goto _L19
        j++;
          goto _L20
    }

    private boolean copyFile(String s, String s1)
    {
        File file;
        File file1;
        RandomAccessFile randomaccessfile;
        FileInputStream fileinputstream;
        FileOutputStream fileoutputstream;
        file = null;
        file1 = null;
        randomaccessfile = null;
        fileinputstream = null;
        fileoutputstream = null;
        String s2;
        File file2;
        s2 = (new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/fms").append(s1).toString();
        file2 = new File(s);
        File file3 = new File(s2);
        boolean flag1;
        Log.d("FMSController", (new StringBuilder()).append("copyFile: srcPath = ").append(file2.getAbsolutePath()).toString());
        Log.d("FMSController", (new StringBuilder()).append("copyFile: destPath = ").append(file3.getAbsolutePath()).toString());
        flag1 = file2.exists();
        randomaccessfile = null;
        fileinputstream = null;
        fileoutputstream = null;
        if (!flag1) goto _L2; else goto _L1
_L1:
        boolean flag2 = file2.isFile();
        randomaccessfile = null;
        fileinputstream = null;
        fileoutputstream = null;
        if (!flag2) goto _L2; else goto _L3
_L3:
        if (!file2.canRead()) goto _L2; else goto _L4
_L4:
        Log.d("FMSController", (new StringBuilder()).append("copyFile: ").append(file2.getAbsolutePath()).append(" file exists and is readable").toString());
        FileLock filelock = null;
        RandomAccessFile randomaccessfile1 = new RandomAccessFile(s, "rw");
        filelock = randomaccessfile1.getChannel().tryLock();
        if (filelock == null) goto _L6; else goto _L5
_L5:
        Log.d("FMSController", (new StringBuilder()).append("copyFile(): ").append(s).append(" File is locked").toString());
        if (!file3.exists()) goto _L8; else goto _L7
_L7:
        file3.setWritable(true);
        if (!file3.delete()) goto _L10; else goto _L9
_L9:
        Log.d("FMSController", (new StringBuilder()).append("copyFile(): ").append(s2).append(" File Deleted Success").toString());
_L14:
        FileInputStream fileinputstream1 = new FileInputStream(file2);
        FileOutputStream fileoutputstream1 = new FileOutputStream(file3);
        byte abyte0[] = new byte[512];
_L13:
        int i = fileinputstream1.read(abyte0);
        if (i <= 0) goto _L12; else goto _L11
_L11:
        fileoutputstream1.write(abyte0, 0, i);
          goto _L13
        Exception exception6;
        exception6;
        fileoutputstream = fileoutputstream1;
        fileinputstream = fileinputstream1;
        randomaccessfile = randomaccessfile1;
_L21:
        Log.e("FMSController", (new StringBuilder()).append("copyFile(): Exception in file lock of ").append(s).append(" to ").append(s1).append(" :").append(exception6.toString()).toString());
        exception6.printStackTrace();
        if (randomaccessfile == null)
            break MISSING_BLOCK_LABEL_466;
        randomaccessfile.close();
        randomaccessfile = null;
        if (filelock == null)
            break MISSING_BLOCK_LABEL_479;
        filelock.release();
        filelock = null;
_L27:
        if (filelock == null)
            break MISSING_BLOCK_LABEL_489;
        filelock.release();
_L29:
        Log.e("FMSController", "copyFile: closing copyFile()");
        if (file2 == null);
        if (file3 == null);
        if (fileinputstream == null)
            break MISSING_BLOCK_LABEL_517;
        fileinputstream.close();
        if (fileoutputstream == null)
            break MISSING_BLOCK_LABEL_527;
        fileoutputstream.close();
        boolean flag;
        flag = false;
        if (randomaccessfile == null)
            break MISSING_BLOCK_LABEL_540;
        randomaccessfile.close();
_L16:
        return flag;
_L10:
        Log.d("FMSController", (new StringBuilder()).append("copyFile(): ").append(s2).append(" File Deleted Failed").toString());
          goto _L14
_L8:
        boolean flag3 = file3.getParentFile().mkdirs();
        Log.d("FMSController", (new StringBuilder()).append("copyFile(): ").append(file3.getAbsolutePath()).append(" dest folder creation: ").append(flag3).toString());
          goto _L14
        Exception exception5;
        exception5;
        randomaccessfile = randomaccessfile1;
_L28:
        if (filelock == null)
            break MISSING_BLOCK_LABEL_647;
        filelock.release();
_L30:
        throw exception5;
        Exception exception;
        exception;
        file1 = file3;
        file = file2;
_L26:
        Log.e("FMSController", (new StringBuilder()).append("Exception in copyFile() of ").append(s).append(" to ").append(s1).append(" :").append(exception.toString()).toString());
        exception.printStackTrace();
        Exception exception1;
        Exception exception4;
        IOException ioexception;
        Exception exception7;
        IOException ioexception1;
        ClosedChannelException closedchannelexception;
        Exception exception8;
        IOException ioexception2;
        ClosedChannelException closedchannelexception1;
        Exception exception9;
        IOException ioexception3;
        try
        {
            Log.e("FMSController", "copyFile: closing copyFile()");
        }
        catch (Exception exception3)
        {
            Log.e("FMSController", "copyFile: Error nulling or closing copyFile()");
            exception3.printStackTrace();
            return false;
        }
        Exception exception2;
        if (file == null);
        if (file1 == null);
        if (fileinputstream == null)
            break MISSING_BLOCK_LABEL_738;
        fileinputstream.close();
        if (fileoutputstream == null)
            break MISSING_BLOCK_LABEL_748;
        fileoutputstream.close();
        flag = false;
        if (randomaccessfile == null) goto _L16; else goto _L15
_L15:
        randomaccessfile.close();
        return false;
_L12:
        fileinputstream1.close();
        fileoutputstream1.close();
        fileinputstream = null;
        fileoutputstream = null;
        if (randomaccessfile1 == null) goto _L18; else goto _L17
_L17:
        randomaccessfile1.close();
        randomaccessfile = null;
_L37:
        if (filelock == null)
            break MISSING_BLOCK_LABEL_805;
        filelock.release();
        filelock = null;
_L20:
        flag = true;
        if (filelock == null)
            break MISSING_BLOCK_LABEL_818;
        filelock.release();
_L22:
        Log.e("FMSController", "copyFile: closing copyFile()");
        if (file2 == null);
        if (file3 == null);
        if (true)
            break MISSING_BLOCK_LABEL_844;
        null.close();
        if (true)
            continue; /* Loop/switch isn't completed */
        null.close();
        if (randomaccessfile == null) goto _L16; else goto _L19
_L19:
        randomaccessfile.close();
        return flag;
        closedchannelexception1;
        Log.d("FMSController", (new StringBuilder()).append("copyFile() :").append(s).append(" lock is already released").toString());
          goto _L20
        exception6;
        fileinputstream = null;
        fileoutputstream = null;
          goto _L21
        ioexception2;
        Log.e("FMSController", (new StringBuilder()).append("copyFile IOException ").append(ioexception2).toString());
          goto _L22
        exception1;
        file1 = file3;
        file = file2;
_L32:
        Log.e("FMSController", "copyFile: closing copyFile()");
        if (file == null);
        break MISSING_BLOCK_LABEL_1680;
        if (file1 == null);
        if (fileinputstream == null)
            break MISSING_BLOCK_LABEL_977;
        fileinputstream.close();
        if (fileoutputstream == null)
            break MISSING_BLOCK_LABEL_987;
        fileoutputstream.close();
        if (randomaccessfile != null)
            try
            {
                randomaccessfile.close();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception2)
            {
                Log.e("FMSController", "copyFile: Error nulling or closing copyFile()");
                exception2.printStackTrace();
            }
        throw exception1;
        exception8;
_L36:
        Log.e("FMSController", "copyFile: Error nulling or closing copyFile()");
        exception8.printStackTrace();
        return flag;
_L6:
        Log.e("FMSController", (new StringBuilder()).append("copyFile(): ").append(s).append(" File failed to get locked for copy operation").toString());
        if (randomaccessfile1 == null)
            break MISSING_BLOCK_LABEL_1059;
        randomaccessfile1.close();
        if (filelock == null)
            break MISSING_BLOCK_LABEL_1069;
        filelock.release();
_L25:
        Log.e("FMSController", "copyFile: closing copyFile()");
        if (file2 == null);
        if (file3 == null);
        if (true)
            break MISSING_BLOCK_LABEL_1095;
        null.close();
        if (true)
            break MISSING_BLOCK_LABEL_1103;
        null.close();
        if (randomaccessfile1 == null) goto _L24; else goto _L23
_L23:
        randomaccessfile1.close();
        return false;
        ioexception3;
        Log.e("FMSController", (new StringBuilder()).append("copyFile IOException ").append(ioexception3).toString());
          goto _L25
        exception;
        randomaccessfile = randomaccessfile1;
        file1 = file3;
        file = file2;
        fileinputstream = null;
        fileoutputstream = null;
          goto _L26
        exception9;
_L35:
        Log.e("FMSController", "copyFile: Error nulling or closing copyFile()");
        exception9.printStackTrace();
_L24:
        return false;
        closedchannelexception;
        Log.e("FMSController", (new StringBuilder()).append("copyFile() Exception ").append(s).append(" lock is already released").toString());
          goto _L27
        exception5;
          goto _L28
        ioexception1;
        Log.e("FMSController", (new StringBuilder()).append("copyFile IOException ").append(ioexception1).toString());
          goto _L29
        exception7;
_L34:
        Log.e("FMSController", "copyFile: Error nulling or closing copyFile()");
        exception7.printStackTrace();
        return false;
        ioexception;
        Log.e("FMSController", (new StringBuilder()).append("copyFile IOException ").append(ioexception).toString());
          goto _L30
_L2:
        Log.e("FMSController", (new StringBuilder()).append("copyFile(): Unable to copyFile of ").append(s).append(" to ").append(s2).toString());
        Log.e("FMSController", (new StringBuilder()).append("copyFile(): ").append(s).append(" not found").toString());
        Log.e("FMSController", "copyFile: closing copyFile()");
        if (file2 == null);
        if (file3 == null);
        if (true)
            break MISSING_BLOCK_LABEL_1398;
        null.close();
        if (true)
            break MISSING_BLOCK_LABEL_1406;
        null.close();
        flag = false;
        if (true) goto _L16; else goto _L31
_L31:
        null.close();
        return false;
        exception4;
_L33:
        Log.e("FMSController", "copyFile: Error nulling or closing copyFile()");
        exception4.printStackTrace();
        return false;
        exception1;
          goto _L32
        exception1;
        file = file2;
        file1 = null;
        randomaccessfile = null;
        fileinputstream = null;
        fileoutputstream = null;
          goto _L32
        exception1;
        randomaccessfile = randomaccessfile1;
        file1 = file3;
        file = file2;
        fileinputstream = null;
        fileoutputstream = null;
          goto _L32
        exception;
        file1 = null;
        randomaccessfile = null;
        fileinputstream = null;
        fileoutputstream = null;
        file = null;
          goto _L26
        exception;
        file = file2;
        file1 = null;
        randomaccessfile = null;
        fileinputstream = null;
        fileoutputstream = null;
          goto _L26
        exception4;
          goto _L33
        exception5;
        fileinputstream = fileinputstream1;
        randomaccessfile = randomaccessfile1;
        fileoutputstream = null;
          goto _L28
        exception5;
        fileoutputstream = fileoutputstream1;
        fileinputstream = fileinputstream1;
        randomaccessfile = randomaccessfile1;
          goto _L28
        exception7;
          goto _L34
        exception6;
        fileinputstream = fileinputstream1;
        randomaccessfile = randomaccessfile1;
        fileoutputstream = null;
          goto _L21
        exception9;
          goto _L35
        exception8;
          goto _L36
_L18:
        randomaccessfile = randomaccessfile1;
          goto _L37
        exception6;
        randomaccessfile = randomaccessfile1;
        fileinputstream = null;
        fileoutputstream = null;
          goto _L21
    }

    private int createTransactionId(TransactionDetails transactiondetails)
    {
        this;
        JVM INSTR monitorenter ;
        int j;
        updateTransactionId();
        updateTransactionMap(getTransactionId(), transactiondetails);
        Log.d("FMSController", (new StringBuilder()).append("createTransactionId (): Transaction ID =  ").append(getTransactionId()).toString());
        j = getTransactionId();
        int i = j;
_L2:
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception1;
        exception1;
        Log.e("FMSController", (new StringBuilder()).append("Exception in createTransactionId(): ").append(exception1.toString()).toString());
        Log.d("FMSController", "createTransactionId (): Transaction ID =  0");
        i = 0;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    private String createTransferFileName(String s, int i)
    {
        return (new StringBuilder()).append(s.substring(1 + s.lastIndexOf("/"), s.lastIndexOf("."))).append("_").append(i).append(s.substring(s.lastIndexOf("."))).toString();
    }

    public static byte[] getBytes(InputStream inputstream)
        throws IOException
    {
        ByteBuffer bytebuffer = ByteBuffer.allocate(inputstream.available());
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0, 0, 1024);
            if (i != -1)
            {
                bytebuffer.put(abyte0, 0, i);
            } else
            {
                inputstream.close();
                return bytebuffer.array();
            }
        } while (true);
    }

    private long getCheckSum(String s)
    {
        File file;
        CheckedInputStream checkedinputstream;
        file = new File(s);
        checkedinputstream = null;
        if (file.exists()) goto _L2; else goto _L1
_L1:
        Log.d("FMSController", (new StringBuilder()).append(file.getAbsolutePath()).append(" doesnot exist").toString());
        long l;
        if (false)
            try
            {
                null.close();
            }
            catch (IOException ioexception3)
            {
                ioexception3.printStackTrace();
            }
        l = -1L;
_L4:
        return l;
_L2:
        CheckedInputStream checkedinputstream1 = new CheckedInputStream(new FileInputStream(file), new CRC32());
        int i = (int)file.length();
        checkedinputstream1.read(new byte[i], 0, i);
        l = checkedinputstream1.getChecksum().getValue();
        checkedinputstream1.close();
        checkedinputstream = null;
        Log.d("FMSController", (new StringBuilder()).append("getCheckSum(): for ").append(s).append(" = ").append(l).toString());
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception2)
            {
                ioexception2.printStackTrace();
                return l;
            }
            return l;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
_L8:
        Log.d("FMSController", exception1.toString());
        exception1.printStackTrace();
        if (checkedinputstream != null)
            try
            {
                checkedinputstream.close();
            }
            catch (IOException ioexception1)
            {
                ioexception1.printStackTrace();
            }
        return -1L;
        Exception exception;
        exception;
_L6:
        if (checkedinputstream != null)
            try
            {
                checkedinputstream.close();
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
            }
        throw exception;
        exception;
        checkedinputstream = checkedinputstream1;
        if (true) goto _L6; else goto _L5
_L5:
        exception1;
        checkedinputstream = checkedinputstream1;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static FMSController getFmsController()
    {
        if (ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            if (mInstance == null)
            {
                Log.d("FMSController", "FMSController mInstance is null");
                mInstance = new FMSController();
            }
        } else
        {
            Log.e("FMSController", (new StringBuilder()).append("getFmsController(): context is null: mInstance = ").append(mInstance).toString());
        }
        return mInstance;
    }

    private int getTransactionId()
    {
        int i;
        try
        {
            i = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("fms_pref", 0).getInt(KEY_TRANSACTION_ID, 0);
            Log.d("FMSController", (new StringBuilder()).append("getTransactionId():  ").append(i).toString());
        }
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in getTransactionId(): ").append(exception.toString()).toString());
            Log.d("FMSController", "getTransactionId():  0");
            return 0;
        }
        return i;
    }

    private void initiateFileTransfer()
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("FMSController", "initiateFileTransfer() called");
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        if (fmsDatabaseAdapter == null)
            fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(context);
        if (fmsDatabaseAdapter.isFileTransferInProgress())
            break MISSING_BLOCK_LABEL_961;
        if (!fmsDatabaseAdapter.isFMSEntryAvailable("/firmware/1234.zip") || fmsDatabaseAdapter.getFMSState("/firmware/1234.zip") != 3) goto _L2; else goto _L1
_L1:
        String s = "/firmware/1234.zip";
_L5:
        if (s != null) goto _L4; else goto _L3
_L3:
        Log.e("FMSController", "No file exists in DB in ready to transfer state");
_L6:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        s = fmsDatabaseAdapter.getNextFileTransferPath();
          goto _L5
_L4:
        if (transactionMap.size() < 3)
            break MISSING_BLOCK_LABEL_184;
        Log.d("FMSController", (new StringBuilder()).append("FMS Request message count: ").append(transactionMap.size()).append(" reached maximum limit").toString());
          goto _L6
        Exception exception1;
        exception1;
        Log.e("FMSController", "Exception in initiateNextFileTransfer()");
        exception1.printStackTrace();
          goto _L6
        Exception exception;
        exception;
        throw exception;
        int i;
        String s1;
        String s2;
label0:
        {
            if ((!isPhoneWDConnected || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) != 1 || !isWDFMSClean()) && (!isPhoneWDConnected || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) != 2 || !s.equalsIgnoreCase("/firmware/1234.zip")))
                break MISSING_BLOCK_LABEL_866;
            Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_TRANSFER_IN_PROGRESS: ").append(s).toString());
            Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_TRANSFER_IN_PROGRESS: ").append(s).toString());
            Log.printUsageLog("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_TRANSFER_IN_PROGRESS: ").append(s).toString());
            fmsDatabaseAdapter.updateFMSState(s, 4, System.currentTimeMillis());
            i = createTransactionId(new TransactionDetails(16385, s));
            s1 = createTransferFileName(s, i);
            s2 = (new StringBuilder()).append("/transfer/").append(s1).toString();
            if (copyFile((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/fms").append(s).toString(), s2))
                break label0;
            Log.d("FMSController", (new StringBuilder()).append("copyFile() failed for file: ").append(s).toString());
            fmsDatabaseAdapter.setFailedFMSPriority(fmsDatabaseAdapter.getDestinationPath(4)[0]);
            fmsDatabaseAdapter.setStateReadyToTransfer();
            removeTransactionId(i, 16385, s);
        }
          goto _L6
        ConnectionFactory connectionfactory;
        Log.d("FMSController", (new StringBuilder()).append("DB checksum of filePath = ").append(fmsDatabaseAdapter.getFMSChecksum(s)).toString());
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("transaction_id", i);
        jsonobject.put("file_path", s);
        jsonobject.put("sent_file_name", s1);
        jsonobject.put("checksum", getCheckSum((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/fms").append(s2).toString()));
        Log.printUsageLog("FMSController", "Sending FMSFileTransferReq to WD");
        sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 17, 18, jsonobject, 1, i);
        Log.d("FMSController", (new StringBuilder()).append("Sent FMSFileTransferReq to WD: ").append(jsonobject.toString()).toString());
        Log.d("FMSController", (new StringBuilder()).append("destTransferFileMap add new mapping: ").append(s).append("/").append(s1).toString());
        destTransferFileMap.put(s, s1);
        if (resultFileFolderLocation == null)
            resultFileFolderLocation = new File((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile().getAbsolutePath()).append("/fms").append("/transfer").toString());
        connectionfactory = ConnectionFactory.getConnectionFactory();
        boolean flag;
        flag = false;
        if (connectionfactory == null)
            break MISSING_BLOCK_LABEL_780;
        flag = ToqConnectionHandlerImpl.getConnectionHandler().getEndPointEnableTFTPMode(0);
        Log.d("TFTPFiletransferClient", (new StringBuilder()).append("In FMSContoller.java enableTFTP = ").append(flag).append(", fileName = ").append(s1).toString());
        if (!flag)
            break MISSING_BLOCK_LABEL_844;
        TFTPFiletransferClient.getTFTPFiletransferClient(ToqApplication.getAppContext()).sendFile(resultFileFolderLocation.getAbsolutePath(), s1);
          goto _L6
        PhubFileTransferClient.getPhubFileTransferClient(context).sendFile(resultFileFolderLocation.getAbsolutePath(), s1);
          goto _L6
        Log.d("FMSController", "Phone and WD are in Disconnected state 3. Request message cannot be processed");
        Log.d("FMSController", (new StringBuilder()).append("isPhoneWDConnected  = ").append(isPhoneWDConnected).toString());
        Log.d("FMSController", (new StringBuilder()).append("ConnectionFactory.getConnectionFactory().getWDVersionstate() = ").append(ConnectionFactory.getConnectionFactory().getEndPointVersionState(0)).toString());
        Log.d("FMSController", (new StringBuilder()).append("filePath = ").append(s).toString());
          goto _L6
        Log.d("FMSController", "Transaction exists in DB with FMS state: FMS_TRANSFER_IN_PROGRESS");
          goto _L6
    }

    private boolean isPathFirmwareAndCompatibilityOff(String s)
    {
        boolean flag = false;
        if (s != null)
        {
            boolean flag1 = s.contains("firmware");
            flag = false;
            if (flag1)
            {
                ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
                flag = false;
                if (connectionfactory != null)
                {
                    boolean flag2 = ToqConnectionHandlerImpl.getConnectionHandler().getEndPointCheckCompatibilityMode(0);
                    flag = false;
                    if (!flag2)
                    {
                        Log.e("FMSController", "Compatibility set to false.Firmware will not be pushed");
                        flag = true;
                    }
                }
            }
        }
        return flag;
    }

    private boolean removeTransactionId(int i, int j, String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (transactionMap != null) goto _L2; else goto _L1
_L1:
        Log.e("FMSController", "transaction map is null");
        boolean flag = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        if (!transactionMap.containsKey(Integer.valueOf(i)))
            break MISSING_BLOCK_LABEL_219;
        Log.d("FMSController", (new StringBuilder()).append("Map dest path: ").append(((TransactionDetails)transactionMap.get(Integer.valueOf(i))).getDestPath()).append(" recieved destpath:").append(s).toString());
        if (((TransactionDetails)transactionMap.get(Integer.valueOf(i))).getResponse() != j || !((TransactionDetails)transactionMap.get(Integer.valueOf(i))).getDestPath().equals(s))
            break MISSING_BLOCK_LABEL_178;
        transactionMap.remove(Integer.valueOf(i));
        Log.d("FMSController", (new StringBuilder()).append("Removed Transaction ID: ").append(i).toString());
        flag = true;
        continue; /* Loop/switch isn't completed */
        Log.e("FMSController", (new StringBuilder()).append("Transaction ID: ").append(i).append(" exists, but not mapped to response ").append(j).toString());
        flag = false;
        continue; /* Loop/switch isn't completed */
        Log.e("FMSController", (new StringBuilder()).append("Transaction ID: ").append(i).append(" doesn't exist for response ").append(j).toString());
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private boolean removeTransactionId(int i, String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (transactionMap != null) goto _L2; else goto _L1
_L1:
        Log.e("FMSController", "transaction map is null");
        boolean flag = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        Set set = transactionMap.keySet();
        if (s != null || i != 16385)
            break MISSING_BLOCK_LABEL_137;
        Iterator iterator1 = set.iterator();
        Integer integer1;
        do
        {
            if (!iterator1.hasNext())
                break MISSING_BLOCK_LABEL_251;
            integer1 = (Integer)iterator1.next();
        } while (((TransactionDetails)transactionMap.get(integer1)).getResponse() != i);
        transactionMap.remove(integer1);
        Log.d("FMSController", (new StringBuilder()).append("Removed Transaction ID: ").append(integer1).toString());
        flag = true;
        continue; /* Loop/switch isn't completed */
        Iterator iterator = set.iterator();
        Integer integer;
        do
        {
            if (!iterator.hasNext())
                break MISSING_BLOCK_LABEL_251;
            integer = (Integer)iterator.next();
        } while (((TransactionDetails)transactionMap.get(integer)).getResponse() != i || !((TransactionDetails)transactionMap.get(integer)).getDestPath().equals(s));
        transactionMap.remove(integer);
        Log.d("FMSController", (new StringBuilder()).append("Removed Transaction ID: ").append(integer).toString());
        flag = true;
        continue; /* Loop/switch isn't completed */
        Log.e("FMSController", "TransactionId not found, failed to remove");
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    private void updateTransactionId()
    {
        this;
        JVM INSTR monitorenter ;
        SharedPreferences sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("fms_pref", 0);
        Log.d("FMSController", (new StringBuilder()).append("updateTransactionId (): Current Transaction ID =  ").append(getTransactionId()).toString());
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putInt(KEY_TRANSACTION_ID, ConnectionFactory.getConnectionFactory().createTransactionID());
        editor.commit();
        Log.d("FMSController", (new StringBuilder()).append("updateTransactionId(): New Transaction ID =  ").append(getTransactionId()).toString());
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        Log.e("FMSController", (new StringBuilder()).append("Exception in updateTransactionId(): ").append(exception1.toString()).toString());
        Log.d("FMSController", (new StringBuilder()).append("updateTransactionId(): New Transaction ID =  ").append(getTransactionId()).toString());
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    private void updateTransactionMap(int i, TransactionDetails transactiondetails)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("FMSController", (new StringBuilder()).append("reqValue:::").append(transactiondetails.response).toString());
        if (transactionMap != null)
        {
            Iterator iterator = transactionMap.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                Integer integer = (Integer)iterator.next();
                if (((TransactionDetails)transactionMap.get(integer)).getResponse() != transactiondetails.response || !((TransactionDetails)transactionMap.get(integer)).getDestPath().equals(transactiondetails.destPath))
                    continue;
                transactionMap.remove(integer);
                break;
            } while (true);
            transactionMap.put(Integer.valueOf(i), transactiondetails);
        }
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        Log.e("FMSController", (new StringBuilder()).append("Exception in setTransactionMap(): ").append(exception1.toString()).toString());
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void checkFMSPendingOperation()
    {
        Log.d("FMSController", "checkFMSPendingOperation() called");
        try
        {
            if (context == null)
                context = ConnectionFactory.getConnectionFactory().getContext();
            if (fmsDatabaseAdapter == null)
                fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(context);
            initiateFileTransfer();
            if (!isPhoneWDConnected)
            {
                Log.d("FMSController", "Phone and WD are in Disconnected state 4. Request message cannot be processed");
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in initiateFMSOperation(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 && !isWDFMSClean())
        {
            Log.d("FMSController", "Still FMS Cleanup Request to be sent");
            sendFMSCleanupRequest();
            return;
        }
        String as[] = fmsDatabaseAdapter.getPendingReqDestPath();
        if (as == null) goto _L2; else goto _L1
_L1:
        if (as.length <= 0) goto _L2; else goto _L3
_L3:
        int i = 0;
_L8:
        if (i >= as.length) goto _L5; else goto _L4
_L4:
        if (transactionMap.size() >= 3)
        {
            Log.d("FMSController", (new StringBuilder()).append("FMS Request message count: ").append(transactionMap.size()).append(" reached maximum limit").toString());
            return;
        }
        if (isPhoneWDConnected && ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 && isWDFMSClean() || isPhoneWDConnected && ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 2 && as[i].equalsIgnoreCase("/firmware/1234.zip"))
        {
            fmsDatabaseAdapter.updateFMSState(as[i], 8, System.currentTimeMillis());
            Log.d("FMSController", (new StringBuilder()).append("FMS State updated to FMS_DELETE_REQUEST_SENT: ").append(as[i]).toString());
            JSONObject jsonobject = new JSONObject();
            int j = createTransactionId(new TransactionDetails(16386, as[i]));
            jsonobject.put("transaction_id", j);
            jsonobject.put("file_path", as[i]);
            jsonobject.put("checksum", fmsDatabaseAdapter.getFMSChecksum(as[i]));
            Log.printUsageLog("FMSController", "Sending FMSDeleteReq to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 17, 18, jsonobject, 2, j);
            Log.d("FMSController", (new StringBuilder()).append("sending FMSDeleteReq to WD: ").append(jsonobject.toString()).toString());
        }
          goto _L6
_L2:
        Log.d("FMSController", "No Pending Request to be sent from checkFMSPendingOperation()");
_L5:
        return;
_L6:
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void clearFMSData()
    {
        Log.d("FMSController", "FMSController: clearFMSData() called");
        ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("fms_pref", 0).edit().clear().commit();
        if (transactionMap != null)
            transactionMap.clear();
        if (destTransferFileMap != null)
        {
            Log.d("FMSController", "clearFMSData(): clear destTransferFileMap mapping");
            destTransferFileMap.clear();
        }
        fmsDatabaseAdapter.dropDB();
        fmsDatabaseAdapter.close();
        boolean flag = DeleteRecursive(new File((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/fms").toString()));
        Log.d("FMSController", (new StringBuilder()).append("Delete of all FMS files = ").append(flag).toString());
        if (executorService != null && !executorService.isShutdown())
        {
            executorService.shutdownNow();
            executorService = null;
        }
        unRegisterFMSReceiver();
    }

    public void fmsRemoveDir(int i, String s, boolean flag)
    {
    }

    public int fmsRemoveFile(int i, String s)
    {
        Log.d("FMSController", (new StringBuilder()).append("fmsRemoveFile for destpath = ").append(s).toString());
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        if (fmsDatabaseAdapter == null)
            fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(context);
        if (fmsDatabaseAdapter.isFMSEntryAvailable(s))
            break MISSING_BLOCK_LABEL_104;
        Log.e("FMSController", (new StringBuilder()).append("fmsRemoveFile call: no file with ").append(s).append(" found.").toString());
        return 1;
        if (fmsDatabaseAdapter.getFMSState(s) != 8)
            break MISSING_BLOCK_LABEL_144;
        Log.d("FMSController", (new StringBuilder()).append("Already delete request has been sent to WD for destpath: ").append(s).toString());
        return 0;
        fmsDatabaseAdapter.updateFMSState(s, 7, System.currentTimeMillis());
        Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_MARKED_FOR_DELETION: ").append(s).toString());
        if (transactionMap.size() < 3)
            break MISSING_BLOCK_LABEL_232;
        Log.d("FMSController", (new StringBuilder()).append("FMS Request message count: ").append(transactionMap.size()).append(" reached maximum limit").toString());
        return 0;
        if (isPhoneWDConnected && ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 && isWDFMSClean())
        {
            fmsDatabaseAdapter.updateFMSState(s, 8, System.currentTimeMillis());
            Log.d("FMSController", (new StringBuilder()).append("FMS State updated to FMS_DELETE_REQUEST_SENT: ").append(s).toString());
            JSONObject jsonobject = new JSONObject();
            int j = createTransactionId(new TransactionDetails(16386, s));
            jsonobject.put("transaction_id", j);
            jsonobject.put("file_path", s);
            jsonobject.put("type", "file");
            Log.printUsageLog("FMSController", "Sending FMSDeleteReq to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 17, 18, jsonobject, 2, j);
            Log.d("FMSController", (new StringBuilder()).append("Sent FMSDeleteReq to WD: ").append(jsonobject.toString()).toString());
            break MISSING_BLOCK_LABEL_461;
        }
        Log.d("FMSController", "Phone and WD are in Disconnected state 2. Request message cannot be processed");
        return 0;
        Exception exception;
        exception;
        Log.e("FMSController", (new StringBuilder()).append("Exception in fmsRemoveFile call: ").append(exception.toString()).toString());
        return 0;
    }

    public boolean fmsResynchRequest(int i, String s)
    {
        boolean flag = false;
        if (!s.equals("/")) goto _L2; else goto _L1
_L1:
        String as1[];
        Log.d("FMSController", "FMSReSyncReq: to resync all exisiting files");
        as1 = fmsDatabaseAdapter.getDestinationPath(6);
        flag = false;
        if (as1 == null) goto _L4; else goto _L3
_L3:
        if (as1.length <= 0) goto _L4; else goto _L5
_L5:
        int i1 = 0;
_L15:
        if (i1 >= as1.length) goto _L7; else goto _L6
_L6:
        Log.d("FMSController", (new StringBuilder()).append("ii = ").append(i1).append(" destpath[ii] = ").append(as1[i1]).toString());
        if (!isPathFirmwareAndCompatibilityOff(as1[i1])) goto _L9; else goto _L8
_L8:
        fmsRemoveFile(1, as1[i1]);
          goto _L10
_L9:
        Intent intent;
        int l;
        try
        {
            fmsDatabaseAdapter.updateFMSState(as1[i1], 3, System.currentTimeMillis());
        }
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in reSynchRequest ").append(exception.toString()).toString());
            return flag;
        }
        flag = true;
          goto _L10
_L4:
        Log.e("FMSController", (new StringBuilder()).append("fmsResynchRequest for path: ").append(s).append(" no file in FMS_SYNCED state").toString());
_L7:
        if (!flag)
            break; /* Loop/switch isn't completed */
        if (!s.contains("firmware"))
            break; /* Loop/switch isn't completed */
        intent = new Intent();
        intent.setAction(Constants.ACTION_FIRMWARE_TRANSFER);
        intent.putExtra("file_name", "firmware");
        intent.putExtra("firmware_status", "resync");
        intent.putExtra("firmware_message", "WD has sent a FMSReSyncReq for firmware file");
        intent.putExtra("endpointtype", 0);
        context.sendBroadcast(intent);
        Log.d("FMSController", "ACTION_FIRMWARE_TRANSFER broadcast sent for resync");
        return flag;
_L2:
        if (!fmsDatabaseAdapter.isFMSEntryAvailable(s))
            break MISSING_BLOCK_LABEL_416;
        Log.d("FMSController", (new StringBuilder()).append("Received FMSReSyncReq: ").append(s).append(" Reset state to FMS_READY_TO_TRANSFER").toString());
        l = fmsDatabaseAdapter.getFMSState(s);
        flag = false;
        if (l != 6)
            break MISSING_BLOCK_LABEL_347;
        fmsDatabaseAdapter.updateFMSState(s, 3, System.currentTimeMillis());
        flag = true;
        continue; /* Loop/switch isn't completed */
        Log.e("FMSController", (new StringBuilder()).append("fmsResynchRequest for path: ").append(s).append(" not in FMS_SYNCED state").toString());
        flag = false;
        if (true) goto _L7; else goto _L11
        String as[] = fmsDatabaseAdapter.getAllDestinationPath();
        flag = false;
        if (as == null) goto _L7; else goto _L12
_L12:
        int j = as.length;
        flag = false;
        if (j <= 0) goto _L7; else goto _L13
_L13:
        int k = 0;
_L16:
        if (k >= as.length) goto _L7; else goto _L14
_L14:
        if (!as[k].contains(s))
            break MISSING_BLOCK_LABEL_551;
        if (fmsDatabaseAdapter.getFMSState(as[k]) != 6)
            break MISSING_BLOCK_LABEL_505;
        fmsDatabaseAdapter.updateFMSState(as[k], 3, System.currentTimeMillis());
        flag = true;
        break MISSING_BLOCK_LABEL_551;
        Log.e("FMSController", (new StringBuilder()).append("fmsResynchRequest for path: ").append(as[k]).append(" not in FMS_SYNCED state").toString());
        break MISSING_BLOCK_LABEL_551;
_L10:
        i1++;
          goto _L15
_L11:
        return flag;
        k++;
          goto _L16
    }

    public int fmsSyncFile(int i, InputStream inputstream, String s, int j)
    {
        FileOutputStream fileoutputstream = null;
        Log.d("FMSController", (new StringBuilder()).append("fmsSyncFile(InputStream): destPath = ").append(s).toString());
        if (s != null) goto _L2; else goto _L1
_L1:
        Log.e("FMSController", "fmsSyncFile(InputStream): destPath is null");
        int k;
        if (inputstream != null)
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception2)
            {
                Log.e("FMSController", (new StringBuilder()).append("Exception in closing the stream: ").append(ioexception2.toString()).toString());
                return 0;
            }
        k = 0;
        if (true)
            break MISSING_BLOCK_LABEL_59;
        null.close();
_L4:
        return k;
_L2:
        Context context1 = context;
        fileoutputstream = null;
        if (context1 != null)
            break MISSING_BLOCK_LABEL_119;
        context = ConnectionFactory.getConnectionFactory().getContext();
        byte abyte0[];
        if (fmsDatabaseAdapter == null)
            fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(context);
        abyte0 = getBytes(inputstream);
        inputstream.close();
        inputstream = null;
        long l;
        CRC32 crc32 = new CRC32();
        crc32.update(abyte0, 0, abyte0.length);
        l = crc32.getValue();
        Log.d("FMSController", (new StringBuilder()).append("InputStream Size->").append(abyte0.length).toString());
        Log.d("FMSController", (new StringBuilder()).append("InputStream Checksum->").append(l).toString());
        if (l != 0L)
            break MISSING_BLOCK_LABEL_321;
        Log.d("FMSController", (new StringBuilder()).append("Checksum is Zero so discard the FMS request for file: ").append(s).toString());
        k = 1;
        if (true)
            continue; /* Loop/switch isn't completed */
        try
        {
            null.close();
        }
        catch (IOException ioexception3)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in closing the stream: ").append(ioexception3.toString()).toString());
            return k;
        }
        if (true) goto _L4; else goto _L3
_L3:
        null.close();
        return k;
        if (!fmsDatabaseAdapter.isFMSEntryAvailable(s) || l != fmsDatabaseAdapter.getFMSChecksum(s))
            break MISSING_BLOCK_LABEL_427;
        Log.d("FMSController", (new StringBuilder()).append("fmsSyncFile(): checksum is same, no need to update file ").append(s).toString());
        k = 1;
        if (true)
            continue; /* Loop/switch isn't completed */
        try
        {
            null.close();
        }
        catch (IOException ioexception6)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in closing the stream: ").append(ioexception6.toString()).toString());
            return k;
        }
        if (true) goto _L4; else goto _L5
_L5:
        null.close();
        return k;
        File file = new File((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/fms").append(s).toString());
        if (!file.exists()) goto _L7; else goto _L6
_L6:
        file.setWritable(true);
        file.delete();
_L15:
        FileOutputStream fileoutputstream1 = new FileOutputStream(file);
        fileoutputstream1.write(abyte0, 0, abyte0.length);
        fileoutputstream1.flush();
        fileoutputstream1.close();
        fileoutputstream = null;
        if (!fmsDatabaseAdapter.isFMSEntryAvailable(s)) goto _L9; else goto _L8
_L8:
        int i1 = -1;
        if (j != -1 && j >= 11) goto _L11; else goto _L10
_L10:
        if (fmsDatabaseAdapter.getAppPriority(s) != fmsDatabaseAdapter.getPriorityDBEntry(s))
            i1 = fmsDatabaseAdapter.getAppPriority(s);
_L17:
        if (fmsDatabaseAdapter.getFMSState(s) != 4 && fmsDatabaseAdapter.getFMSState(s) != 5) goto _L13; else goto _L12
_L12:
        fmsDatabaseAdapter.updateFMSEntry(s, -1, l, -1L, i1);
        Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: Only FMS Checksum updated, state and timestamp remain same: ").append(s).toString());
        Exception exception1;
        boolean flag;
        if (false)
            try
            {
                null.close();
            }
            catch (IOException ioexception4)
            {
                Log.e("FMSController", (new StringBuilder()).append("Exception in closing the stream: ").append(ioexception4.toString()).toString());
                return 0;
            }
        k = 0;
        if (true) goto _L4; else goto _L14
_L14:
        null.close();
        return 0;
_L7:
        flag = file.getParentFile().mkdirs();
        Log.d("FMSController", (new StringBuilder()).append(file.getAbsolutePath()).append(" dest folder creation result: ").append(flag).toString());
          goto _L15
        exception1;
_L21:
        Log.e("FMSController", (new StringBuilder()).append("Exception in fmsSyncFile(int appId, InputStream ip, String destPath): ").append(exception1.toString()).toString());
        exception1.printStackTrace();
        Exception exception;
        k = 1;
        if (inputstream == null)
            continue; /* Loop/switch isn't completed */
        IOException ioexception5;
        int j1;
        long l1;
        try
        {
            inputstream.close();
        }
        catch (IOException ioexception1)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in closing the stream: ").append(ioexception1.toString()).toString());
            return k;
        }
        if (fileoutputstream == null) goto _L4; else goto _L16
_L16:
        fileoutputstream.close();
        return k;
_L11:
        i1 = j;
          goto _L17
_L13:
        fmsDatabaseAdapter.updateFMSEntry(s, 3, l, System.currentTimeMillis(), i1);
        Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: ").append(s).toString());
_L18:
        initiateFileTransfer();
        if (true)
            break MISSING_BLOCK_LABEL_866;
        null.close();
        if (false)
            try
            {
                null.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception5)
            {
                Log.e("FMSController", (new StringBuilder()).append("Exception in closing the stream: ").append(ioexception5.toString()).toString());
            }
        return 0;
_L9:
        j1 = fmsDatabaseAdapter.getAppPriority(s);
        l1 = fmsDatabaseAdapter.insertFMSData(i, s, l, 3, System.currentTimeMillis(), j1);
        Log.d("FMSController", (new StringBuilder()).append("New DB entry added and row ID = ").append(l1).toString());
          goto _L18
        exception;
_L20:
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_944;
        inputstream.close();
        if (fileoutputstream != null)
            try
            {
                fileoutputstream.close();
            }
            catch (IOException ioexception)
            {
                Log.e("FMSController", (new StringBuilder()).append("Exception in closing the stream: ").append(ioexception.toString()).toString());
            }
        throw exception;
        exception;
        fileoutputstream = fileoutputstream1;
        inputstream = null;
        if (true) goto _L20; else goto _L19
_L19:
        exception1;
        fileoutputstream = fileoutputstream1;
        inputstream = null;
          goto _L21
    }

    public int fmsSyncFile(int i, String s, String s1, int j)
    {
        Log.d("FMSController", (new StringBuilder()).append("fmsSyncFile destPath: ").append(s1).toString());
        Log.d("FMSController", (new StringBuilder()).append("fmsSyncFile srcPath: ").append(s).toString());
        Log.printUsageLog("FMSController", (new StringBuilder()).append("fmsSyncFile received for File : ").append(s1).toString());
        if (s1 == null)
        {
            int k;
            try
            {
                Log.e("FMSController", "fmsSyncFile(path): destPath is null");
            }
            catch (Exception exception)
            {
                Log.e("FMSController", (new StringBuilder()).append("Exception in fmsSyncFile call: ").append(exception.toString()).toString());
                exception.printStackTrace();
                return 1;
            }
            return 0;
        }
        k = fmsSyncFile(i, ((InputStream) (new FileInputStream(s))), s1, j);
        return k;
    }

    public FMSDatabaseAdapter getFmsDatabaseAdapter()
    {
        return fmsDatabaseAdapter;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        if (fmsDatabaseAdapter == null)
            fmsDatabaseAdapter = FMSDatabaseAdapter.getFMSDatabaseAdapter(context);
        j;
        JVM INSTR lookupswitch 5: default 88
    //                   4: 1363
    //                   16385: 89
    //                   16386: 544
    //                   16387: 1096
    //                   32768: 932;
           goto _L1 _L2 _L3 _L4 _L5 _L6
_L1:
        return;
_L3:
        int i2;
        String s6;
        int j2;
        String s7;
        long l2;
        Log.d("FMSController", (new StringBuilder()).append("Received FMSFileTransferResp from WD: ").append(obj.toString()).toString());
        Log.printUsageLog("FMSController", "Received FMSFileTransferResp from WD");
        try
        {
            JSONObject jsonobject4 = (JSONObject)obj;
            i2 = jsonobject4.getInt("result");
            s6 = jsonobject4.getString("description");
            j2 = jsonobject4.getInt("transaction_id");
            s7 = jsonobject4.getString("file_path");
            l2 = jsonobject4.getLong("checksum");
            if (fmsDatabaseAdapter.getFMSState(s7) == 4)
            {
                Log.d("FMSController", "Received FMSFileTransferResp but current state is FMS_TRANSFER_IN_PROGRESS");
                return;
            }
        }
        catch (Exception exception4)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in FMSFileTransferResp ").append(exception4.toString()).toString());
            return;
        }
        Log.d("FMSController", (new StringBuilder()).append("FMSFileTransferResp received-destTransferFileMap remove key: ").append(s7).toString());
        destTransferFileMap.remove(s7);
        if (!removeTransactionId(j2, 16385, s7)) goto _L8; else goto _L7
_L7:
        if (fmsDatabaseAdapter.getFMSState(s7) == 5) goto _L10; else goto _L9
_L9:
        Log.d("FMSController", "Received FMSFileTransferResp but current state is not in FMS_TRANSFER_COMPLETE");
_L13:
        checkFMSPendingOperation();
        return;
_L10:
        if (i2 == 0) goto _L12; else goto _L11
_L11:
        Log.d("FMSController", (new StringBuilder()).append("FMSFileTransferResp failure: ").append(s6).toString());
        fmsDatabaseAdapter.updateFMSState(s7, 3, System.currentTimeMillis());
        Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: ").append(s7).toString());
          goto _L13
_L12:
        Log.d("FMSController", (new StringBuilder()).append("FMSFileTransferResp success: ").append(s6).toString());
        if (l2 != fmsDatabaseAdapter.getFMSChecksum(s7)) goto _L15; else goto _L14
_L14:
        fmsDatabaseAdapter.updateFMSState(s7, 6, System.currentTimeMillis());
        Log.d("FMSController", (new StringBuilder()).append("FMS State updated to FMS_SYNCED: ").append(s7).toString());
          goto _L13
_L15:
        Log.d("FMSController", "FMSFileTransferResp Result success, but checksum didnot match");
        fmsDatabaseAdapter.updateFMSState(s7, 3, System.currentTimeMillis());
        Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_READY_TO_TRANSFER: ").append(s7).toString());
          goto _L13
_L8:
        Log.d("FMSController", (new StringBuilder()).append(j2).append(" Transaction ID for FMSFileTransferResp doesn't exist").toString());
        return;
_L4:
        Log.d("FMSController", (new StringBuilder()).append("Received FMSDeleteResp from WD: ").append(obj.toString()).toString());
        Log.printUsageLog("FMSController", "Received FMSDeleteResp from WD");
        int k1;
        String s4;
        int l1;
        String s5;
        JSONObject jsonobject3 = (JSONObject)obj;
        k1 = jsonobject3.getInt("result");
        s4 = jsonobject3.getString("description");
        l1 = jsonobject3.getInt("transaction_id");
        s5 = jsonobject3.getString("file_path");
        if (!removeTransactionId(l1, 16386, s5)) goto _L17; else goto _L16
_L16:
        if (fmsDatabaseAdapter.getFMSState(s5) == 8) goto _L19; else goto _L18
_L18:
        Log.d("FMSController", "Received FMSDeleteResp but current state is not in FMS_DELETE_REQUEST_SENT");
_L22:
        Exception exception3;
        checkFMSPendingOperation();
        return;
_L19:
        if (k1 == 0) goto _L21; else goto _L20
_L20:
        try
        {
            Log.d("FMSController", (new StringBuilder()).append("FMSDeleteResp failure: ").append(s4).toString());
            fmsDatabaseAdapter.updateFMSState(s5, 7, System.currentTimeMillis());
            Log.d("FMSController", (new StringBuilder()).append("FMS DB Update: FMS State updated to FMS_MARKED_FOR_DELETION: ").append(s5).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception3)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in FMSDeleteResp ").append(exception3.toString()).toString());
            return;
        }
          goto _L22
_L21:
        Log.d("FMSController", (new StringBuilder()).append("FMSDeleteResp success: ").append(s4).toString());
        File file = new File((new StringBuilder()).append(context.getFilesDir().getAbsoluteFile()).append("/fms").append(s5).toString());
        if (file.exists())
        {
            boolean flag = file.delete();
            Log.d("FMSController", (new StringBuilder()).append("Delete file ").append(s5).append("result: ").append(flag).toString());
        }
        fmsDatabaseAdapter.deleteFMSEntry(s5);
          goto _L22
_L17:
        Log.d("FMSController", (new StringBuilder()).append(l1).append(" Transaction ID for FMSDeleteResp doesn't exist").toString());
        return;
_L6:
        Log.printUsageLog("FMSController", "Received FMSFileOpenFailInd from WD");
        Log.d("FMSController", (new StringBuilder()).append("Received FMSFileOpenFailInd from WD: ").append(obj.toString()).toString());
        try
        {
            String s3 = ((JSONObject)obj).getString("file_path");
            Log.d("FMSController", (new StringBuilder()).append("FMSFileOpenFailInd received for filepath: ").append(s3).toString());
            if (fmsDatabaseAdapter.isFMSEntryAvailable(s3))
            {
                Log.d("FMSController", (new StringBuilder()).append("Received FMSFileOpenFailInd: ").append(s3).append(" Reset state to FMS_READY_TO_TRANSFER").toString());
                fmsDatabaseAdapter.updateFMSState(s3, 3, System.currentTimeMillis());
                return;
            }
        }
        catch (Exception exception2)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in FMSFileOpenFailInd ").append(exception2.toString()).toString());
            return;
        }
          goto _L1
_L5:
        Log.d("FMSController", (new StringBuilder()).append("Received FMSCleanupResp from WD: ").append(obj.toString()).toString());
        Log.printUsageLog("FMSController", "Received FMSCleanupResp from WD");
        int j1;
        String s1;
        String s2;
        JSONObject jsonobject2 = (JSONObject)obj;
        jsonobject2.getInt("result");
        j1 = jsonobject2.getInt("transaction_id");
        s1 = jsonobject2.getString("description");
        s2 = jsonobject2.getString("file_path");
        Log.d("FMSController", (new StringBuilder()).append("FMSCleanupResp: WD Cleanup filepath = ").append(s2).toString());
        if (!removeTransactionId(j1, 16387, s2)) goto _L24; else goto _L23
_L23:
        Exception exception1;
        if (s2.equals("/"))
        {
            android.content.SharedPreferences.Editor editor = ToqData.getInstance().getAssociatedDevicePrefs().edit();
            editor.putBoolean("app_install_clean_fms", true);
            editor.commit();
            return;
        }
        try
        {
            Log.e("FMSController", (new StringBuilder()).append("FMSCleanupResp: filepath = ").append(s2).append(" failure ").append(s1).toString());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in FMSCleanupResp ").append(exception1.toString()).toString());
            return;
        }
_L24:
        Log.e("FMSController", (new StringBuilder()).append("Failed to remove Transaction ID = ").append(j1).append(" for FMSCleanupResp").toString());
        return;
_L2:
        JSONObject jsonobject;
        Log.d("FMSController", (new StringBuilder()).append("Received FMSReSyncReq from WD: ").append(obj.toString()).toString());
        Log.printUsageLog("FMSController", "Received FMSReSyncReq from WD");
        jsonobject = (JSONObject)obj;
        String s;
        JSONObject jsonobject1;
        int i1 = jsonobject.getInt("transaction_id");
        s = jsonobject.getString("file_path");
        Log.d("FMSController", (new StringBuilder()).append("FMSReSyncReq: WD resync filepath = ").append(s).toString());
        jsonobject1 = new JSONObject();
        jsonobject1.put("transaction_id", i1);
        jsonobject1.put("file_path", s);
        if (!fmsResynchRequest(0, s)) goto _L26; else goto _L25
_L25:
        Log.d("FMSController", (new StringBuilder()).append("FMSReSyncReq: Success found filepath = ").append(s).toString());
        jsonobject1.put("result", 0);
        jsonobject1.put("description", "Success: Resynced requested FMS file");
_L27:
        Exception exception;
        Log.printUsageLog("FMSController", "Sending FMSReSyncResp to WD");
        sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 17, 18, jsonobject1, 16388, k);
        Log.d("FMSController", (new StringBuilder()).append("Sent FMSReSyncResp: ").append(jsonobject1.toString()).toString());
        return;
_L26:
        try
        {
            Log.d("FMSController", (new StringBuilder()).append("FMSReSyncReq: unable to find filepath = ").append(s).toString());
            jsonobject1.put("result", 1);
            jsonobject1.put("description", "Failure: Unable to find requested FMS file");
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in FMSReSyncReq ").append(exception.toString()).toString());
            return;
        }
          goto _L27
    }

    public void initiateFMSOperation()
    {
        Log.d("FMSController", "initiateFMSOperation() called");
        try
        {
            if (executorService != null && !executorService.isShutdown())
            {
                executorService.shutdownNow();
                executorService = null;
            }
            executorService = Executors.newScheduledThreadPool(1);
            executorService.scheduleAtFixedRate(new Runnable() {

                final FMSController this$0;

                public void run()
                {
                    checkFMSPendingStateRequest();
                }

            
            {
                this$0 = FMSController.this;
                super();
            }
            }
, 30L, 30L, TimeUnit.SECONDS);
            Log.d("FMSController", "FMS  ScheduledExecutorService created for 30 seconds");
            checkFMSPendingOperation();
            return;
        }
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in initiateFMSOperation(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public boolean isWDFMSClean()
    {
        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("app_install_clean_fms") || !ToqData.getInstance().getAssociatedDevicePrefs().getBoolean("app_install_clean_fms", false))
            break MISSING_BLOCK_LABEL_78;
        Log.d("FMSController", "isWDFMSClean(): TRUE");
        return true;
        Exception exception;
        exception;
        Log.e("FMSController", (new StringBuilder()).append("Exception in isWDFMSClean(): ").append(exception.toString()).toString());
        exception.printStackTrace();
        Log.d("FMSController", "isWDFMSClean(): FALSE");
        return false;
    }

    public void registerFMSReceiver()
    {
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        if (context != null)
        {
            Log.d("FMSController", "Register BroadcastReceiver in FMS");
            IntentFilter intentfilter = new IntentFilter();
            intentfilter.addAction(Constants.ACTION_FMS_FILE_TRANSFER_COMPLETED);
            intentfilter.addAction(Constants.ACTION_PHONE_WD_CONNECTED);
            intentfilter.addAction(Constants.ACTION_PHONE_WD_DISCONNECTED);
            intentfilter.addAction(Constants.ACTION_FMS_FILE_TRANSFER_FAILED);
            context.registerReceiver(fmsReceiver, intentfilter);
            return;
        } else
        {
            Log.d("FMSController", "Unable to register BroadcastReceiver in FMS as context is null");
            return;
        }
    }

    public void resetFMSCache()
    {
        fmsDatabaseAdapter.fmsResetStates();
        ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("fms_pref", 0).edit().clear().commit();
        if (transactionMap != null)
            transactionMap.clear();
        if (destTransferFileMap != null)
        {
            Log.d("FMSController", "resetFMSCache(): clear destTransferFileMap mapping");
            destTransferFileMap.clear();
        }
        if (executorService != null && !executorService.isShutdown())
        {
            executorService.shutdownNow();
            executorService = null;
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (isPhoneWDConnected && ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 || isPhoneWDConnected && ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 2)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendFMSCleanupRequest()
    {
        if (!isPhoneWDConnected)
            break MISSING_BLOCK_LABEL_216;
        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("app_install_clean_fms") && !ToqData.getInstance().getAssociatedDevicePrefs().getBoolean("app_install_clean_fms", false))
        {
            JSONObject jsonobject = new JSONObject();
            int i = createTransactionId(new TransactionDetails(16387, "/"));
            jsonobject.put("transaction_id", i);
            jsonobject.put("file_path", "/");
            Log.printUsageLog("FMSController", "Sending FMSCleanupReq to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 17, 18, jsonobject, 3, i);
            Log.d("FMSController", (new StringBuilder()).append("sent FMSCleanupReq request: ").append(jsonobject.toString()).toString());
            return;
        }
        try
        {
            Log.e("FMSController", (new StringBuilder()).append("FMSCleanupReq Can't be sent as shared preferences contains KEY: KEY_APP_INSTALL_CLEAN_FMS and VALUE: ").append(ToqData.getInstance().getAssociatedDevicePrefs().getBoolean("app_install_clean_fms", false)).toString());
            return;
        }
        catch (Exception exception)
        {
            Log.e("FMSController", (new StringBuilder()).append("Exception in sendAppInstallCleanFMS() :").append(exception.toString()).toString());
        }
        return;
        Log.e("FMSController", "FMSCleanupReq Can't be sent as Phone and WD are not Connected");
        return;
    }

    public void unRegisterFMSReceiver()
    {
        try
        {
            if (context != null && fmsReceiver != null)
            {
                Log.d("FMSController", "Unregistering Receiver in FMS");
                context.unregisterReceiver(fmsReceiver);
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("FMSController", "Exception in unregisterReceiver(fileTransferCompleteReceiver)");
            exception.printStackTrace();
            return;
        }
    }




/*
    static FMSDatabaseAdapter access$002(FMSController fmscontroller, FMSDatabaseAdapter fmsdatabaseadapter)
    {
        fmscontroller.fmsDatabaseAdapter = fmsdatabaseadapter;
        return fmsdatabaseadapter;
    }

*/





/*
    static boolean access$402(FMSController fmscontroller, boolean flag)
    {
        fmscontroller.isPhoneWDConnected = flag;
        return flag;
    }

*/

}
