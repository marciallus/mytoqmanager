// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import android.database.Cursor;
import android.media.AudioManager;
import android.os.*;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import android.view.KeyEvent;
import com.android.internal.telephony.ITelephony;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.service.listener.CustomPhoneStateListener;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.*;
import org.json.JSONException;
import org.json.JSONObject;

public class VoiceCallController extends DefaultController
{

    private static final String TAG = "VoiceCallController";
    public static final String appName = "VOICE_CALL_CONTROLLER";
    private static boolean isEndCallReqOn = false;
    private static VoiceCallController mInstance = null;
    private Handler handler;
    public Timer muteCallTimer;
    private Handler muteVoiceCallHandler;
    private TimerTask muteVoiceCallTimerTask;
    private ITelephony telephonyService;

    public VoiceCallController()
    {
        muteVoiceCallHandler = null;
        handler = null;
        initializeHandler();
    }

    private boolean decreaseSpeakerVolume()
    {
        try
        {
            ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).adjustStreamVolume(0, -1, 1);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return true;
    }

    private ITelephony getTelephonyService(Context context)
        throws ClassNotFoundException, SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException
    {
        if (telephonyService == null)
        {
            TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
            Method method = Class.forName(telephonymanager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
            method.setAccessible(true);
            telephonyService = (ITelephony)method.invoke(telephonymanager, new Object[0]);
        }
        return telephonyService;
    }

    public static VoiceCallController getVoiceCallController()
    {
        if (mInstance == null)
            mInstance = new VoiceCallController();
        return mInstance;
    }

    private int getVolumeLevel()
    {
        return 2 * ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).getStreamVolume(0);
    }

    private boolean increaseSpeakerVolume()
    {
        try
        {
            ((AudioManager)ToqApplication.getAppContext().getSystemService("audio")).adjustStreamVolume(0, 1, 1);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return false;
        }
        return true;
    }

    private void initializeHandler()
    {
        (new Thread() {

            final VoiceCallController this$0;

            public void run()
            {
                try
                {
                    Looper.prepare();
                    handler = new Handler();
                    Looper.loop();
                    return;
                }
                catch (Throwable throwable)
                {
                    Log.e("VoiceCallController", "Exception occured in initializeHandler()", throwable);
                }
            }

            
            {
                this$0 = VoiceCallController.this;
                super();
            }
        }
).start();
    }

    public static void setController(Object obj)
    {
        if (mInstance != null)
            mInstance.requestStop();
        mInstance = null;
    }

    private void setInCallVolumeMute(boolean flag, Context context)
    {
        final AudioManager audioManager;
        try
        {
            audioManager = (AudioManager)context.getSystemService("audio");
            Log.d("VoiceCallController", (new StringBuilder()).append("mMute = ").append(flag).toString());
            if (Build.MODEL.toLowerCase(Locale.US).contains("nexus"))
            {
                Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
                intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 79));
                context.sendOrderedBroadcast(intent, "android.permission.CALL_PRIVILEGED");
                return;
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("VoiceCallController", (new StringBuilder()).append("Mute Exception: ").append(exception.toString()).toString());
            return;
        }
        if (!flag)
            break MISSING_BLOCK_LABEL_194;
        muteVoiceCallTimerTask = new TimerTask() {

            final VoiceCallController this$0;
            final AudioManager val$audioManager;

            public void run()
            {
                muteVoiceCallHandler.post(new Runnable() {

                    final _cls3 this$1;

                    public void run()
                    {
                        Log.i("VoiceCallController", "inside TimerTask Run ");
                        Log.d("VoiceCallController", (new StringBuilder()).append("MicroPhone state: ").append(audioManager.isMicrophoneMute()).toString());
                        audioManager.setMicrophoneMute(true);
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                }
);
            }

            
            {
                this$0 = VoiceCallController.this;
                audioManager = audiomanager;
                super();
            }
        }
;
        if (muteCallTimer != null)
        {
            muteCallTimer.cancel();
            muteCallTimer = null;
        }
        if (muteCallTimer == null)
            muteCallTimer = new Timer();
        muteCallTimer.schedule(muteVoiceCallTimerTask, 0L, 100L);
        return;
        Log.d("VoiceCallController", (new StringBuilder()).append("mMute false :").append(muteVoiceCallTimerTask).toString());
        if (muteVoiceCallTimerTask != null)
        {
            Log.i("VoiceCallController", "inside TimerTask Run");
            Log.d("VoiceCallController", (new StringBuilder()).append("MicroPhone state: ").append(audioManager.isMicrophoneMute()).toString());
            audioManager.setMicrophoneMute(false);
            muteVoiceCallTimerTask.cancel();
            muteVoiceCallTimerTask = null;
            if (muteCallTimer != null)
            {
                muteCallTimer.cancel();
                muteCallTimer = null;
            }
        }
        return;
    }

