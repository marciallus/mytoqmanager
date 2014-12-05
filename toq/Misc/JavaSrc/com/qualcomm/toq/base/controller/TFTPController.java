// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.controller;

import android.content.Context;
import android.content.Intent;
import android.os.Environment;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.tftp.*;
import com.qualcomm.toq.base.tftp.filetransfer.TFTPFiletransferClient;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.earpiece.utils.EarpiecePreference;
import java.io.*;
import java.nio.ByteBuffer;
import java.util.*;
import java.util.zip.*;

// Referenced classes of package com.qualcomm.toq.base.controller:
//            DefaultController

public class TFTPController extends DefaultController
{
    public class Reminder
    {

        final TFTPController this$0;
        Timer timer;

        public void notifyObject()
        {
            this;
            JVM INSTR monitorenter ;
            notify();
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public Reminder(int i)
        {
            this$0 = TFTPController.this;
            super();
            timer = new Timer();
            timer.schedule(new RemindTask(), i * 1000);
        }
    }

    class Reminder.RemindTask extends TimerTask
    {

        final Reminder this$1;

        public void run()
        {
            timeoutFlag = 1;
            timer.cancel();
            notifyObject();
        }

        Reminder.RemindTask()
        {
            this$1 = Reminder.this;
            super();
        }
    }


    private static boolean DEBUG_LOGS = false;
    private static final int DEFAULT_FTP_TIMEOUT = 10;
    private static final int DEFAULT_MAX_TIMEOUTS = 1;
    private static final String TAG = "TFTPController";
    private static int __maxTimeouts;
    private static int ftpTimeout;
    private static TFTPController mInstance[] = null;
    static int sPort = 50000;
    static int sTid;
    private Context context;
    private int endPointType;
    private Reminder mReminder;
    private ArrayList msgDeque;
    private FTPBaseMessage receivedMessage;
    private File resultFileFolderLocation;
    private int timeoutFlag;

    private TFTPController(int i)
    {
        msgDeque = null;
        timeoutFlag = 0;
        mReminder = null;
        receivedMessage = null;
        context = null;
        resultFileFolderLocation = null;
        if (context == null)
            context = ConnectionFactory.getConnectionFactory().getContext();
        __maxTimeouts = 1;
        ftpTimeout = 10;
        if (resultFileFolderLocation == null)
        {
            resultFileFolderLocation = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/TFTP").toString());
            if (!resultFileFolderLocation.exists())
                resultFileFolderLocation.mkdir();
        }
        endPointType = i;
    }

