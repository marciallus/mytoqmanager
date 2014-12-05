// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.filetransfer;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import com.intel.bluetooth.BlueCoveImpl;
import com.qualcomm.toq.base.connectionlistener.bluetooth.BTConnectionListener;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.io.*;
import java.nio.ByteBuffer;
import java.text.DateFormat;
import java.util.Calendar;
import javax.bluetooth.*;
import javax.microedition.io.Connector;
import javax.obex.*;

public class PhubFileTransferClient
    implements DiscoveryListener
{

    private static final String STATUS_ERROR = "Failed";
    private static final String STATUS_SEND = "Sending";
    private static final String STATUS_SUCCESS = "Success";
    private static final String TAG = "PhubFileTransferClient";
    public static boolean isStopOPPPush = false;
    private static PhubFileTransferClient mInstance = null;
    private boolean bfileTransferException;
    private ClientSession clientSession;
    private Context context;
    private long endTime;
    private HeaderSet hsOperation;
    private FileTransferStatusLogger mFileTransferStatusLogger;
    private DataOutputStream out;
    private Operation putOperation;
    private long startTime;
    private String temp;
    private String timeAndDate;
    private long timeDiff;

    private PhubFileTransferClient(Context context1)
    {
        clientSession = null;
        hsOperation = null;
        putOperation = null;
        out = null;
        bfileTransferException = false;
        context = null;
        context = context1;
        mFileTransferStatusLogger = FileTransferStatusLogger.getInstance(0);
    }

    private boolean connectSession(String s, String s1, String s2)
    {
        this;
        JVM INSTR monitorenter ;
        File file = new File((new StringBuilder()).append(s1).append("/").append(s2).toString());
        if (isStopOPPPush || !file.exists()) goto _L2; else goto _L1
_L1:
        Log.d("PhubFileTransferClient", "Starting File Transfer Session.");
        updateFileTransferLoggerDetails("Starting File Transfer Session.");
        printBlueCoveDetails();
        if (s2.contains("1234"))
        {
            Intent intent1 = new Intent();
            intent1.setAction(Constants.ACTION_FIRMWARE_TRANSFER);
            intent1.putExtra("file_name", s2);
            intent1.putExtra("firmware_status", "start");
            intent1.putExtra("firmware_message", (new StringBuilder()).append(s2).append(" file transfer started").toString());
            intent1.putExtra("endpointtype", 0);
            context.sendBroadcast(intent1);
            Log.d("PhubFileTransferClient", "ACTION_FIRMWARE_TRANSFER broadcast sent for start");
        }
        if (clientSession != null) goto _L4; else goto _L3
_L3:
        HeaderSet headerset;
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Connecting to OPP device with url: ").append(s).toString());
        clientSession = (ClientSession)Connector.open(s, 3, true);
        headerset = clientSession.connect(null);
        if (headerset.getResponseCode() == 160) goto _L4; else goto _L5
_L5:
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Response code NOT OK from OPP server ").append(headerset.getResponseCode()).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append("Response code NOT OK from OPP server ").append(headerset.getResponseCode()).toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append("Response code NOT OK from OPP server ").append(headerset.getResponseCode()).toString());
        Log.d("FMSController", (new StringBuilder()).append("PhubFileTransferClient: File Transferred Failed ").append(s2).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append("File Transferred Failed ").append(s2).toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append("File Transferred Failed ").append(s2).toString());
        updateFileStatusHeaderOnError(s2);
        bfileTransferException = true;
        boolean flag2 = bfileTransferException;
        boolean flag = false;
        if (!flag2) goto _L7; else goto _L6
_L6:
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Inside Finally of sendFileThread: state=  ").append(BTConnectionListener.isOPPSleepRequired).toString());
        if (BTConnectionListener.isOPPSleepRequired)
        {
            Log.d("PhubFileTransferClient", "Sleeping the thread for 10 ms");
            SystemClock.sleep(10000L);
        }
        if (out != null)
        {
            out.close();
            out = null;
        }
        Log.d("PhubFileTransferClient", "Debug 1");
_L8:
        if (putOperation != null)
        {
            putOperation.close();
            putOperation = null;
        }
        Log.d("PhubFileTransferClient", "Debug 2");
_L9:
        if (hsOperation != null && clientSession != null)
        {
            clientSession.delete(hsOperation);
            hsOperation = null;
            Log.d("PhubFileTransferClient", "HeaderSet is deleted");
        }
        Log.d("PhubFileTransferClient", "Debug 3");
_L10:
        closeConnection();
        bfileTransferException = false;
        flag = false;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception22;
        exception22;
        exception22.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in out.close(): ").append(exception22.toString()).toString());
          goto _L8
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception23;
        exception23;
        exception23.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in putOperation.close(): ").append(exception23.toString()).toString());
          goto _L9
        Exception exception24;
        exception24;
        exception24.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception clientSession.delete(hsOperation): ").append(exception24.toString()).toString());
          goto _L10
_L4:
        hsOperation = clientSession.createHeaderSet();
        hsOperation.setHeader(1, s2);
        Log.d("FMSController", (new StringBuilder()).append("PhubFileTransferClient: Transferring File over OPP: ").append(file.getName()).toString());
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Transferring File over OPP: ").append(file.getName()).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append(" Transferring File over OPP: ").append(file.getName()).toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append(" Transferring File over OPP: ").append(file.getName()).toString());
        if (file.exists())
            break MISSING_BLOCK_LABEL_1236;
        Log.e("PhubFileTransferClient", (new StringBuilder()).append(file.getName()).append(" file doesn't exist").toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append(file.getName()).append(" file doesn't exist").toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append(file.getName()).append(" file doesn't exist").toString());
        updateFileStatusHeaderOnError(s2);
        bfileTransferException = true;
        boolean flag1 = bfileTransferException;
        flag = false;
        if (!flag1) goto _L7; else goto _L11
_L11:
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Inside Finally of sendFileThread: state=  ").append(BTConnectionListener.isOPPSleepRequired).toString());
        if (BTConnectionListener.isOPPSleepRequired)
        {
            Log.d("PhubFileTransferClient", "Sleeping the thread for 10 ms");
            SystemClock.sleep(10000L);
        }
        if (out != null)
        {
            out.close();
            out = null;
        }
        Log.d("PhubFileTransferClient", "Debug 1");
_L12:
        if (putOperation != null)
        {
            putOperation.close();
            putOperation = null;
        }
        Log.d("PhubFileTransferClient", "Debug 2");
_L13:
        if (hsOperation != null && clientSession != null)
        {
            clientSession.delete(hsOperation);
            hsOperation = null;
            Log.d("PhubFileTransferClient", "HeaderSet is deleted");
        }
        Log.d("PhubFileTransferClient", "Debug 3");
_L14:
        closeConnection();
        bfileTransferException = false;
        flag = false;
          goto _L7
        Exception exception19;
        exception19;
        exception19.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in out.close(): ").append(exception19.toString()).toString());
          goto _L12
        Exception exception20;
        exception20;
        exception20.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in putOperation.close(): ").append(exception20.toString()).toString());
          goto _L13
        Exception exception21;
        exception21;
        exception21.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception clientSession.delete(hsOperation): ").append(exception21.toString()).toString());
          goto _L14
        byte abyte0[];
        float f;
        abyte0 = getBytesFromFile(file);
        f = abyte0.length;
        if (f <= 1024F) goto _L16; else goto _L15
_L15:
        float f1 = f / 1024F;
        if (f1 <= 1024F) goto _L18; else goto _L17
_L17:
        String s3;
        float f2 = f1 / 1024F;
        s3 = (new StringBuilder()).append(f2).append(" MB").toString();
_L24:
        updateFileTransferLoggerDetails((new StringBuilder()).append(file.getName()).append(" file size: ").append(s3).toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append(file.getName()).append(" file size: ").append(s3).toString());
        hsOperation.setHeader(195, Long.valueOf(abyte0.length));
        putOperation = clientSession.put(hsOperation);
        out = putOperation.openDataOutputStream();
        int i = 0;
        int j = abyte0.length;
_L23:
        if (j == 0) goto _L20; else goto _L19
_L19:
        if (j >= 15872) goto _L22; else goto _L21
_L21:
        out.write(abyte0, i, j);
        out.flush();
        i += j;
        j = 0;
_L25:
        if (s2.contains("1234"))
        {
            Intent intent4 = new Intent();
            intent4.setAction(Constants.ACTION_FIRMWARE_TRANSFER_PROGRESS);
            intent4.putExtra("sent_file_bytes", i);
            intent4.putExtra("file_length", abyte0.length);
            intent4.putExtra("endpointtype", 0);
            context.sendBroadcast(intent4);
            Log.d("PhubFileTransferClient", "ACTION_FIRMWARE_TRANSFER_PROGRESS broadcast sent");
        }
        Log.d("PhubFileTransferClient", (new StringBuilder()).append(i).append(" bytes transferred").toString());
        updateFileStatusBytesSend(s2, i);
          goto _L23
        IOException ioexception;
        ioexception;
        bfileTransferException = true;
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("IOException ").append(ioexception.toString()).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append("IOException ").append(ioexception.toString()).toString());
        Log.e("FMSController", (new StringBuilder()).append("PhubFileTransferClient: File Transferred Failed ").append(s2).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append(" File Transferred Failed ").append(s2).toString());
        updateFileStatusHeaderOnError(s2);
        ioexception.printStackTrace();
        if (!bfileTransferException)
            break MISSING_BLOCK_LABEL_4094;
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Inside Finally of sendFileThread: state=  ").append(BTConnectionListener.isOPPSleepRequired).toString());
        if (BTConnectionListener.isOPPSleepRequired)
        {
            Log.d("PhubFileTransferClient", "Sleeping the thread for 10 ms");
            SystemClock.sleep(10000L);
        }
        if (out != null)
        {
            out.close();
            out = null;
        }
        Log.d("PhubFileTransferClient", "Debug 1");
_L39:
        if (putOperation != null)
        {
            putOperation.close();
            putOperation = null;
        }
        Log.d("PhubFileTransferClient", "Debug 2");
_L40:
        if (hsOperation != null && clientSession != null)
        {
            clientSession.delete(hsOperation);
            hsOperation = null;
            Log.d("PhubFileTransferClient", "HeaderSet is deleted");
        }
        Log.d("PhubFileTransferClient", "Debug 3");
_L41:
        closeConnection();
        bfileTransferException = false;
        flag = false;
          goto _L7
_L18:
        s3 = (new StringBuilder()).append(f1).append(" KB").toString();
          goto _L24
_L16:
        s3 = (new StringBuilder()).append(f).append(" Bytes").toString();
          goto _L24
_L22:
        out.write(abyte0, i, 15872);
        out.flush();
        i += 15872;
        j -= 15872;
          goto _L25
_L20:
        out.close();
        out = null;
        putOperation.close();
        putOperation = null;
_L28:
        Log.d("FMSController", (new StringBuilder()).append("PhubFileTransferClient: Write file over OPP is  done: ").append(s2).toString());
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Write file over OPP is  done: ").append(s2).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append(" Write file over OPP is  done: ").append(s2).toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append(" Write file over OPP is  done: ").append(s2).toString());
        Intent intent2 = new Intent();
        intent2.setAction(Constants.ACTION_FMS_FILE_TRANSFER_COMPLETED);
        intent2.putExtra("sent_file_name", s2);
        context.sendBroadcast(intent2);
        Log.d("PhubFileTransferClient", "ACTION_FMS_FILE_TRANSFER_COMPLETED broadcast sent");
        updateFileTransferLoggerDetails("ACTION_FMS_FILE_TRANSFER_COMPLETED broadcast sent");
        Log.i("PhubFileTransferClient", (new StringBuilder()).append("File Transferred successfully ").append(s2).toString());
        timeAndDate = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
        updateFileTransferLoggerDetails((new StringBuilder()).append("File Transferred successfully on ").append(timeAndDate).toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append("File Transferred successfully on ").append(timeAndDate).toString());
        updateFileStatusHeaderOnSuccess(s2);
        endTime = Calendar.getInstance().getTimeInMillis();
        timeDiff = (endTime - startTime) / 1000L;
        if (timeDiff == 0L) goto _L27; else goto _L26
_L26:
        updateFileTransferLoggerDetails((new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" seconds").toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" seconds").toString());