    public void answerPhoneCall(Context context)
    {
        Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
        intent.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 79));
        context.sendOrderedBroadcast(intent, "android.permission.CALL_PRIVILEGED");
    }

    public boolean answerRingingCall(Context context)
    {
        try
        {
            getTelephonyService(context).answerRingingCall();
        }
        catch (Exception exception)
        {
            return false;
        }
        return true;
    }

    public void disableEndCallReq()
    {
        isEndCallReqOn = false;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        Context context = ConnectionFactory.getConnectionFactory().getContext();
        j;
        JVM INSTR tableswitch 0 15: default 88
    //                   0 682
    //                   1 928
    //                   2 88
    //                   3 88
    //                   4 1302
    //                   5 1505
    //                   6 2207
    //                   7 2495
    //                   8 88
    //                   9 3066
    //                   10 3268
    //                   11 3483
    //                   12 3643
    //                   13 88
    //                   14 88
    //                   15 89;
           goto _L1 _L2 _L3 _L1 _L1 _L4 _L5 _L6 _L7 _L1 _L8 _L9 _L10 _L11 _L1 _L1 _L12
_L1:
        return;
_L12:
        JSONObject jsonobject17;
        Log.d("VoiceCallController", "Received GetPhoneStateReq from WD");
        Log.printUsageLog("VoiceCallController", "Received GetPhoneStateReq from WD");
        jsonobject17 = new JSONObject();
        CustomPhoneStateListener customphonestatelistener;
        int l1;
        int i2;
        customphonestatelistener = CustomPhoneStateListener.getPhoneStateListener(ConnectionFactory.getConnectionFactory().getContext());
        l1 = ((TelephonyManager)context.getSystemService("phone")).getCallState();
        i2 = customphonestatelistener.getServiceState();
        Log.i("VoiceCallController", (new StringBuilder()).append("callState:").append(l1).append("  serviceState:").append(i2).append(" prevState:").append(customphonestatelistener.getPreviousCallState()).toString());
        if (i2 != 0) goto _L14; else goto _L13
_L13:
        jsonobject17.put("service", 1);
        if (l1 != 0) goto _L16; else goto _L15
_L15:
        jsonobject17.put("call_status", 0);
        jsonobject17.put("call_setup_status", 0);
_L19:
        int j2;
        int k2;
        int l2;
        if (isMicroPhoneMute())
            j2 = 1;
        else
            j2 = 0;
        jsonobject17.put("mic_mute", j2);
        jsonobject17.put("call_held", 0);
        k2 = ((AudioManager)context.getSystemService("audio")).getRingerMode();
        if (k2 == 1)
            break MISSING_BLOCK_LABEL_3803;
        l2 = 0;
        if (k2 == 0)
            break MISSING_BLOCK_LABEL_3803;
_L42:
        try
        {
            jsonobject17.put("silence_mode", l2);
        }
        catch (JSONException jsonexception5)
        {
            jsonexception5.printStackTrace();
        }
        Log.d("VoiceCallController", (new StringBuilder()).append("getPhoneStateResp: ").append(jsonobject17).toString());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("VoiceCallController", "Sending GetPhoneStateResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject17, 16399, k);
            return;
        }
          goto _L1
_L16:
        if (l1 != 1) goto _L18; else goto _L17
_L17:
        if (customphonestatelistener.isCallWaiting())
            break MISSING_BLOCK_LABEL_471;
        jsonobject17.put("call_status", 0);
        jsonobject17.put("call_setup_status", 1);
_L20:
        jsonobject17.put("caller_name", customphonestatelistener.getCallerName());
        jsonobject17.put("caller_id", customphonestatelistener.getCallerNumber());
        jsonobject17.put("caller_id_type", customphonestatelistener.getCallerType());
          goto _L19
        jsonobject17.put("call_status", 1);
        jsonobject17.put("call_setup_status", 0);
        JSONObject jsonobject18 = new JSONObject();
        if (customphonestatelistener.getCallWaitingNumber() != null)
            jsonobject18.put("caller_id", customphonestatelistener.getCallWaitingNumber());
        if (customphonestatelistener.getCallWaitingName() != null)
            jsonobject18.put("caller_name", customphonestatelistener.getCallWaitingName());
        jsonobject17.put("call_waiting", jsonobject18);
          goto _L20
_L18:
        if (l1 != 2) goto _L19; else goto _L21
_L21:
        jsonobject17.put("call_status", 1);
        jsonobject17.put("call_setup_status", 0);
        jsonobject17.put("caller_name", customphonestatelistener.getCallerName());
        jsonobject17.put("caller_id", customphonestatelistener.getCallerNumber());
        jsonobject17.put("call_time", customphonestatelistener.getCallStartTime());
        jsonobject17.put("caller_id_type", customphonestatelistener.getCallerType());
          goto _L19
_L14:
        jsonobject17.put("service", 0);
        jsonobject17.put("call_status", 0);
        jsonobject17.put("call_setup_status", 0);
          goto _L19
_L2:
        JSONObject jsonobject16;
        int k1;
        try
        {
            Log.i("VoiceCallController", (new StringBuilder()).append("DialReq: readMessage callNumber INITIATE_CALL--").append(obj).toString());
            Log.printUsageLog("VoiceCallController", "Received DialReq from WD");
            String s4 = ((JSONObject)obj).getString("dial_number");
            jsonobject16 = new JSONObject();
            k1 = initiateCall(ConnectionFactory.getConnectionFactory().getContext(), Utils.getFormattedNumber(s4));
        }
        catch (Exception exception13)
        {
            exception13.printStackTrace();
            return;
        }
        if (k1 != 0) goto _L23; else goto _L22
_L22:
        jsonobject16.put("result", 0);
        jsonobject16.put("description", "Successfully dialed");
        Log.printUsageLog("VoiceCallController", "Call initiated successfully");
_L26:
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("VoiceCallController", "Sending DialResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject16, 16384, k);
        }
        Log.d("VoiceCallController", (new StringBuilder()).append("DialReq responsePayload:").append(jsonobject16).toString());
        return;
_L23:
        if (k1 != 1) goto _L25; else goto _L24
_L24:
        jsonobject16.put("result", 1);
        jsonobject16.put("description", "Invalid Number");
          goto _L26
_L25:
        if (k1 != 3) goto _L26; else goto _L27
_L27:
        jsonobject16.put("result", 3);
        jsonobject16.put("description", "No Service");
          goto _L26
_L3:
        Cursor cursor = null;
        Log.i("VoiceCallController", (new StringBuilder()).append("RedialReq: readMessage callNumber INITIATE_CALL--").append(obj).toString());
        Log.printUsageLog("VoiceCallController", "Received RedialReq from WD");
        String as[] = {
            "number", "type", "name", "date"
        };
        cursor = context.getContentResolver().query(android.provider.CallLog.Calls.CONTENT_URI, as, null, null, "date DESC");
        if (cursor == null) goto _L29; else goto _L28
_L28:
        if (!cursor.moveToNext()) goto _L29; else goto _L30
_L30:
        JSONObject jsonobject15;
        int j1;
        int i1 = cursor.getColumnIndex("number");
        String s3 = Utils.getFormattedNumber(cursor.getString(i1));
        jsonobject15 = new JSONObject();
        j1 = initiateCall(ConnectionFactory.getConnectionFactory().getContext(), s3);
        if (j1 != 0) goto _L32; else goto _L31
_L31:
        jsonobject15.put("result", 0);
        jsonobject15.put("description", "Successfully dialed");
        Log.printUsageLog("VoiceCallController", "Redial successfully done");
_L35:
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("VoiceCallController", "Sending RedialResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject15, 16385, k);
        }
_L29:
        cursor.close();
        if (false && !null.isClosed())
        {
            null.close();
            return;
        }
          goto _L1
_L32:
        if (j1 != 1) goto _L34; else goto _L33
_L33:
        jsonobject15.put("result", 1);
        jsonobject15.put("description", "Invalid Number");
          goto _L35
        Exception exception12;
        exception12;
        exception12.printStackTrace();
        if (cursor == null || cursor.isClosed()) goto _L1; else goto _L36
_L36:
        cursor.close();
        return;
_L34:
        if (j1 != 3) goto _L35; else goto _L37
_L37:
        jsonobject15.put("result", 3);
        jsonobject15.put("description", "No Service");
          goto _L35
        Exception exception11;
        exception11;
        if (cursor != null && !cursor.isClosed())
            cursor.close();
        throw exception11;
_L4:
        Log.i("VoiceCallController", (new StringBuilder()).append("CancelOutgoingCallReq :message.payload rej:").append(obj).toString());
        Log.printUsageLog("VoiceCallController", "Received CancelOutgoingCallReq from WD");
        JSONObject jsonobject14;
        Exception exception10;
label0:
        {
            jsonobject14 = new JSONObject();
            if (!hungRingingCall(ConnectionFactory.getConnectionFactory().getContext()))
                break label0;
            jsonobject14.put("result", 0);
            jsonobject14.put("description", "Successfully rejected");
            Log.printUsageLog("VoiceCallController", "Successfully rejected the call");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending CancelOutgoingCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject14, 16388, k);
                return;
            }
        }
          goto _L1
        try
        {
            jsonobject14.put("result", 1);
            jsonobject14.put("description", "General Failure");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending CancelOutgoingCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject14, 16388, k);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception10)
        {
            exception10.printStackTrace();
            return;
        }
          goto _L1
