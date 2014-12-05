// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.*;
import android.util.Base64;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.ByteUtils;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.io.*;
import java.net.URI;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.*;
import javax.net.ssl.HttpsURLConnection;
import org.apache.http.client.utils.URIUtils;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

public class SpeechController extends DefaultController
    implements FTSController.FTSReceiver
{
    private class HttpHandler extends Handler
    {

        public static final int CLOSE_CONNECTION = 1;
        public static final int OPEN_CONNECTION = 0;
        public static final int RECOGNIZE_SPEECH = 3;
        public static final int WRITE_AUDIO = 2;
        private DataOutputStream audioStream;
        private int connectionResult;
        private HttpsURLConnection httpConnection;
        private boolean sendResponse;
        private Timer shutdownTimer;
        final SpeechController this$0;

        private void clearShutdownTimer()
        {
            if (shutdownTimer != null)
                shutdownTimer.cancel();
            shutdownTimer = new Timer();
        }

        private void closeAudioStream()
        {
            this;
            JVM INSTR monitorenter ;
            DataOutputStream dataoutputstream = audioStream;
            if (dataoutputstream == null)
                break MISSING_BLOCK_LABEL_60;
            Log.d("SpeechController", "Closing audio stream");
            audioStream.flush();
            audioStream.close();
            audioStream = null;
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            IOException ioexception;
            ioexception;
            Log.logException("SpeechController", ioexception);
            audioStream = null;
              goto _L1
            Exception exception;
            exception;
            throw exception;
            Log.d("SpeechController", "Closing audio stream: ALREADY CLOSED");
              goto _L1
        }

        private void closeHttpConnection()
        {
            this;
            JVM INSTR monitorenter ;
            closeAudioStream();
            if (httpConnection != null)
            {
                Log.d("SpeechController", "Closing HTTP Connection");
                httpConnection.disconnect();
                httpConnection = null;
            }
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        private void doSpeechRecognition()
        {
            String s;
            int i;
            s = null;
            i = 5;
            clearShutdownTimer();
            JSONObject jsonobject;
            if (connectionResult != 0)
            {
                i = connectionResult;
            } else
            {
label0:
                {
                    if (AndroidUtils.isNetworkConnected())
                        break label0;
                    i = 2;
                    s = null;
                }
            }
_L1:
            closeHttpConnection();
            jsonobject = new JSONObject();
            Exception exception;
            EOFException eofexception;
            Exception exception1;
            String s1;
            String s2;
            try
            {
                jsonobject.put("text", s);
                jsonobject.put("status", i);
            }
            catch (JSONException jsonexception)
            {
                Log.logException("SpeechController", jsonexception);
            }
            if (sendResponse && ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 28, 29, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                Log.printUsageLog("SpeechController", (new StringBuilder()).append("Sending SpeechConvertedInd to WD. Status ").append(i).toString());
            }
            Log.d("SpeechController", (new StringBuilder()).append("SendResponse: ").append(sendResponse).append("  Text: ").append(s).append("  Status: ").append(i).toString());
            shutdown();
            return;
            s2 = getHttpResponse();
            s = s2;
_L2:
            if (s != null)
                i = 0;
              goto _L1
            eofexception;
            Log.d("SpeechController", "Failed to get http response. Reattempting getting the response.");
            s1 = getHttpResponse();
            s = s1;
              goto _L2
            exception1;
            Log.logException("SpeechController", exception1);
            i = 6;
            s = null;
              goto _L2
            exception;
            Log.logException("SpeechController", exception);
            i = 6;
            s = null;
              goto _L2
        }

        private String getHttpResponse()
            throws EOFException, Exception
        {
            this;
            JVM INSTR monitorenter ;
            HttpsURLConnection httpsurlconnection = httpConnection;
            String s;
            s = null;
            if (httpsurlconnection == null)
                break MISSING_BLOCK_LABEL_180;
            BufferedReader bufferedreader1;
            StringBuffer stringbuffer1;
            closeAudioStream();
            Log.d("SpeechController", "Start read");
            bufferedreader1 = new BufferedReader(new InputStreamReader(httpConnection.getInputStream()));
            stringbuffer1 = new StringBuffer();
_L1:
            String s2 = bufferedreader1.readLine();
            if (s2 == null)
                break MISSING_BLOCK_LABEL_96;
            stringbuffer1.append(s2);
              goto _L1
            EOFException eofexception;
            eofexception;
            Log.logException("SpeechController", eofexception);
            throw eofexception;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            java.util.Map map1;
            bufferedreader1.close();
            map1 = httpConnection.getHeaderFields();
            if (map1 == null)
                break MISSING_BLOCK_LABEL_143;
            Log.d("SpeechController", (new StringBuilder()).append("Response Header: ").append(map1.toString()).toString());
            s = stringbuffer1.toString().replaceAll("\\*new_line", "\n");
            Log.d("SpeechController", (new StringBuilder()).append("Response Body: ").append(s).toString());
_L4:
            this;
            JVM INSTR monitorexit ;
            return s;
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            java.io.InputStream inputstream = httpConnection.getErrorStream();
            int i;
            i = 0;
            if (inputstream == null)
                break MISSING_BLOCK_LABEL_338;
            BufferedReader bufferedreader;
            StringBuffer stringbuffer;
            bufferedreader = new BufferedReader(new InputStreamReader(inputstream));
            stringbuffer = new StringBuffer();
            java.util.Map map;
            i = httpConnection.getResponseCode();
            Log.e("SpeechController", (new StringBuilder()).append("Error Code: ").append(i).toString());
            map = httpConnection.getHeaderFields();
            if (map == null)
                break MISSING_BLOCK_LABEL_306;
            Log.e("SpeechController", (new StringBuilder()).append("Error Header: ").append(map.toString()).toString());
_L2:
            String s1 = bufferedreader.readLine();
            if (s1 == null)
                break MISSING_BLOCK_LABEL_358;
            stringbuffer.append(s1);
              goto _L2
            IOException ioexception;
            ioexception;
            Log.logException("SpeechController", ioexception);
_L5:
            Log.logException("SpeechController", filenotfoundexception);
            s = null;
            if (i == 500) goto _L4; else goto _L3
_L3:
            throw filenotfoundexception;
            Log.e("SpeechController", (new StringBuilder()).append("ErrorStream: ").append(stringbuffer.toString()).toString());
            bufferedreader.close();
              goto _L5
            Exception exception1;
            exception1;
            Log.logException("SpeechController", exception1);
            throw exception1;
        }

        private int openHttpConnection()
        {
            this;
            JVM INSTR monitorenter ;
            closeHttpConnection();
            clearShutdownTimer();
            shutdownTimer.schedule(new TimerTask() {

                final HttpHandler this$1;

                public void run()
                {
                    Log.d("SpeechController", "Connection timed out: Closing existing connections.");
                    shutdown();
                }

            
            {
                this$1 = HttpHandler.this;
                super();
            }
            }
, 30000L);
            byte abyte0[] = Base64.decode("SFRUUF9OTURQUFJPRFVDVElPTl9RdWFsY29tbV9Ub3FfV2F0Y2hfQXBwXzIwMTQwMjE0MDQ0MTU1", 0);
            byte abyte1[] = Base64.decode("NjU4NzA1ZWM3OGI1ODZmNzc4ZDhkNGI4NzZkMTAxM2JhNTFkODc0MWFmZWMzM2VjNjJiM2Y3NjIyYWQ1NTc5MDVjNWM3Y2Q0MTEwMmNiOGFkYWEwNDI1MDcxNDM4YjE2NjExMzU4MTBmZjhiZmQ2MTNlZjRjMzY5YzkxYWY5MjY=", 0);
            String s = new String(abyte0, "UTF-8");
            String s1 = new String(abyte1, "UTF-8");
            ArrayList arraylist = new ArrayList();
            arraylist.add(new BasicNameValuePair("appId", s));
            arraylist.add(new BasicNameValuePair("appKey", s1));
            arraylist.add(new BasicNameValuePair("id", nId));
            URL url = URIUtils.createURI("https", "dictation.nuancemobility.net", 443, "/NMDPAsrCmdServlet/dictation", URLEncodedUtils.format(arraylist, "UTF-8"), null).toURL();
            Log.d("SpeechController", "Establishing HTTP Connection");
            httpConnection = (HttpsURLConnection)url.openConnection();
            Log.d("SpeechController", "HTTP Connection - Opened");
            httpConnection.setChunkedStreamingMode(4000);
            httpConnection.setRequestMethod("POST");
            httpConnection.setRequestProperty("Content-Type", "audio/x-wav;codec=pcm;bit=16;rate=8000");
            httpConnection.setRequestProperty("Accept", "text/plain");
            httpConnection.setRequestProperty("Accept-Language", "fr_FR");
            httpConnection.setRequestProperty("Accept-Topic", "Dictation");
            httpConnection.setRequestProperty("X-Dictation-NBestListSize", "1");
            httpConnection.setRequestProperty("X-Dictation-EscapeNewLine", "true");
            httpConnection.setRequestProperty("Connection", "close");
            httpConnection.setConnectTimeout(8000);
            httpConnection.setReadTimeout(8000);
            httpConnection.setDoInput(true);
            httpConnection.setDoOutput(true);
            httpConnection.connect();
            Log.d("SpeechController", "HTTP Connection - Connected");
            audioStream = new DataOutputStream(httpConnection.getOutputStream());
            Log.d("SpeechController", "HTTP Connection - SUCCESS!!");
            int i = 0;
_L2:
            this;
            JVM INSTR monitorexit ;
            return i;
            Exception exception1;
            exception1;
            Log.d("SpeechController", (new StringBuilder()).append("Establishing HTTP Exception: ").append(exception1.getMessage()).toString());
            Log.logException("SpeechController", exception1);
            clearShutdownTimer();
            closeHttpConnection();
            i = 6;
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            throw exception;
        }

        private void shutdown()
        {
            Log.d("SpeechController", "Shutting down Http Handler");
            sendResponse = false;
            closeHttpConnection();
            Looper looper = getLooper();
            if (looper != null)
                looper.quit();
        }

        private void writeToAudioStream(byte abyte0[], int i, int j, int k)
        {
            this;
            JVM INSTR monitorenter ;
            DataOutputStream dataoutputstream = audioStream;
            if (dataoutputstream == null)
                break MISSING_BLOCK_LABEL_79;
            Log.d("SpeechController", (new StringBuilder()).append("Writing to audio stream - Chunk ").append(k).toString());
            audioStream.write(abyte0, i, j);
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            IOException ioexception;
            ioexception;
            clearShutdownTimer();
            closeHttpConnection();
            Log.logException("SpeechController", ioexception);
              goto _L1
            Exception exception;
            exception;
            throw exception;
            Log.d("SpeechController", (new StringBuilder()).append("Writing to audio stream FAILED: Audio Stream Closed - Chunk ").append(k).toString());
              goto _L1
        }

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            case 3: // '\003'
                doSpeechRecognition();
                return;

            case 2: // '\002'
                Bundle bundle = message.getData();
                writeToAudioStream(bundle.getByteArray("audio"), bundle.getInt("offset"), bundle.getInt("count"), bundle.getInt("seqNum"));
                return;

            case 1: // '\001'
                closeHttpConnection();
                return;

            case 0: // '\0'
                connectionResult = openHttpConnection();
                return;
            }
        }


        private HttpHandler(Looper looper)
        {
            this$0 = SpeechController.this;
            super(looper);
            connectionResult = 0;
            sendResponse = true;
            audioStream = null;
            httpConnection = null;
            shutdownTimer = new Timer();
        }

    }


    private static final String TAG = "SpeechController";
    public static final String mAppName = "SPEECH_CONTROLLER";
    private static SpeechController mInstance = null;
    private Context context;
    private final int ftsSpeechHeaderLen = 8;
    private HttpHandler httpHandler;
    private final String nAppId = "SFRUUF9OTURQUFJPRFVDVElPTl9RdWFsY29tbV9Ub3FfV2F0Y2hfQXBwXzIwMTQwMjE0MDQ0MTU1";
    private final String nAppKey = "NjU4NzA1ZWM3OGI1ODZmNzc4ZDhkNGI4NzZkMTAxM2JhNTFkODc0MWFmZWMzM2VjNjJiM2Y3NjIyYWQ1NTc5MDVjNWM3Y2Q0MTEwMmNiOGFkYWEwNDI1MDcxNDM4YjE2NjExMzU4MTBmZjhiZmQ2MTNlZjRjMzY5YzkxYWY5MjY=";
    private final String nHost = "dictation.nuancemobility.net";
    private final String nId = getSpeechId();
    private final short nPort = 443;
    private final String nServlet = "/NMDPAsrCmdServlet/dictation";

    private SpeechController()
    {
        context = null;
        httpHandler = null;
        context = ConnectionFactory.getConnectionFactory().getContext();
        initHttpHandler();
    }

    public static SpeechController getSpeechController()
    {
        if (mInstance == null)
            mInstance = new SpeechController();
        return mInstance;
    }

    private String getSpeechId()
    {
        String s;
        String s1;
        s = "12345";
        ConnectionFactory connectionfactory = ConnectionFactory.getConnectionFactory();
        SharedPreferences sharedpreferences = null;
        if (connectionfactory != null)
        {
            Context context1 = ConnectionFactory.getConnectionFactory().getContext();
            sharedpreferences = null;
            if (context1 != null)
                sharedpreferences = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("watch_details_pref", 0);
        }
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_152;
        s1 = sharedpreferences.getString("serial_number0", "12345");
        byte abyte0[];
        StringBuffer stringbuffer;
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.update(s1.getBytes());
        abyte0 = messagedigest.digest();
        stringbuffer = new StringBuffer();
        int i = 0;
_L2:
        if (i >= abyte0.length)
            break; /* Loop/switch isn't completed */
        stringbuffer.append(Integer.toHexString(0xff & abyte0[i]));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        String s2;
        s = stringbuffer.toString();
        if (s.length() <= 40)
            break MISSING_BLOCK_LABEL_152;
        s2 = s.substring(0, 40);
        s = s2;
_L4:
        Log.d("SpeechController", (new StringBuilder()).append("Speech Id: ").append(s).toString());
        return s;
        NoSuchAlgorithmException nosuchalgorithmexception;
        nosuchalgorithmexception;
        Log.logException("SpeechController", nosuchalgorithmexception);
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void initHttpHandler()
    {
        if (httpHandler != null)
            httpHandler.shutdown();
        HandlerThread handlerthread = new HandlerThread("HttpHandlerThread");
        handlerthread.start();
        httpHandler = new HttpHandler(handlerthread.getLooper());
    }

    private boolean isValidHttpHandler()
    {
        if (httpHandler == null)
            return false;
        else
            return httpHandler.getLooper().getThread().isAlive();
    }

    private void sendReqResponse(String s, int i, int j, int k)
    {
        String s1 = (new StringBuilder()).append(s.substring(0, -4 + s.length())).append("Req").toString();
        Log.printUsageLog("SpeechController", (new StringBuilder()).append("Received ").append(s1).append(" from WD").toString());
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("result", j);
            jsonobject.put("description", (new StringBuilder()).append(s1).append(" received").toString());
        }
        catch (JSONException jsonexception)
        {
            Log.logException("SpeechController", jsonexception);
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SpeechController", (new StringBuilder()).append("Sending ").append(s).append(" to WD").toString());
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 28, 29, jsonobject, i, k);
        }
        Log.d("SpeechController", (new StringBuilder()).append("Sent ").append(s).append(": ").append(jsonobject).toString());
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        switch (j)
        {
        case 0: // '\0'
            Log.d("SpeechController", (new StringBuilder()).append("Received SpeechStreamingCompleteReq: ").append(obj).toString());
            sendReqResponse("SpeechStreamingCompleteResp", 16384, 0, k);
            if (isValidHttpHandler())
            {
                httpHandler.sendEmptyMessage(3);
                return;
            } else
            {
                Log.d("SpeechController", "Invalid HTTP Handler during SpeechStreamingCompleteReq");
                return;
            }
        }
    }

    public void receiveFtsFile(String s)
    {
        Log.d("SpeechController", (new StringBuilder()).append("FTS RECEIVE COMMAND: ").append(s).toString());
    }

    public void receiveFtsFile(byte abyte0[])
    {
        int i;
        int j;
        StringBuilder stringbuilder = (new StringBuilder()).append("FTS RECEIVE COMMAND: ");
        Object aobj[] = new Object[8];
        aobj[0] = Byte.valueOf(abyte0[0]);
        aobj[1] = Byte.valueOf(abyte0[1]);
        aobj[2] = Byte.valueOf(abyte0[2]);
        aobj[3] = Byte.valueOf(abyte0[3]);
        aobj[4] = Byte.valueOf(abyte0[4]);
        aobj[5] = Byte.valueOf(abyte0[5]);
        aobj[6] = Byte.valueOf(abyte0[6]);
        aobj[7] = Byte.valueOf(abyte0[7]);
        Log.d("SpeechController", stringbuilder.append(String.format("%X, %X, %X, %X,  %X, %X, %X, %X, ", aobj)).toString());
        byte abyte1[] = new byte[3];
        abyte1[0] = abyte0[2];
        abyte1[1] = abyte0[1];
        abyte1[2] = abyte0[0];
        i = ByteUtils.convertBytestoNumber(abyte1);
        abyte1[0] = abyte0[6];
        abyte1[1] = abyte0[5];
        abyte1[2] = abyte0[4];
        j = ByteUtils.convertBytestoNumber(abyte1);
        Object aobj1[] = new Object[2];
        aobj1[0] = Integer.valueOf(i);
        aobj1[1] = Integer.valueOf(j);
        Log.d("SpeechController", String.format("Len = %d, Seq = %d", aobj1));
        if (j != 0)
            break MISSING_BLOCK_LABEL_553;
        if (isValidHttpHandler())
            httpHandler.shutdown();
        initHttpHandler();
        httpHandler.sendEmptyMessage(0);
        new byte[] {
            82, 73, 70, 70, 36, 113, 2, 0, 87, 65, 
            86, 69, 102, 109, 116, 32, 16, 0, 0, 0, 
            1, 0, 1, 0, 64, 31, 0, 0, -128, 62, 
            0, 0, 2, 0, 16, 0, 100, 97, 116, 97, 
            0, 113, 2, 0
        };
        if (isValidHttpHandler())
        {
            Bundle bundle = new Bundle();
            bundle.putByteArray("audio", abyte0);
            bundle.putInt("offset", 8);
            bundle.putInt("count", i - 8);
            bundle.putInt("seqNum", j);
            Message message = httpHandler.obtainMessage(2);
            message.setData(bundle);
            httpHandler.sendMessage(message);
            return;
        }
        try
        {
            Log.d("SpeechController", "Invalid HTTP Handler in receiveFtsFile");
            return;
        }
        catch (Exception exception)
        {
            Log.d("SpeechController", "Received ERROR FTS COMMAND");
            Log.logException("SpeechController", exception);
            return;
        }
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }


}