_L29:
        if (s2.contains("1234"))
        {
            Intent intent3 = new Intent();
            intent3.setAction(Constants.ACTION_FIRMWARE_TRANSFER);
            intent3.putExtra("file_name", s2);
            intent3.putExtra("firmware_status", "success");
            intent3.putExtra("firmware_message", (new StringBuilder()).append(s2).append(" file transfer completed").toString());
            intent3.putExtra("endpointtype", 0);
            context.sendBroadcast(intent3);
            Log.d("PhubFileTransferClient", "ACTION_FIRMWARE_TRANSFER broadcast sent for success");
            updateFileStatusHeaderOnSuccess(s2);
        }
        if (!bfileTransferException)
            break MISSING_BLOCK_LABEL_4094;
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Inside Finally of sendFileThread: state=  ").append(BTConnectionListener.isOPPSleepRequired).toString());
        if (BTConnectionListener.isOPPSleepRequired)
        {
            Log.d("PhubFileTransferClient", "Sleeping the thread for 10 ms");
            SystemClock.sleep(10000L);
        }
        if (out != null)
        {
            out.close();
            out = null;
        }
        Log.d("PhubFileTransferClient", "Debug 1");
_L36:
        if (putOperation != null)
        {
            putOperation.close();
            putOperation = null;
        }
        Log.d("PhubFileTransferClient", "Debug 2");