_L5:
label1:
        {
            Log.i("VoiceCallController", (new StringBuilder()).append("AnswerCallReq: message.payload acc:").append(obj).toString());
            Log.printUsageLog("VoiceCallController", "Received AnswerCallReq from WD");
            if (CustomPhoneStateListener.getPhoneStateListener(context).getCurrentCallState() != 1)
                break MISSING_BLOCK_LABEL_2129;
            if (!answerRingingCall(context))
                break label1;
            Log.d("VoiceCallController", "Answer Call was successful");
            try
            {
                JSONObject jsonobject13 = new JSONObject();
                jsonobject13.put("result", 0);
                jsonobject13.put("description", "Successfully answered");
                if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
                {
                    Log.printUsageLog("VoiceCallController", "Sending AnswerCallResp to WD");
                    sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject13, 16389, k);
                    return;
                }
            }
            catch (JSONException jsonexception4)
            {
                jsonexception4.printStackTrace();
                return;
            }
        }
          goto _L1
        String s;
        String s2;
        s = Build.PRODUCT;
        String s1 = Build.MODEL;
        s2 = Build.MANUFACTURER;
        Log.i("VoiceCallController", (new StringBuilder()).append("product  ::").append(s).append(" model ").append(s1).append(" manufacturer ").append(s2).toString());
        if (!s.contains("htc_ace") && !s.contains("evita") && !s2.toLowerCase(Locale.US).contains("htc")) goto _L39; else goto _L38