    private void closeFS(InputStream inputstream)
    {
        if (inputstream == null)
            break MISSING_BLOCK_LABEL_8;
        inputstream.close();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    private void closeWriter(Writer writer)
    {
        if (writer == null)
            break MISSING_BLOCK_LABEL_8;
        writer.close();
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    private static byte[] getBytesFromFile(File file)
        throws IOException
    {
        FileInputStream fileinputstream = new FileInputStream(file);
        long l = file.length();
        if (l > 0x7fffffffL)
        {
            Log.d("TFTPController", "File is too large to process OPP push");
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

    private static long getCheckSum(String s)
        throws Exception
    {
        Log.d("TFTPController", (new StringBuilder()).append("TFTP fileName = ").append(s).toString());
        File file = new File(s);
        CheckedInputStream checkedinputstream = new CheckedInputStream(new FileInputStream(file), new CRC32());
        int i = (int)file.length();
        checkedinputstream.read(new byte[i], 0, i);
        long l = checkedinputstream.getChecksum().getValue();
        checkedinputstream.close();
        return l;
    }

    public static TFTPController getTFTPController(int i)
    {
label0:
        {
            if (mInstance == null)
                mInstance = new TFTPController[3];
            if (mInstance != null)
            {
                if (i == 0 && mInstance[i] == null)
                    mInstance[i] = new TFTPController(i);
                if (i == 1 && mInstance[i] == null)
                    mInstance[i] = new TFTPController(i);
                if (i == 2 && mInstance[i] == null)
                    mInstance[i] = new TFTPController(i);
                if (i == 1 || i == 2 || i == 0)
                    break label0;
            }
            return null;
        }
        return mInstance[i];
    }

    private FTPBaseMessage waitForMessage(ArrayList arraylist, int i)
    {
        timeoutFlag = 0;
        if (mReminder == null)
            mReminder = new Reminder(i);
_L10:
        if (timeoutFlag != 0) goto _L2; else goto _L1
_L1:
        Reminder reminder1 = mReminder;
        reminder1;
        JVM INSTR monitorenter ;
        if (arraylist == null) goto _L4; else goto _L3
_L3:
        if (arraylist.isEmpty() || arraylist.size() <= 0) goto _L4; else goto _L5
_L5:
        FTPBaseMessage ftpbasemessage;
        if (mReminder != null)
        {
            mReminder.timer.cancel();
            mReminder = null;
        }
        ftpbasemessage = (FTPBaseMessage)arraylist.get(0);
        arraylist.clear();
        reminder1;
        JVM INSTR monitorexit ;
_L8:
        return ftpbasemessage;
_L4:
        if (DEBUG_LOGS)
            Log.d("TFTPController", "waitForMessage: Going to wait state");
        mReminder.wait();
        if (DEBUG_LOGS)
            Log.d("TFTPController", "waitForMessage: Exited from wait state");
_L6:
        reminder1;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        reminder1;
        JVM INSTR monitorexit ;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L6
_L2:
        Reminder reminder;
        if (DEBUG_LOGS)
            Log.d("TFTPController", "(waitForMessage)Didn't get response with in timeout :-(");
        reminder = mReminder;
        ftpbasemessage = null;
        if (reminder == null) goto _L8; else goto _L7
_L7:
        mReminder.timer.cancel();
        mReminder = null;
        return null;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        msgDeque.clear();
        receivedMessage = FTPBaseMessage.generateMessage((byte[])(byte[])obj);
        FTPBaseMessage ftpbasemessage = receivedMessage;
        msgDeque.add(ftpbasemessage);
        if (mReminder != null)
        {
            synchronized (mReminder)
            {
                mReminder.notifyObject();
            }
            return;
        }
        break MISSING_BLOCK_LABEL_80;
        exception;
        reminder;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (FTPMessageException ftpmessageexception)
        {
            ftpmessageexception.printStackTrace();
        }
        return;
        Log.d("TFTPController", "waitForMessage: mReminder is null. So yield read thread for waitForMessage to be called.");
        Thread.yield();
        return;
    }

    public boolean receiveFile(String s, ArrayList arraylist, byte byte0)
    {
        this;
        JVM INSTR monitorenter ;
        byte byte1;
        long l;
        long l1;
        byte1 = 0;
        l = 0L;
        l1 = 0L;
        File file;
        boolean flag;
        if (msgDeque == null)
            msgDeque = arraylist;
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/TFTP/").append(s).toString());
        flag = file.exists();
        if (flag)
            break MISSING_BLOCK_LABEL_76;
        file.createNewFile();
        long l2 = file.length();
        FileWriter filewriter;
        Log.d("TFTPController", (new StringBuilder()).append("PATH = ").append(file.getAbsoluteFile()).toString());
        filewriter = new FileWriter(file.getAbsoluteFile());
        BufferedWriter bufferedwriter = new BufferedWriter(filewriter);
        FTPRRQMessage ftprrqmessage = new FTPRRQMessage(byte0, 69, s, (short)0, 1);
        int i = 0;
_L11:
        int j = __maxTimeouts;
        int k;
        int i1;
        k = i;
        i1 = 0;
        if (k >= j) goto _L2; else goto _L1
_L1:
        FTPBaseMessage ftpbasemessage;
        Log.d("TFTPController", (new StringBuilder()).append("Sending RRQMessage").append(ftprrqmessage).toString());
        sendMessage(ftprrqmessage);
        ftpbasemessage = waitForMessage(arraylist, ftpTimeout);
        Log.d("TFTPController", (new StringBuilder()).append("Received RRP ").append(ftpbasemessage).toString());
        if (ftpbasemessage == null) goto _L4; else goto _L3
_L3:
        byte1 = ftpbasemessage.messageOpcode(ftpbasemessage, 0, byte0);
        if (byte1 != 2) goto _L6; else goto _L5
_L5:
        i1 = ftpbasemessage.getSrcTID();
        l = ftpbasemessage.getCrc();
        l1 = ftpbasemessage.getFileSize();
_L2:
        if (i1 != 0) goto _L8; else goto _L7
_L7:
        Log.d("TFTPController", "Server did not return valid response");
        closeWriter(bufferedwriter);
        boolean flag1 = false;
_L9:
        this;
        JVM INSTR monitorexit ;
        return flag1;
        IOException ioexception2;
        ioexception2;
        Log.d("TFTPController", "Not able to create receive file");
        flag1 = false;
          goto _L9
        IOException ioexception;
        ioexception;
        Log.d("TFTPController", "Not able to create file writer for receive file");
        flag1 = false;
          goto _L9
_L6:
        if (byte1 != 6) goto _L4; else goto _L10
_L10:
        System.out.println(ftpbasemessage);
        i1 = 0;
          goto _L2
        Exception exception;
        exception;
_L14:
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        i++;
          goto _L11
_L8:
        if (l2 % (long)FTPBaseMessage.BLOCK_SIZE == 0L)
            break MISSING_BLOCK_LABEL_410;
        Log.d("TFTPController", "File contains incomplete block data, cannot resume");
        closeWriter(bufferedwriter);
        flag1 = false;
          goto _L9
        long l3;
        long l4;
        l3 = l2 / (long)FTPBaseMessage.BLOCK_SIZE;
        l4 = l1 / (long)FTPBaseMessage.BLOCK_SIZE;
        long l5;
        long l6;
        FTPACKMessage ftpackmessage;
        l5 = l4 + 1L;
        l6 = l3;
        ftpackmessage = null;
_L13:
        if (l6 >= l5)
            break MISSING_BLOCK_LABEL_740;
        FTPACKMessage ftpackmessage2 = new FTPACKMessage(byte0, i1, l6);
        FTPBaseMessage ftpbasemessage1;
        int j1;
        ftpbasemessage1 = null;
        j1 = 0;
_L12:
        int k1 = __maxTimeouts;
        boolean flag2;
        int i2 = j1;
        flag2 = false;
        if (i2 >= k1)
            break MISSING_BLOCK_LABEL_595;
        Log.d("TFTPController", (new StringBuilder()).append("Sending ACk ").append(ftpackmessage2).toString());
        sendMessage(ftpackmessage2);
        ftpbasemessage1 = waitForMessage(arraylist, ftpTimeout);
        Log.d("TFTPController", (new StringBuilder()).append("Receiving DATA ").append(ftpbasemessage1).toString());
        if (ftpbasemessage1 == null)
            break MISSING_BLOCK_LABEL_638;
        byte1 = ftpbasemessage1.messageOpcode(ftpbasemessage1, i1, byte0);
        if (byte1 != 4)
            break MISSING_BLOCK_LABEL_665;
        if (ftpbasemessage1.getBlockNumber() != 1L + l6)
            break MISSING_BLOCK_LABEL_665;
        flag2 = true;
        if (flag2)
            break MISSING_BLOCK_LABEL_671;
        Log.d("TFTPController", (new StringBuilder()).append("Time out while waiting for server response ").append(l6).toString());
        closeWriter(bufferedwriter);
        flag1 = false;
          goto _L9
        if (byte1 != 6)
            break MISSING_BLOCK_LABEL_665;
        Log.d("TFTPController", "resp is null");
        closeWriter(bufferedwriter);
        flag1 = false;
          goto _L9
        j1++;
          goto _L12
        bufferedwriter.write(Arrays.toString(ftpbasemessage1.getPayload()));
        l6++;
        ftpackmessage = ftpackmessage2;
          goto _L13
        IOException ioexception1;
        ioexception1;
        Log.d("TFTPController", (new StringBuilder()).append("Unable to write payload to file").append(file.getName()).toString());
        closeWriter(bufferedwriter);
        flag1 = false;
          goto _L9
        closeWriter(bufferedwriter);
        closeWriter(filewriter);
        FTPACKMessage ftpackmessage1 = new FTPACKMessage(byte0, i1, l5);
        long l7;
        sendMessage(ftpackmessage1);
        l7 = file.length();
        long l8 = getCheckSum(file.getAbsolutePath());
        if (l7 != l1)
            break MISSING_BLOCK_LABEL_876;
        System.out.println("File Written Successfully");
        flag1 = true;
          goto _L9
        Exception exception1;
        exception1;
        System.out.println("Error in closing fileWriter and buffered Writer");
        closeWriter(bufferedwriter);
        ftpackmessage;
        flag1 = false;
          goto _L9
        Exception exception2;
        exception2;
        System.out.println((new StringBuilder()).append("Unable to retreive checksum for file ").append(file.getName()).toString());
        flag1 = false;
          goto _L9
        System.out.println((new StringBuilder()).append("Size/crc ").append(l7).append("/").append(l8).append(" do not match original ").append(l1).append("/").append(l).toString());
        flag1 = false;
          goto _L9
        exception;
          goto _L14
        exception;
          goto _L14
        exception;
        ftpackmessage;
          goto _L14
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public boolean sendFile(String s, ArrayList arraylist, byte byte0)
    {
        this;
        JVM INSTR monitorenter ;
        Object obj;
        long l;
        obj = null;
        l = 0L;
        long l1;
        File file;
        FileInputStream fileinputstream;
        msgDeque = arraylist;
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("(sendFile)|msgDeque - ").append(msgDeque.hashCode()).append("|message_queue - ").append(arraylist.hashCode()).append("|").toString());
        l1 = getCheckSum((new StringBuilder()).append(Constants.EP_TFTP_PATH).append(s).toString());
        file = new File((new StringBuilder()).append(Constants.EP_TFTP_PATH).append(s).toString());
        fileinputstream = new FileInputStream(file);
        if (file.exists()) goto _L2; else goto _L1
_L1:
        Log.d("TFTPController", "File does not exist. Returning...");
        closeFS(fileinputstream);
        boolean flag = false;
_L5:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L2:
        long l2;
        byte abyte0[];
        FTPBaseMessage ftpbasemessage;
        l2 = file.length();
        if (DEBUG_LOGS)
        {
            Log.d("TFTPController", (new StringBuilder()).append("|fileSize - ").append(l2).append("|").toString());
            Log.d("TFTPController", "Preparing and Sending WRQ");
        }
        FTPWRQMessage ftpwrqmessage = new FTPWRQMessage(byte0, 69, s, l2, l1, (short)0, 1);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("Sending WRQ Request ").append(ftpwrqmessage).toString());
        sendMessage(ftpwrqmessage);
        if (DEBUG_LOGS)
            Log.d("TFTPController", "Waiting for WRQ response");
        abyte0 = getBytesFromFile(file);
        ftpbasemessage = waitForMessage(arraylist, ftpTimeout);
        if (ftpbasemessage == null)
            break MISSING_BLOCK_LABEL_475;
        byte byte1;
        byte1 = ftpbasemessage.messageOpcode(ftpbasemessage, 0, byte0);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("Received WRP response  ").append(ftpbasemessage).toString());
        if (byte1 != 7) goto _L4; else goto _L3
_L3:
        int i;
        i = ftpbasemessage.getSrcTID();
        l = ftpbasemessage.getBlockNumber();
_L7:
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("(After getting response for WRQ)|session_tid - ").append(i).append("|").toString());
        if (i != 0)
            break MISSING_BLOCK_LABEL_501;
        if (DEBUG_LOGS)
            Log.d("TFTPController", "Server did not return valid response. Returning...");
        closeFS(fileinputstream);
        flag = false;
          goto _L5
_L4:
        i = 0;
        if (byte1 != 6) goto _L7; else goto _L6
_L6:
        Log.d("TFTPController", ftpbasemessage.toString());
        closeFS(fileinputstream);
        flag = false;
          goto _L5
        if (DEBUG_LOGS)
            Log.d("TFTPController", "(Got response for WRQ) - resp is null");
        closeFS(fileinputstream);
        flag = false;
          goto _L5
        long l3;
        byte abyte1[];
        l3 = 1L + l2 / (long)FTPBaseMessage.BLOCK_SIZE;
        abyte1 = new byte[FTPBaseMessage.BLOCK_SIZE];
        Utils.updateStatus("TFTPController", (new StringBuilder()).append("EPMessage:FTP starts with ").append(l3).append(" blocks").toString(), endPointType, 1, (byte)7);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("(Preparing Data blocks)|total_blocks - ").append(l3).append("|").toString());
          goto _L8
_L25:
        long l4;
        if (l4 >= l3) goto _L10; else goto _L9
_L9:
        int j1;
        Arrays.fill(abyte1, (byte)0);
        j1 = FTPBaseMessage.BLOCK_SIZE;
        if (l4 != l3 - 1L)
            break MISSING_BLOCK_LABEL_680;
        int k1;
        k1 = (int)(l2 % (long)FTPBaseMessage.BLOCK_SIZE);
        abyte1 = new byte[k1];
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("Setting lastBlockSize = ").append(k1).toString());
        j1 = k1;
        int k;
        System.arraycopy(abyte0, k, abyte1, 0, j1);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("(Byte read for sending)|blockNumber - ").append(l4).append("|").append("noOfByteRead - ").append(j1).append("|").toString());
        k += j1;
        if (endPointType == 0 && !TFTPFiletransferClient.isStopTFTPPush)
        {
            Log.d("TFTPController", (new StringBuilder()).append("Total No.Of Bytes Read = ").append(k).toString());
            TFTPFiletransferClient.getTFTPFiletransferClient(ToqApplication.getAppContext()).updateFileStatusBytesSend(s, k);
        }
        FTPBaseMessage ftpbasemessage1;
        FTPDATMessage ftpdatmessage = new FTPDATMessage(byte0, i, l4 + 1L, abyte1);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("Sending DATA Request  ").append(ftpdatmessage.getBlockNumber()).toString());
        sendMessage(ftpdatmessage);
        ftpbasemessage1 = waitForMessage(arraylist, ftpTimeout);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("Received ACK for DATA Request. ACK: ").append(ftpbasemessage1).toString());
        if (ftpbasemessage1 == null) goto _L12; else goto _L11