_L37:
        if (hsOperation != null && clientSession != null)
        {
            clientSession.delete(hsOperation);
            hsOperation = null;
            Log.d("PhubFileTransferClient", "HeaderSet is deleted");
        }
        Log.d("PhubFileTransferClient", "Debug 3");
_L38:
        closeConnection();
        bfileTransferException = false;
        flag = false;
          goto _L7
        Exception exception15;
        exception15;
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception due to putOperation.close(): ").append(exception15.toString()).toString());
        exception15.printStackTrace();
          goto _L28
        Exception exception5;
        exception5;
        bfileTransferException = true;
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("This should not happen though in ideal case though Exception: ").append(exception5.toString()).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append("This should not happen though in ideal case though Exception: ").append(exception5.toString()).toString());
        Log.e("FMSController", (new StringBuilder()).append("PhubFileTransferClient: File Transferred Failed ").append(s2).toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append(" File Transferred Failed ").append(s2).toString());
        updateFileStatusHeaderOnError(s2);
        exception5.printStackTrace();
        if (!bfileTransferException)
            break MISSING_BLOCK_LABEL_4094;
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Inside Finally of sendFileThread: state=  ").append(BTConnectionListener.isOPPSleepRequired).toString());
        if (BTConnectionListener.isOPPSleepRequired)
        {
            Log.d("PhubFileTransferClient", "Sleeping the thread for 10 ms");
            SystemClock.sleep(10000L);
        }
        if (out != null)
        {
            out.close();
            out = null;
        }
        Log.d("PhubFileTransferClient", "Debug 1");