_L38:
        Log.d("VoiceCallController", "HTC Accept call using ACTION_HEADSET_PLUG");
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.HEADSET_PLUG");
        context.registerReceiver(AndroidUtils.getAndroidUtils().getHeadsetBroadCastReceiver(), intentfilter);
        Intent intent1 = new Intent("android.intent.action.HEADSET_PLUG");
        intent1.addFlags(0x40000000);
        intent1.putExtra("state", 1);
        intent1.putExtra("name", "Headset");
        context.sendOrderedBroadcast(intent1, null);
_L41:
        JSONObject jsonobject12 = new JSONObject();
        jsonobject12.put("result", 0);
        jsonobject12.put("description", "Successfully answered");
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("VoiceCallController", "Sending AnswerCallResp to WD");
            getVoiceCallController().sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject12, 16389, k);
            return;
        }
          goto _L1
        JSONException jsonexception3;
        jsonexception3;
        try
        {
            jsonexception3.printStackTrace();
            return;
        }
        catch (Exception exception9)
        {
            answerPhoneCall(ConnectionFactory.getConnectionFactory().getContext());
        }
        JSONObject jsonobject11 = new JSONObject();
        Intent intent2;
        Intent intent3;
        try
        {
            jsonobject11.put("result", 0);
            jsonobject11.put("description", "NOT Successfully answered from Media Button Simulation with Exception");
        }
        catch (JSONException jsonexception2)
        {
            jsonexception2.printStackTrace();
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null) goto _L1; else goto _L40
_L40:
        Log.printUsageLog("VoiceCallController", "Sending AnswerCallResp to WD");
        sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject11, 16389, k);
        return;
