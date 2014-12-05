// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.tftp.filetransfer;

import android.content.Context;
import android.content.Intent;
import com.qualcomm.toq.base.controller.TFTPController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;

public class TFTPFiletransferClient
{

    private static final String STATUS_ERROR = "Failed";
    private static final String STATUS_SEND = "Sending";
    private static final String STATUS_SUCCESS = "Success";
    private static final String TAG = "TFTPFiletransferClient";
    public static boolean isStopTFTPPush = false;
    private static TFTPFiletransferClient mInstance = null;
    private Context context;
    private long endTime;
    private FileTransferStatusLogger mFileTransferStatusLogger;
    private boolean sendFileStatus;
    private long startTime;
    private String temp;
    private String timeAndDate;
    private long timeDiff;

    private TFTPFiletransferClient(Context context1)
    {
        context = null;
        sendFileStatus = false;
        context = context1;
        mFileTransferStatusLogger = FileTransferStatusLogger.getInstance(0);
    }

    private String fileNameReplace(String s)
    {
        return s.replace("Phub.Phone.Settings.", "").replace("Phub.Phone.Text", "").replace("Phub.Phone.", "");
    }

    public static TFTPFiletransferClient getTFTPFiletransferClient(Context context1)
    {
        if (mInstance == null)
            mInstance = new TFTPFiletransferClient(context1);
        return mInstance;
    }

    private void sendFileThreadUsingTFTP(String s, String s1)
    {
        this;
        JVM INSTR monitorenter ;
        if (isStopTFTPPush) goto _L2; else goto _L1
_L1:
        int i = 0;
_L10:
        if (i >= 3) goto _L4; else goto _L3
_L3:
        Constants.EP_TFTP_PATH = (new StringBuilder()).append(s).append("/").toString();
        if (!isStopTFTPPush)
            updateFileStatusHeaderOnSend(s1);
        Log.d("TFTPFiletransferClient", (new StringBuilder()).append("TFTP  PATH = ").append(Constants.EP_TFTP_PATH).append(", fileName = ").append(s1).toString());
        sendFileStatus = TFTPController.getTFTPController(0).sendFile(s1, new ArrayList(), (byte)11);
        Log.d("TFTPFiletransferClient", (new StringBuilder()).append("TFTP sendFileStatus  = ").append(sendFileStatus).toString());
        if (!sendFileStatus) goto _L6; else goto _L5
_L5:
        updateFileStatusHeaderOnSuccess(s1);
        Intent intent = new Intent();
        intent.setAction(Constants.ACTION_FMS_FILE_TRANSFER_COMPLETED);
        intent.putExtra("sent_file_name", s1);
        context.sendBroadcast(intent);
        Log.d("TFTPFiletransferClient", "tftp ACTION_FMS_FILE_TRANSFER_COMPLETED broadcast sent");
        endTime = Calendar.getInstance().getTimeInMillis();
        timeDiff = (endTime - startTime) / 1000L;
        if (timeDiff == 0L) goto _L8; else goto _L7
_L7:
        updateFileTransferLoggerDetails((new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" seconds").toString());
        Log.printUsageLog("TFTPFiletransferClient", (new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" seconds").toString());
_L4:
        if (!sendFileStatus)
        {
            if (!isStopTFTPPush)
                updateFileStatusHeaderOnError(s1);
            Intent intent1 = new Intent();
            intent1.setAction(Constants.ACTION_FMS_FILE_TRANSFER_FAILED);
            intent1.putExtra("sent_file_name", s1);
            context.sendBroadcast(intent1);
            Log.d("TFTPFiletransferClient", "tftp ACTION_FMS_FILE_TRANSFER_FAILED broadcast sent");
        }
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L8:
        timeDiff = endTime - startTime;
        updateFileTransferLoggerDetails((new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" millisec").toString());
        Log.printUsageLog("TFTPFiletransferClient", (new StringBuilder()).append("Time taken for the transfer is : ").append(timeDiff).append(" millisec").toString());
          goto _L4
        Exception exception;
        exception;
        throw exception;
_L6:
        Log.d("TFTPFiletransferClient", (new StringBuilder()).append("TFTP Retrying the ").append(s1).append(" transfer").toString());
        updateFileStatusHeaderOnError(s1);
        i++;
        if (true) goto _L10; else goto _L9
_L9:
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
        Log.printUsageLog("TFTPFiletransferClient", (new StringBuilder()).append("Sending ").append(s).append(" started on ").append(timeAndDate).toString());
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

    public void sendFile(final String path, final String fileName)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1 || ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 2 && fileName.contains("1234"))
            (new Thread() {

                final TFTPFiletransferClient this$0;
                final String val$fileName;
                final String val$path;

                public void run()
                {
                    sendFileThreadUsingTFTP(path, fileName);
                }

            
            {
                this$0 = TFTPFiletransferClient.this;
                path = s;
                fileName = s1;
                super();
            }
            }
).start();
    }

    public void updateFileStatusBytesSend(String s, int i)
    {
        temp = fileNameReplace(s);
        mFileTransferStatusLogger.addHeading((new StringBuilder()).append(temp).append(" (").append("Sending").append(") ").append(i).append(" bytes").toString());
    }


}