_L11:
        byte byte2;
        byte2 = ftpbasemessage1.messageOpcode(ftpbasemessage1, i, byte0);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("ACK opCode = ").append(byte2).toString());
        if (byte2 != 5) goto _L14; else goto _L13
_L13:
        int i2;
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("ACK verifying with block number = ").append(1L + l4).append("resp Block Number = ").append(ftpbasemessage1.getBlockNumber()).toString());
        i2 = ftpbasemessage1.getBlockNumber() != 1L + l4;
        boolean flag1;
        flag1 = false;
        if (i2 == 0)
            flag1 = true;
_L18:
        if (flag1) goto _L16; else goto _L15
_L15:
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("Time out while waiting for server response ").append(1L + l4).toString());
        closeFS(fileinputstream);
        flag = false;
          goto _L5
        Exception exception2;
        exception2;
        Log.d("TFTPController", "Exception occured during file read");
        closeFS(fileinputstream);
        flag = false;
          goto _L5
_L14:
        flag1 = false;
        if (byte2 != 6) goto _L18; else goto _L17
_L17:
        Log.d("TFTPController", ftpbasemessage1.toString());
        flag1 = false;
          goto _L18
_L12:
        if (DEBUG_LOGS)
            Log.d("TFTPController", "(Got response for FTPDataMessage) - resp is null");
          goto _L19