_L39:
label2:
        {
            if (!s2.toLowerCase(Locale.US).contains("lg"))
                break label2;
            intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
            intent2.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(0, 79));
            context.sendOrderedBroadcast(intent2, "android.permission.CALL_PRIVILEGED");
            intent3 = new Intent("android.intent.action.MEDIA_BUTTON");
            intent3.putExtra("android.intent.extra.KEY_EVENT", new KeyEvent(1, 79));
            context.sendOrderedBroadcast(intent3, "android.permission.CALL_PRIVILEGED");
        }
          goto _L41
        answerPhoneCall(context);
          goto _L41
        try
        {
            JSONObject jsonobject10 = new JSONObject();
            jsonobject10.put("result", 1);
            jsonobject10.put("description", "There is no Incoming Call");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending AnswerCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject10, 16389, k);
                return;
            }
        }
        catch (Exception exception8)
        {
            return;
        }
          goto _L1
_L6:
        Log.i("VoiceCallController", (new StringBuilder()).append("RejectCallReq: message.payload rej:").append(obj).toString());
        Log.printUsageLog("VoiceCallController", "Received RejectCallReq from WD");
        if (CustomPhoneStateListener.getPhoneStateListener(context).getCurrentCallState() != 1)
            break MISSING_BLOCK_LABEL_2410;
        JSONObject jsonobject9;
        Exception exception7;
label3:
        {
            jsonobject9 = new JSONObject();
            if (!hungRingingCall(context))
                break label3;
            jsonobject9.put("result", 0);
            jsonobject9.put("description", "Successfully rejected");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending RejectCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject9, 16390, k);
                return;
            }
        }
          goto _L1
        try
        {
            jsonobject9.put("result", 1);
            jsonobject9.put("description", "General Failure");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending RejectCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject9, 16390, k);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception7)
        {
            exception7.printStackTrace();
            return;
        }
          goto _L1
        JSONObject jsonobject8 = new JSONObject();
        try
        {
            jsonobject8.put("result", 1);
            jsonobject8.put("description", "There is no Incoming Call");
        }
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("VoiceCallController", "Sending RejectCallResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject8, 16390, k);
            return;
        }
          goto _L1