_L42:
        if (putOperation != null)
        {
            putOperation.close();
            putOperation = null;
        }
        Log.d("PhubFileTransferClient", "Debug 2");
_L43:
        if (hsOperation != null && clientSession != null)
        {
            clientSession.delete(hsOperation);
            hsOperation = null;
            Log.d("PhubFileTransferClient", "HeaderSet is deleted");
        }
        Log.d("PhubFileTransferClient", "Debug 3");
_L44:
        closeConnection();
        bfileTransferException = false;
        flag = false;
          goto _L7
_L27:
        timeDiff = endTime - startTime;
        updateFileTransferLoggerDetails((new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" millisec").toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" millisec").toString());
          goto _L29
        Exception exception;
        exception;
        if (!bfileTransferException) goto _L31; else goto _L30
_L30:
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Inside Finally of sendFileThread: state=  ").append(BTConnectionListener.isOPPSleepRequired).toString());
        if (BTConnectionListener.isOPPSleepRequired)
        {
            Log.d("PhubFileTransferClient", "Sleeping the thread for 10 ms");
            SystemClock.sleep(10000L);
        }
        if (out != null)
        {
            out.close();
            out = null;
        }
        Log.d("PhubFileTransferClient", "Debug 1");
_L45:
        if (putOperation != null)
        {
            putOperation.close();
            putOperation = null;
        }
        Log.d("PhubFileTransferClient", "Debug 2");