_L16:
        int i1;
        int j2;
        j2 = (int)Math.ceil((100F * (float)(1L + l4)) / (float)l3);
        if (DEBUG_LOGS)
        {
            StringBuilder stringbuilder = (new StringBuilder()).append("File transfer ").append(j2).append("% completed with bytes: ");
            i1 += abyte1.length;
            Log.d("TFTPController", stringbuilder.append(i1).toString());
            Log.d("TFTPController", (new StringBuilder()).append("FileName = ").append(s).toString());
        }
          goto _L20
_L26:
        int j = j2;
        Log.d("TFTPController", (new StringBuilder()).append("EPMessage:FTP status: ").append(j2).append("% completed").toString());
        Intent intent = new Intent();
        intent.setAction(Constants.ACTION_FIRMWARE_TRANSFER_PROGRESS);
        intent.putExtra("endpointtype", endPointType);
        intent.putExtra("sent_file_bytes", (int)(1L + l4));
        intent.putExtra("file_length", (int)l3);
        context.sendBroadcast(intent);
        if (j2 <= 0 || j2 >= 3) goto _L22; else goto _L21
_L21:
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("firmware_progress").append(endPointType).toString(), "PROGRESS");
        EarpiecePreference.getEarpiecePreference(ToqApplication.getAppContext()).putString((new StringBuilder()).append("firmware_progress_mode").append(endPointType).toString(), "");
          goto _L22