_L7:
label4:
        {
            Log.i("VoiceCallController", (new StringBuilder()).append("EndCallReq:message.payload rej:").append(obj).toString());
            Log.printUsageLog("VoiceCallController", "Received EndCallReq from WD");
            if (!isEndCallReqOn)
                break label4;
            Log.i("VoiceCallController", "Already an EndCallReq is in progress");
            try
            {
                if (CustomPhoneStateListener.getPhoneStateListener(context).getCurrentCallState() != 0)
                    hungRingingCall(ConnectionFactory.getConnectionFactory().getContext());
                JSONObject jsonobject7 = new JSONObject();
                jsonobject7.put("result", 0);
                jsonobject7.put("description", "Already an EndCallReq is in progress");
                if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
                {
                    Log.printUsageLog("VoiceCallController", "Already an EndCallReq is in progress");
                    sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject7, 16391, k);
                    return;
                }
            }
            catch (Exception exception6)
            {
                exception6.printStackTrace();
                return;
            }
        }
          goto _L1
        if (CustomPhoneStateListener.getPhoneStateListener(context).getCurrentCallState() != 2 && CustomPhoneStateListener.getPhoneStateListener(context).getCurrentCallState() != 1)
            break MISSING_BLOCK_LABEL_2857;
        Exception exception4;
        JSONObject jsonobject4;
label5:
        {
            isEndCallReqOn = true;
            jsonobject4 = new JSONObject();
            if (!hungRingingCall(ConnectionFactory.getConnectionFactory().getContext()))
                break label5;
            jsonobject4.put("result", 0);
            jsonobject4.put("description", "Successfully ended");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending EndCallResp to WD");
                Log.i("VoiceCallController", "EndCallReq Sending SUCCESS EndCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject4, 16391, k);
                return;
            }
        }
          goto _L1
        try
        {
            isEndCallReqOn = false;
            jsonobject4.put("result", 1);
            jsonobject4.put("description", "General Failure");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending EndCallResp to WD");
                Log.i("VoiceCallController", "EndCallReq Sending Failure EndCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject4, 16391, k);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception4)
        {
            exception4.printStackTrace();
            return;
        }
          goto _L1
        if (CustomPhoneStateListener.getPhoneStateListener(context).getCurrentCallState() == 0)
        {
            Intent intent = new Intent(Constants.ACTION_CANCEL_CALL);
            context.sendBroadcast(intent);
            try
            {
                hungRingingCall(ConnectionFactory.getConnectionFactory().getContext());
                JSONObject jsonobject5 = new JSONObject();
                jsonobject5.put("result", 0);
                jsonobject5.put("description", "Successfully ended");
                if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
                {
                    Log.printUsageLog("VoiceCallController", "Sending EndCallResp to WD");
                    sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject5, 16391, k);
                    return;
                }
            }
            catch (Exception exception5)
            {
                exception5.printStackTrace();
                return;
            }
        } else
        {
            JSONObject jsonobject6 = new JSONObject();
            try
            {
                jsonobject6.put("result", 1);
                jsonobject6.put("description", "There is no Active Call");
            }
            catch (JSONException jsonexception)
            {
                jsonexception.printStackTrace();
            }
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending EndCallResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject6, 16391, k);
                return;
            }
        }
          goto _L1
_L8:
        Log.i("VoiceCallController", (new StringBuilder()).append("SpeakerVolumeUpReq: message.payload spk:").append(obj).toString());
        Log.printUsageLog("VoiceCallController", "Received SpeakerVolumeUpReq from WD");
        JSONObject jsonobject3;
        Exception exception3;