_L46:
        if (hsOperation != null && clientSession != null)
        {
            clientSession.delete(hsOperation);
            hsOperation = null;
            Log.d("PhubFileTransferClient", "HeaderSet is deleted");
        }
        Log.d("PhubFileTransferClient", "Debug 3");
_L47:
        closeConnection();
        bfileTransferException = false;
        flag = false;
          goto _L7
_L2:
        if (s2.contains("1234"))
        {
            Intent intent = new Intent();
            intent.setAction(Constants.ACTION_FIRMWARE_TRANSFER);
            intent.putExtra("file_name", s2);
            intent.putExtra("firmware_status", "failed");
            intent.putExtra("firmware_message", (new StringBuilder()).append("Unable to Transfer Firmware file: ").append(s2).append(", as Phone and WD are Disconnected").toString());
            intent.putExtra("endpointtype", 0);
            context.sendBroadcast(intent);
            Log.d("PhubFileTransferClient", "ACTION_FIRMWARE_TRANSFER broadcast sent for failed");
        }
        if (file == null)
            break MISSING_BLOCK_LABEL_3340;
        if (file.exists())
        {
            Log.d("PhubFileTransferClient", "Phone and WD are disconnected, OPP Push can't be done");
            updateFileTransferLoggerDetails("Phone and WD are disconnected, OPP Push can't be done");
            updateFileStatusHeaderOnError(s2);
        }
        flag = true;
        if (!bfileTransferException) goto _L7; else goto _L32
_L32:
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Inside Finally of sendFileThread: state=  ").append(BTConnectionListener.isOPPSleepRequired).toString());
        if (BTConnectionListener.isOPPSleepRequired)
        {
            Log.d("PhubFileTransferClient", "Sleeping the thread for 10 ms");
            SystemClock.sleep(10000L);
        }
        if (out != null)
        {
            out.close();
            out = null;
        }
        Log.d("PhubFileTransferClient", "Debug 1");
_L33:
        if (putOperation != null)
        {
            putOperation.close();
            putOperation = null;
        }
        Log.d("PhubFileTransferClient", "Debug 2");
_L34:
        if (hsOperation != null && clientSession != null)
        {
            clientSession.delete(hsOperation);
            hsOperation = null;
            Log.d("PhubFileTransferClient", "HeaderSet is deleted");
        }
        Log.d("PhubFileTransferClient", "Debug 3");
_L35:
        closeConnection();
        bfileTransferException = false;
        flag = false;
          goto _L7
        Exception exception12;
        exception12;
        exception12.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in out.close(): ").append(exception12.toString()).toString());
          goto _L33
        Exception exception13;
        exception13;
        exception13.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in putOperation.close(): ").append(exception13.toString()).toString());
          goto _L34
        Exception exception14;
        exception14;
        exception14.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception clientSession.delete(hsOperation): ").append(exception14.toString()).toString());
          goto _L35
        Exception exception16;
        exception16;
        exception16.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in out.close(): ").append(exception16.toString()).toString());
          goto _L36
        Exception exception17;
        exception17;
        exception17.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in putOperation.close(): ").append(exception17.toString()).toString());
          goto _L37
        Exception exception18;
        exception18;
        exception18.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception clientSession.delete(hsOperation): ").append(exception18.toString()).toString());
          goto _L38
        Exception exception9;
        exception9;
        exception9.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in out.close(): ").append(exception9.toString()).toString());
          goto _L39
        Exception exception10;
        exception10;
        exception10.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in putOperation.close(): ").append(exception10.toString()).toString());
          goto _L40
        Exception exception11;
        exception11;
        exception11.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception clientSession.delete(hsOperation): ").append(exception11.toString()).toString());
          goto _L41
        Exception exception6;
        exception6;
        exception6.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in out.close(): ").append(exception6.toString()).toString());
          goto _L42
        Exception exception7;
        exception7;
        exception7.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in putOperation.close(): ").append(exception7.toString()).toString());
          goto _L43
        Exception exception8;
        exception8;
        exception8.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception clientSession.delete(hsOperation): ").append(exception8.toString()).toString());
          goto _L44
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in out.close(): ").append(exception2.toString()).toString());
          goto _L45
        Exception exception3;
        exception3;
        exception3.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in putOperation.close(): ").append(exception3.toString()).toString());
          goto _L46
        Exception exception4;
        exception4;
        exception4.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception clientSession.delete(hsOperation): ").append(exception4.toString()).toString());
          goto _L47
