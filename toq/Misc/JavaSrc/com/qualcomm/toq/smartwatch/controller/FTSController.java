// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.Context;
import android.os.Environment;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.ByteUtils;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.io.File;
import org.json.JSONObject;

// Referenced classes of package com.qualcomm.toq.smartwatch.controller:
//            SpeechController

public class FTSController extends DefaultController
{
    public static interface FTSReceiver
    {

        public abstract void receiveFtsFile(String s);

        public abstract void receiveFtsFile(byte abyte0[]);
    }


    private static final int FTS_TRANSPORT_COMM = 3;
    private static final int FTS_TRANSPORT_FTP = 2;
    private static final int FTS_TRANSPORT_IN_BAND = 1;
    private static final int FTS_TRANSPORT_UNKNOWN = 0;
    private static final String TAG = "FTSController";
    public static final String mAppName = "FTS_CONTROLLER";
    private static FTSController mInstance = null;
    private Context context;

    private FTSController()
    {
        context = null;
        context = ConnectionFactory.getConnectionFactory().getContext();
    }

    public static FTSController getFtsController()
    {
        if (mInstance == null)
            mInstance = new FTSController();
        return mInstance;
    }

    private String pullAudioFileFromWatchInBackground(String s)
    {
        String s1 = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/PHUB_FTP/").toString();
        String s2 = "";
        (new File(s1)).mkdirs();
        if (s != null && !s.trim().isEmpty())
        {
            String as[] = s.split("/");
            if (!as[-1 + as.length].isEmpty() && as[-1 + as.length].contains("."))
                s2 = as[-1 + as.length];
            if (!AndroidUtils.getAndroidUtils().receiveFileFromWatchInBackground(s, s1))
            {
                Log.d("FTSController", (new StringBuilder()).append("Failed to pull audio from ").append(s).toString());
                return null;
            }
            Log.d("FTSController", (new StringBuilder()).append("FTP Success ").append(s).toString());
        } else
        {
            Log.d("FTSController", "Invalid Audio Source Path");
        }
        return (new StringBuilder()).append(s1).append(s2).toString();
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        switch (j)
        {
        default:
            return;

        case 1: // '\001'
            Log.d("FTSController", "Received FtsSendReq");
            break;
        }
        byte abyte0[] = (byte[])(byte[])obj;
        int i1 = ByteUtils.convertBytestoNumber(ByteUtils.subbytes(abyte0, 0, 2));
        Log.d("FTSController", (new StringBuilder()).append("json_len_bytes:").append(i1).toString());
        String s = new String(abyte0, 2, i1);
        JSONObject jsonobject;
        int j1;
        int k1;
        int l1;
        String s1;
        try
        {
            jsonobject = new JSONObject(s);
        }
        catch (Exception exception1)
        {
            return;
        }
        try
        {
            j1 = jsonobject.getInt("length");
            k1 = jsonobject.getInt("transport_type");
        }
        catch (Exception exception)
        {
            return;
        }
        l1 = i1 + 2;
        k1;
        JVM INSTR tableswitch 1 2: default 192
    //                   1 148
    //                   2 167;
           goto _L1 _L2 _L3
_L2:
        SpeechController.getSpeechController().receiveFtsFile(ByteUtils.subbytes(abyte0, l1, j1 + l1));
        return;
_L3:
        s1 = pullAudioFileFromWatchInBackground(jsonobject.getString("file_name"));
        SpeechController.getSpeechController().receiveFtsFile(s1);
        return;
_L1:
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

}