label6:
        {
            jsonobject3 = new JSONObject();
            if (!increaseSpeakerVolume())
                break label6;
            jsonobject3.put("result", 0);
            jsonobject3.put("new_vol", getVolumeLevel());
            jsonobject3.put("description", "Successfully volume increased");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending SpeakerVolumeUpResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject3, 16393, k);
                return;
            }
        }
          goto _L1
        try
        {
            jsonobject3.put("result", 1);
            jsonobject3.put("description", "General Failure");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending SpeakerVolumeUpResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject3, 16393, k);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception3)
        {
            exception3.printStackTrace();
            return;
        }
          goto _L1
_L9:
        Log.i("VoiceCallController", (new StringBuilder()).append("SpeakerVolumeDownReq : message.payload rej:").append(obj).toString());
        Log.printUsageLog("VoiceCallController", "Received SpeakerVolumeDownReq from WD");
        JSONObject jsonobject2;
        Exception exception2;
label7:
        {
            jsonobject2 = new JSONObject();
            if (!decreaseSpeakerVolume())
                break label7;
            jsonobject2.put("result", 0);
            jsonobject2.put("new_vol", getVolumeLevel());
            jsonobject2.put("description", "Successfully volume decreased");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending SpeakerVolumeDownResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject2, 16394, k);
                return;
            }
        }
          goto _L1
        try
        {
            jsonobject2.put("result", 1);
            jsonobject2.put("new_vol", getVolumeLevel());
            jsonobject2.put("description", "General Failure");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending SpeakerVolumeDownResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject2, 16394, k);
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2)
        {
            exception2.printStackTrace();
            return;
        }
          goto _L1
_L10:
        Log.printUsageLog("VoiceCallController", "Received MicMuteReq from WD");
        Log.i("VoiceCallController", (new StringBuilder()).append("MicMuteReq: message.payload mute:").append(obj).toString());
        try
        {
            muteInCall(ConnectionFactory.getConnectionFactory().getContext(), true, handler);
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("result", 0);
            jsonobject1.put("description", "**Sucessful Mute**");
            Log.d("VoiceCallController", (new StringBuilder()).append("MuteReq response payload: ").append(jsonobject1.toString()).toString());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending MicMuteResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject1, 16395, k);
                return;
            }
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
            return;
        }
          goto _L1