_L31:
        throw exception;
        flag = true;
          goto _L7
    }

    private String fileNameReplace(String s)
    {
        return s.replace("Phub.Phone.Settings.", "").replace("Phub.Phone.Text", "").replace("Phub.Phone.", "");
    }

    private static byte[] getBytesFromFile(File file)
        throws IOException
    {
        FileInputStream fileinputstream = new FileInputStream(file);
        long l = file.length();
        if (l > 0x7fffffffL)
        {
            Log.d("PhubFileTransferClient", "File is too large to process OPP push");
            fileinputstream.close();
            return null;
        }
        ByteBuffer bytebuffer = ByteBuffer.allocate((int)l);
        byte abyte0[] = new byte[1024];
        do
        {
            int i = fileinputstream.read(abyte0, 0, 1024);
            if (i != -1)
            {
                bytebuffer.put(abyte0, 0, i);
            } else
            {
                fileinputstream.close();
                return bytebuffer.array();
            }
        } while (true);
    }

    public static PhubFileTransferClient getPhubFileTransferClient(Context context1)
    {
        if (mInstance == null)
        {
            mInstance = new PhubFileTransferClient(context1);
            BlueCoveImpl.setConfigObject("bluecove.android.context", context1);
            BlueCoveImpl.setConfigProperty("bluecove.obex.mtu", "102400");
            BlueCoveImpl.setConfigProperty("bluecove.connect.timeout", "3000");
            BlueCoveImpl.setConfigProperty("bluecove.obex.timeout", "3000");
            BlueCoveImpl.setConfigProperty("bluecove.inquiry.duration", "20000");
        }
        return mInstance;
    }

    private void printBlueCoveDetails()
    {
        Log.i("PhubFileTransferClient", "Displaying Bluecove Details");
        String s = (new StringBuilder()).append("BLUECOVE_VERSION: ").append(LocalDevice.getProperty("bluecove")).append("\n").toString();
        String s1 = (new StringBuilder()).append(s).append("BLUETOOTH_STACK: ").append(LocalDevice.getProperty("bluecove.stack")).append("\n").toString();
        String s2 = (new StringBuilder()).append(s1).append("BLUETOOTH_STACK_VERSION: ").append(LocalDevice.getProperty("bluecove.stack.version")).append("\n").toString();
        String s3 = (new StringBuilder()).append(s2).append("BLUETOOTH_OPEN_CONNECTIONS: ").append(LocalDevice.getProperty("bluecove.connections")).append("\n").toString();
        String s4 = (new StringBuilder()).append(s3).append("Maximum number of concurrent service discovery : ").append(LocalDevice.getProperty("bluetooth.sd.trans.max")).append("\n").toString();
        Log.i("PhubFileTransferClient", (new StringBuilder()).append(s4).append("bluetooth.l2cap.receiveMTU.max: ").append(LocalDevice.getProperty("bluetooth.l2cap.receiveMTU.max")).append(" bytes\n").toString());
    }

    private void sendFileThread(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if (isStopOPPPush) goto _L2; else goto _L1
_L1:
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Sending File: Path = ").append(s).append(", File = ").append(s1).toString());
        if (ConnectionFactory.getConnectionFactory() == null || ConnectionFactory.getConnectionFactory().getEndPoint(0) == null || ToqConnectionHandlerImpl.getConnectionHandler() == null) goto _L2; else goto _L3
_L3:
        String s3;
        if (ToqConnectionHandlerImpl.getConnectionHandler().getState(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType()) != 3)
            break MISSING_BLOCK_LABEL_586;
        String s2 = ConnectionFactory.getConnectionFactory().getEndPoint(0).getAddress().replaceAll(":", "");
        s3 = AndroidUtils.getAndroidUtils().getOppConnectionUrl(s2);
        Log.d("PhubFileTransferClient", "before transfer");
        int i = 0;
_L7:
        if (i >= 3) goto _L5; else goto _L4
_L4:
        File file = new File((new StringBuilder()).append(s).append("/").append(s1).toString());
        if (file == null)
            break MISSING_BLOCK_LABEL_310;
        if (!file.exists())
            break MISSING_BLOCK_LABEL_310;
        updateFileStatusHeaderOnSend(s1);
        if (i == 0)
            break MISSING_BLOCK_LABEL_259;
        if (!isStopOPPPush)
        {
            updateFileTransferLoggerDetails((new StringBuilder()).append("Retrying the ").append(s1).append(" transfer").toString());
            Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append("Retrying the ").append(s1).append(" transfer").toString());
        }
        Log.d("PhubFileTransferClient", (new StringBuilder()).append(i).append(" iteration").toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append("iteration ").append(i).toString());
        boolean flag;
        flag = connectSession(s3, s, s1);
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("bOppTransferSuccess = ").append(flag).toString());
        bfileTransferException = false;
        if (!flag) goto _L6; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L6:
        if (!s1.contains("1234"))
            break MISSING_BLOCK_LABEL_484;
        Intent intent1 = new Intent();
        intent1.setAction(Constants.ACTION_FIRMWARE_TRANSFER);
        intent1.putExtra("file_name", s1);
        intent1.putExtra("firmware_status", "failed");
        intent1.putExtra("firmware_message", (new StringBuilder()).append(s1).append(" file transfer failed").toString());
        intent1.putExtra("endpointtype", 0);
        context.sendBroadcast(intent1);
        Log.d("PhubFileTransferClient", "ACTION_FIRMWARE_TRANSFER broadcast sent for failed");
        if (BTConnectionListener.isOPPSleepRequired)
            break MISSING_BLOCK_LABEL_484;
        Log.d("PhubFileTransferClient", "Returning without retrying as SPP is disconnected");
          goto _L2
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Retrying the ").append(s1).append(" transfer").toString());
        updateFileStatusHeaderOnError(s1);
        i++;
          goto _L7