_L10:
        if (DEBUG_LOGS)
            Log.i("TFTPController", "Put Operation Complete.");
        closeFS(fileinputstream);
        flag = true;
          goto _L5
        Exception exception1;
        exception1;
_L23:
        Log.e("TFTPController", (new StringBuilder()).append("Error in sendFile() ").append(exception1.toString()).toString());
        exception1.printStackTrace();
        closeFS(((InputStream) (obj)));
        flag = false;
          goto _L5
        Exception exception;
        exception;
_L24:
        this;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        obj = fileinputstream;
          goto _L23
        exception;
          goto _L24
_L8:
        l4 = l;
        j = 0;
        k = 0;
        i1 = 0;
          goto _L25
_L19:
        flag1 = false;
          goto _L18
_L20:
        if (!s.contains("1234") && !s.startsWith("EPAPP") || j == j2 && j2 != 100) goto _L22; else goto _L26
_L22:
        l4++;
          goto _L25
    }

    public void sendMessage(FTPBaseMessage ftpbasemessage)
    {
        try
        {
            sendMessage(ftpbasemessage.pack());
            return;
        }
        catch (FTPMessageException ftpmessageexception)
        {
            ftpmessageexception.printStackTrace();
        }
    }

    public void sendMessage(byte abyte0[])
    {
        IEndPoint iendpoint = ConnectionFactory.getConnectionFactory().getEndPoint(endPointType);
        if (DEBUG_LOGS)
            Log.d("TFTPController", (new StringBuilder()).append("Sending message SRC = 15, DEST = 16, endPoint.getType() = ").append(iendpoint.getType()).append(", endPoint.name = ").append(iendpoint.getName()).append(", length = ").append(abyte0.length).toString());
        sendControllerMessageData(iendpoint.getType(), 15, 16, abyte0, -1, 0);
    }

    static 
    {
        DEBUG_LOGS = true;
    }


/*
    static int access$002(TFTPController tftpcontroller, int i)
    {
        tftpcontroller.timeoutFlag = i;
        return i;
    }

*/
}