_L11:
        Log.i("VoiceCallController", (new StringBuilder()).append("MicUnmuteReq: message.payload mute:").append(obj).toString());
        Log.printUsageLog("VoiceCallController", "Received MicUnmuteReq from WD");
        try
        {
            muteInCall(ConnectionFactory.getConnectionFactory().getContext(), false, handler);
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("result", 0);
            jsonobject.put("description", "**Sucessful unmute**");
            Log.d("VoiceCallController", (new StringBuilder()).append("MicUnmuteReq response payload: ").append(jsonobject.toString()).toString());
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("VoiceCallController", "Sending MicUnmuteResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 1, 2, jsonobject, 16396, k);
                return;
            }
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
          goto _L1
        l2 = 1;
          goto _L42
    }

    public boolean hungRingingCall(Context context)
        throws Exception
    {
        return getTelephonyService(context).endCall();
    }

    public int initiateCall(Context context, String s)
        throws Exception
    {
        if (AndroidUtils.isAirplaneMode(context))
        {
            Log.d("VoiceCallController", "Airplane Mode ON");
        } else
        {
            if (!isNumber(s))
            {
                Log.d("VoiceCallController", "Phone Number is not proper");
                return 1;
            }
            Log.d("VoiceCallController", "CALL INITIATED");
            Log.d("VoiceCallController", (new StringBuilder()).append("ServiceState = ").append(CustomPhoneStateListener.getPhoneStateListener(context).getServiceState()).toString());
            if (CustomPhoneStateListener.getPhoneStateListener(context).getServiceState() == 0)
            {
                Intent intent = new Intent(Constants.ACTION_INITIATE_CALL);
                intent.putExtra((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.number").toString(), s);
                context.sendBroadcast(intent);
                Log.d("VoiceCallController", (new StringBuilder()).append("CustomPhoneStateListener [getCurrentCallState()] = ").append(CustomPhoneStateListener.getPhoneStateListener(context).getCurrentCallState()).toString());
                return 0;
            }
        }
        return 3;
    }

    public boolean isMicroPhoneMute()
    {
        Context context = ConnectionFactory.getConnectionFactory().getContext();
        if (context == null)
            break MISSING_BLOCK_LABEL_41;
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        if (audiomanager == null)
            break MISSING_BLOCK_LABEL_30;
        return audiomanager.isMicrophoneMute();
        Log.d("VoiceCallController", "audioManager is NULL, so isMicroPhoneMute() is false");
        break MISSING_BLOCK_LABEL_88;
        try
        {
            Log.d("VoiceCallController", "context is NULL, so isMicroPhoneMute() is false");
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            Log.e("VoiceCallController", (new StringBuilder()).append("Exception in isMicroPhoneMute(), so value is false: ").append(exception.toString()).toString());
        }
        return false;
    }

    public boolean isNumber(String s)
    {
label0:
        {
            String s1 = PhoneNumberUtils.extractNetworkPortion(s);
            if (s1 != null && s1.isEmpty())
            {
                Log.d("VoiceCallController", "Network portion of the number is empty");
            } else
            {
                char ac[] = s.toCharArray();
                int i = 0;
                do
                {
                    if (i >= s.length())
                        break label0;
                    if (Character.isLetter(ac[i]) || ac[i] == '#')
                        break;
                    i++;
                } while (true);
            }
            return false;
        }
        return true;
    }

    public void manualMuteRinger(Context context)
    {
        TelephonyManager telephonymanager = (TelephonyManager)context.getSystemService("phone");
        AudioManager audiomanager = (AudioManager)context.getSystemService("audio");
        int i = audiomanager.getRingerMode();
        CustomPhoneStateListener customphonestatelistener = CustomPhoneStateListener.getPhoneStateListener(context);
        if (telephonymanager.getCallState() == 1 && customphonestatelistener.getRingerMode() == null)
        {
            audiomanager.setRingerMode(8);
            Log.i("BluetoothConnService", "Inside mute ringer");
            CustomPhoneStateListener.getPhoneStateListener(context).setRingerMode(Integer.valueOf(i));
        }
    }

    public void muteInCall(Context context, boolean flag, Handler handler1)
    {
label0:
        {
            Log.e("VoiceCallController", "inMuteCall");
            muteVoiceCallHandler = handler1;
            if (((TelephonyManager)context.getSystemService("phone")).getCallState() == 2)
            {
                if (!flag)
                    break label0;
                Log.d("VoiceCallController", "tele offhook ");
                setInCallVolumeMute(flag, context);
            }
            return;
        }
        Log.d("VoiceCallController", "else offhook");
        setInCallVolumeMute(flag, context);
    }

    public void muteInCall(boolean flag)
    {
        muteInCall(ConnectionFactory.getConnectionFactory().getContext(), flag, handler);
    }

    public void muteRingingCall(Context context)
        throws Exception
    {
        getTelephonyService(context).silenceRinger();
    }

    public void requestStop()
    {
        this;
        JVM INSTR monitorenter ;
        handler.post(new Runnable() {

            final VoiceCallController this$0;

            public void run()
            {
                Log.i("VoiceCallController", "loop quitting by request");
                Looper.myLooper().quit();
            }

            
            {
                this$0 = VoiceCallController.this;
                super();
            }
        }
);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }



/*
    static Handler access$002(VoiceCallController voicecallcontroller, Handler handler1)
    {
        voicecallcontroller.handler = handler1;
        return handler1;
    }

*/

}