_L5:
        Intent intent2 = new Intent();
        intent2.setAction(Constants.ACTION_FMS_FILE_TRANSFER_FAILED);
        intent2.putExtra("sent_file_name", s1);
        context.sendBroadcast(intent2);
        Log.d("PhubFileTransferClient", "ACTION_FMS_FILE_TRANSFER_FAILED broadcast sent");
        updateFileTransferLoggerDetails("ACTION_FMS_FILE_TRANSFER_FAILED broadcast sent");
          goto _L2
        Exception exception;
        exception;
        throw exception;
        if (s1.contains("1234"))
        {
            Intent intent = new Intent();
            intent.setAction(Constants.ACTION_FIRMWARE_TRANSFER);
            intent.putExtra("file_name", s1);
            intent.putExtra("firmware_status", "failed");
            intent.putExtra("firmware_message", (new StringBuilder()).append("Unable to Transfer Firmware file: ").append(s1).append(", as Phone and WD are Disconnected").toString());
            intent.putExtra("endpointtype", 0);
            context.sendBroadcast(intent);
            Log.d("PhubFileTransferClient", "ACTION_FIRMWARE_TRANSFER broadcast sent for failed");
        }
        Log.d("PhubFileTransferClient", (new StringBuilder()).append("Unable to Transfer ").append(s1).append(" to WD, as Connection State is not in STATE_CONNECTED").toString());
        updateFileTransferLoggerDetails((new StringBuilder()).append("Unable to Transfer ").append(s1).append(" to WD, as Connection State is not in STATE_CONNECTED").toString());
        Log.printUsageLog("PhubFileTransferClient", (new StringBuilder()).append("Unable to Transfer ").append(s1).append(" to WD, as Connection State is not in STATE_CONNECTED").toString());
        updateFileStatusHeaderOnError(s1);
          goto _L2
    }

    private void updateFileStatusHeaderOnError(String s)
    {
        temp = fileNameReplace(s);
        mFileTransferStatusLogger.addHeading((new StringBuilder()).append(temp).append(" (").append("Failed").append(")").toString());
    }

    private void updateFileStatusHeaderOnSend(String s)
    {
        temp = fileNameReplace(s);
        mFileTransferStatusLogger.addHeading((new StringBuilder()).append(temp).append(" (").append("Sending").append(")").toString());
        timeAndDate = DateFormat.getDateTimeInstance().format(Calendar.getInstance().getTime());
        updateFileTransferLoggerDetails((new StringBuilder()).append("Sending ").append(s).append(" started on ").append(timeAndDate).toString());
        startTime = Calendar.getInstance().getTimeInMillis();
    }

    private void updateFileStatusHeaderOnSuccess(String s)
    {
        temp = fileNameReplace(s);
        mFileTransferStatusLogger.addHeading((new StringBuilder()).append(temp).append(" (").append("Success").append(")").toString());
    }

    private void updateFileTransferLoggerDetails(String s)
    {
        mFileTransferStatusLogger.addHeadingDetails(s);
    }

    public void closeConnection()
    {
        ClientSession clientsession;
        Exception exception1;
        try
        {
            Log.d("PhubFileTransferClient", "Called closeConnection()");
            clientsession = clientSession;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in closeConnection(): ").append(exception.toString()).toString());
            return;
        }
        if (clientsession == null) goto _L2; else goto _L1
_L1:
        if (out != null)
            out = null;
        if (putOperation != null)
            putOperation = null;
        if (hsOperation != null)
            hsOperation = null;
        Log.d("PhubFileTransferClient", "NULL other objects");
_L8:
        if (clientSession.disconnect(null).getResponseCode() != 160) goto _L4; else goto _L3
_L3:
        Log.d("PhubFileTransferClient", "clientSession.disconnect() successful");
_L5:
        clientSession.close();
        Log.d("PhubFileTransferClient", "Closing ClientSession");
_L6:
        clientSession = null;
        return;
        exception1;
        exception1.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception will NULL other objects = ").append(exception1.toString()).toString());
        continue; /* Loop/switch isn't completed */
_L4:
        Log.e("PhubFileTransferClient", "clientSession.disconnect() unsuccessful");
          goto _L5
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("clientSession.disconnect() Exception = ").append(exception2.toString()).toString());
          goto _L5
        Exception exception3;
        exception3;
        exception3.printStackTrace();
        Log.e("PhubFileTransferClient", (new StringBuilder()).append("Exception in clientSession.close(): ").append(exception3.toString()).toString());
          goto _L6
_L2:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public void deviceDiscovered(RemoteDevice remotedevice, DeviceClass deviceclass)
    {
    }

    public void inquiryCompleted(int i)
    {
    }

    public void sendFile(final String path, final String fileName)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 2 && fileName.contains("1234"))
            (new Thread() {

                final PhubFileTransferClient this$0;
                final String val$fileName;
                final String val$path;

                public void run()
                {
                    sendFileThread(path, fileName);
                }

            
            {
                this$0 = PhubFileTransferClient.this;
                path = s;
                fileName = s1;
                super();
            }
            }
).start();
    }

    public void serviceSearchCompleted(int i, int j)
    {
    }

    public void servicesDiscovered(int i, ServiceRecord aservicerecord[])
    {
    }

    public void startInquiry()
    {
        try
        {
            LocalDevice.getLocalDevice().getDiscoveryAgent().startInquiry(0x9e8b33, this);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("PhubFileTransferClient", exception.toString());
            return;
        }
    }

    public void stopInquiry()
    {
        try
        {
            LocalDevice.getLocalDevice().getDiscoveryAgent().cancelInquiry(this);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("PhubFileTransferClient", exception.toString());
            return;
        }
    }

    public void updateFileStatusBytesSend(String s, int i)
    {
        temp = fileNameReplace(s);
        mFileTransferStatusLogger.addHeading((new StringBuilder()).append(temp).append(" (").append("Sending").append(") ").append(i).append(" bytes").toString());
    }


}
