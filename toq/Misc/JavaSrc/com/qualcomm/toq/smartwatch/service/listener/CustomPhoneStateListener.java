// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service.listener;

import android.content.*;
import android.media.AudioManager;
import android.os.*;
import android.telephony.*;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.ContactController;
import com.qualcomm.toq.smartwatch.controller.VoiceCallController;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.PHubService;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import com.qualcomm.toq.smartwatch.utils.PhubContactContentObserver;
import java.util.Locale;
import java.util.Timer;
import org.json.JSONException;
import org.json.JSONObject;

public class CustomPhoneStateListener extends PhoneStateListener
{

    private static final String CALL_NUMBER_SHARED_PREFS_FILE = "call_number__pref";
    private static final String TAG = "CustomPhoneStateListener";
    private static CustomPhoneStateListener instance = null;
    public static boolean isPhoneOnActiveCall = false;
    private String CALLER_NUMBER;
    private final String UNKNOWN_NUMBER = "Unknown";
    public boolean bIncomingcall;
    public boolean bSecondIncomingCall;
    public long callStartTime;
    public Handler callStateHandler;
    public HandlerThread callStateHandlerThread;
    public String callWaitingName;
    public String callWaitingNumber;
    public String callerName;
    private volatile String callerNumber;
    public String callerPhoneType;
    private Context context;
    private int currentCallState;
    private int currentState;
    private boolean isSet;
    public Looper looper;
    private int prevCallState;
    private Integer ringerMode;
    public Integer serviceState;

    private CustomPhoneStateListener(Context context1)
    {
        CALLER_NUMBER = "callernumber";
        ringerMode = null;
        serviceState = Integer.valueOf(-1);
        bIncomingcall = false;
        bSecondIncomingCall = false;
        callStateHandlerThread = null;
        looper = null;
        callStateHandler = null;
        isSet = false;
        context = context1;
        currentCallState = 0;
        prevCallState = 0;
    }

    public static CustomPhoneStateListener getPhoneStateListener(Context context1)
    {
        if (instance == null)
            instance = new CustomPhoneStateListener(context1);
        else
            instance.context = context1;
        Log.i("CustomPhoneStateListener", (new StringBuilder()).append("CustomPhoneStateListener inst:").append(instance).toString());
        return instance;
    }

    private void sendConnectionBroadcast()
    {
        Intent intent = ToqConnectionHandlerImpl.getConnectionHandler().getLastSentBroadcastIntent();
        if (intent != null)
            context.sendBroadcast(intent);
    }

    public long getCallStartTime()
    {
        return callStartTime;
    }

    public String getCallWaitingName()
    {
        return callWaitingName;
    }

    public String getCallWaitingNumber()
    {
        return Utils.getFormattedNumber(callWaitingNumber);
    }

    public String getCallerName()
    {
        return callerName;
    }

    public String getCallerNumber()
    {
        if (callerNumber != null && !callerNumber.trim().equals(""))
            return Utils.getFormattedNumber(callerNumber);
        if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            callerNumber = ConnectionFactory.getConnectionFactory().getContext().getSharedPreferences("call_number__pref", 0).getString(CALLER_NUMBER, "");
            return Utils.getFormattedNumber(callerNumber);
        } else
        {
            return null;
        }
    }

    public String getCallerType()
    {
        return callerPhoneType;
    }

    public int getCurrentCallState()
    {
        return currentCallState;
    }

    public int getCurrentState()
    {
        return currentState;
    }

    public int getPreviousCallState()
    {
        return prevCallState;
    }

    public Integer getRingerMode()
    {
        return ringerMode;
    }

    public int getServiceState()
    {
        return serviceState.intValue();
    }

    public boolean isCallWaiting()
    {
        return bSecondIncomingCall;
    }

    public boolean isOutgoingActive()
    {
        return isSet;
    }

    public void onCallStateChanged(final int state, final String incomingNumberTemp)
    {
        currentState = state;
        final String incomingNumber = Utils.getFormattedNumber(incomingNumberTemp);
        if (incomingNumber != null && incomingNumberTemp != null && callerNumber != null && state == 0 && (!incomingNumberTemp.equals("") || !callerNumber.equals("")))
        {
            Log.e("CustomPhoneStateListener", "Setting isOnChangeCalled to false");
            PhubContactContentObserver.isOnChangeCalled = false;
        }
        Log.d("CustomPhoneStateListener", (new StringBuilder()).append("state = ").append(state).append("\nincomingNumber = ").append(incomingNumber).append("\ncallerNumber = ").append(callerNumber).toString());
        if (incomingNumber != null && incomingNumber.length() == 0)
            Log.e("CustomPhoneStateListener", "Incoming Number from Android System is Empty");
        onCallStateChanged(state, incomingNumber);
        if (callStateHandler == null)
        {
            Log.e("CustomPhoneStateListener", "Handler Null");
            callStateHandlerThread = new HandlerThread("CustomPhoneStateListener");
            callStateHandlerThread.start();
            looper = callStateHandlerThread.getLooper();
            callStateHandler = new Handler(looper);
        }
        callStateHandler.post(new Runnable() {

            final CustomPhoneStateListener this$0;
            final String val$incomingNumber;
            final String val$incomingNumberTemp;
            final int val$state;

            public void run()
            {
                callerNumber = getCallerNumber();
                prevCallState = currentCallState;
                currentCallState = state;
                Log.i("CustomPhoneStateListener", (new StringBuilder()).append("currentCallState:").append(currentCallState).append("  serviceState:").append(serviceState).append(" prevState:").append(prevCallState).toString());
                if (incomingNumber != null && incomingNumberTemp != null && callerNumber != null && !PhubContactContentObserver.isOnChangeCalled && state == 0 && (!incomingNumberTemp.equals("") || !callerNumber.equals("")))
                {
                    String s4 = ContactController.getContactController().getContactInfoFromPhone(callerNumber, context)[0];
                    if (!s4.equals("Unknown") && !s4.equals(""))
                    {
                        Log.e("ContactController", (new StringBuilder()).append("CallLog Updated set to true : name=").append(s4).toString());
                        if (!PhubContactContentObserver.isOnChangeCalled)
                        {
                            Log.e("CustomPhoneStateListener", "onChange Not yet called.Setting isCallLogsUpdated to true");
                            PhubContactContentObserver.isCallLogsUpdated = true;
                        }
                    }
                }
                if (CustomPhoneStateListener.instance.ringerMode != null)
                {
                    ((AudioManager)context.getSystemService("audio")).setRingerMode(CustomPhoneStateListener.instance.ringerMode.intValue());
                    CustomPhoneStateListener.instance.ringerMode = null;
                }
                String as[];
                as = new String[4];
                if (callerNumber != null && callerNumber.length() != 0)
                {
                    as = ContactController.getContactController().getContactInfoFromPhone(callerNumber, context);
                    callerName = as[0];
                    callerPhoneType = as[1];
                    Log.i("CustomPhoneStateListener", (new StringBuilder()).append("callerName:").append(callerName).append("  callerPhoneType:").append(callerPhoneType).toString());
                }
                state;
                JVM INSTR tableswitch 0 2: default 444
            //                           0 1579
            //                           1 472
            //                           2 1208;
                   goto _L1 _L2 _L3 _L4
_L1:
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Unknown phone state=").append(state).toString());
                return;
_L3:
                Intent intent2 = new Intent(Constants.ACTION_CALL_STATE_RINGING);
                context.sendBroadcast(intent2);
                sendConnectionBroadcast();
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Phone State = CALL_STATE_RINGING:").append(incomingNumber).toString());
                Log.printUsageLog("CustomPhoneStateListener", (new StringBuilder()).append("Phone Call State: Ringing; BT Conn State:").append(PhubBluetoothDeviceBondInfo.getInstance().getWDState()).toString());
                if (prevCallState == 0 || callerNumber == null || callerNumber.length() == 0) goto _L6; else goto _L5
_L5:
                String as1[];
                int i2;
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Already the Phone is in Active Call with Number : ").append(callerNumber).toString());
                bSecondIncomingCall = true;
                as1 = ContactController.getContactController().getContactInfoFromPhone(incomingNumber, context);
                callWaitingName = as1[0];
                callWaitingNumber = incomingNumber;
                callerNumber = getCallerNumber();
                callerName = getCallerName();
                callerPhoneType = getCallerType();
                i2 = as1.length;
                int j2 = 0;
                if (i2 <= 3) goto _L8; else goto _L7
_L7:
                if (!as1[3].equals("true")) goto _L10; else goto _L9
_L9:
                j2 = 1;
                Log.e("CustomPhoneStateListener", "Is a favorite");
_L8:
                CustomPhoneStateListener customphonestatelistener3;
                Log.d("CustomPhoneStateListener", "PhoneStateInd sent with Call Waiting details");
                customphonestatelistener3 = CustomPhoneStateListener.this;
                int i;
                int j;
                int k;
                int l;
                int l1;
                String s;
                String s1;
                Intent intent;
                String s2;
                String s3;
                Exception exception1;
                CustomPhoneStateListener customphonestatelistener;
                Exception exception2;
                ContactController contactcontroller;
                Context context1;
                boolean flag;
                boolean flag1;
                AndroidUtils androidutils;
                Exception exception3;
                IllegalArgumentException illegalargumentexception;
                Intent intent1;
                Exception exception4;
                CustomPhoneStateListener customphonestatelistener1;
                ContactController contactcontroller1;
                Context context2;
                boolean flag2;
                int i1;
                int j1;
                int k1;
                CustomPhoneStateListener customphonestatelistener2;
                int k2;
                if (getServiceState() == 0)
                    k2 = 1;
                else
                    k2 = 0;
                try
                {
                    customphonestatelistener3.sendPhoneStateIndication(1, 2, k2, 1, 0, 0, callerNumber, callerName, j2, 0L, callerPhoneType, 32768, callWaitingNumber, callWaitingName, ConnectionFactory.getConnectionFactory().createTransactionID());
                    return;
                }
                catch (Exception exception)
                {
                    Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Caught Exception for Phone Number ").append(callerNumber).append(" Exception ").append(exception).toString());
                }
                return;
_L10:
                Log.e("CustomPhoneStateListener", "Is Not a favorite");
                j2 = 0;
                  goto _L8
_L6:
                callerNumber = incomingNumber;
                if (callerNumber == null || callerNumber.length() == 0) goto _L12; else goto _L11
_L11:
                as = ContactController.getContactController().getContactInfoFromPhone(incomingNumber, context);
                callerName = as[0];
                callerPhoneType = as[1];
_L30:
                bIncomingcall = true;
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("callerName:").append(callerName).toString());
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("TYPE:").append(callerPhoneType).toString());
                j1 = as.length;
                k1 = 0;
                if (j1 <= 3) goto _L14; else goto _L13
_L13:
                if (!as[3].equals("true")) goto _L16; else goto _L15
_L15:
                k1 = 1;
                Log.e("CustomPhoneStateListener", "Is a favorite");
_L14:
                sendRingInd(1, 2, callerNumber, callerName, k1, 32769, ConnectionFactory.getConnectionFactory().createTransactionID());
                customphonestatelistener2 = CustomPhoneStateListener.this;
                if (getServiceState() == 0)
                    l1 = 1;
                else
                    l1 = 0;
                customphonestatelistener2.sendPhoneStateIndication(1, 2, l1, 0, 1, 0, callerNumber, callerName, k1, 0L, callerPhoneType, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                return;
_L12:
                callerName = "Unknown";
                callerPhoneType = "Unknown";
                continue; /* Loop/switch isn't completed */
_L16:
                Log.e("CustomPhoneStateListener", "Is Not a favorite");
                k1 = 0;
                  goto _L14
_L4:
                intent1 = new Intent(Constants.ACTION_CALL_STATE_OFF_HOOK);
                context.sendBroadcast(intent1);
                CustomPhoneStateListener.isPhoneOnActiveCall = true;
                if (callerNumber != null && callerNumber.isEmpty())
                    setCallerNumber("Unknown");
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Phone State = CALL_STATE_OFFHOOK:").append(incomingNumber).toString());
                if (bSecondIncomingCall)
                {
                    Log.d("CustomPhoneStateListener", "Second Incoming call is Rejected");
                    bSecondIncomingCall = false;
                    VoiceCallController.getVoiceCallController().disableEndCallReq();
                    return;
                }
                Log.printUsageLog("CustomPhoneStateListener", "Phone call state: Active call");
                callStartTime = System.currentTimeMillis() / 1000L;
                if (prevCallState != 1) goto _L18; else goto _L17
_L17:
                bIncomingcall = true;
_L22:
                if (prevCallState == 1) goto _L20; else goto _L19
_L19:
                i1 = prevCallState;
                if (i1 == 1) goto _L21; else goto _L20
_L20:
                contactcontroller1 = ContactController.getContactController();
                k = 0;
                if (contactcontroller1 == null)
                    break MISSING_BLOCK_LABEL_1456;
                context2 = context;
                k = 0;
                if (context2 == null)
                    break MISSING_BLOCK_LABEL_1456;
                flag2 = ContactController.getContactController().isPriviledgeContact(callerNumber, context);
                if (flag2)
                    k = 1;
                else
                    k = 0;
                customphonestatelistener1 = CustomPhoneStateListener.this;
                if (getServiceState() == 0)
                    l = 1;
                else
                    l = 0;
                customphonestatelistener1.sendPhoneStateIndication(1, 2, l, 1, 0, 0, callerNumber, callerName, k, callStartTime, callerPhoneType, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                return;
_L18:
                bIncomingcall = false;
                  goto _L22
                exception4;
                Log.e("CustomPhoneStateListener", (new StringBuilder()).append("isPriviledgeContact() Exception 3: ").append(exception4.toString()).toString());
                exception4.printStackTrace();
                k = 0;
                break MISSING_BLOCK_LABEL_1456;
_L2:
                s = callerNumber;
                s1 = callerName;
                removeCallNumberFromPreference();
                intent = new Intent(Constants.ACTION_CALL_STATE_IDLE);
                context.sendBroadcast(intent);
                CustomPhoneStateListener.isPhoneOnActiveCall = false;
                sendConnectionBroadcast();
                VoiceCallController.getVoiceCallController().disableEndCallReq();
                s2 = Build.PRODUCT;
                s3 = Build.MANUFACTURER;
                if (!s2.contains("htc_ace") && !s2.contains("evita") && !s3.toLowerCase(Locale.US).contains("htc") || prevCallState != 2)
                    break MISSING_BLOCK_LABEL_1725;
                androidutils = AndroidUtils.getAndroidUtils();
                ConnectionFactory.getConnectionFactory().getContext().unregisterReceiver(androidutils.getHeadsetBroadCastReceiver());
_L28:
                Log.printUsageLog("CustomPhoneStateListener", "Phone got back to idle state");
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Phone State= CALL_STATE_IDLE:").append(incomingNumber).toString());
                if (bIncomingcall) goto _L24; else goto _L23
_L23:
                flag1 = bIncomingcall;
                if (flag1) goto _L25; else goto _L24
_L24:
                contactcontroller = ContactController.getContactController();
                i = 0;
                if (contactcontroller == null)
                    break MISSING_BLOCK_LABEL_1840;
                context1 = context;
                i = 0;
                if (context1 == null)
                    break MISSING_BLOCK_LABEL_1840;
                flag = ContactController.getContactController().isPriviledgeContact(s, context);
                if (flag)
                    i = 1;
                else
                    i = 0;
                customphonestatelistener = CustomPhoneStateListener.this;
                if (getServiceState() == 0)
                    j = 1;
                else
                    j = 0;
                customphonestatelistener.sendPhoneStateIndication(1, 2, j, 0, 0, 0, s, s1, i, 0L, null, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
_L25:
                bIncomingcall = false;
                if (VoiceCallController.getVoiceCallController().muteCallTimer != null)
                {
                    VoiceCallController.getVoiceCallController().muteCallTimer.cancel();
                    VoiceCallController.getVoiceCallController().muteCallTimer = null;
                }
_L27:
                removeHandlerThread();
                return;
                illegalargumentexception;
                Log.e("CustomPhoneStateListener", "headset receiver not registered");
                continue; /* Loop/switch isn't completed */
                exception1;
                Log.e("CustomPhoneStateListener", (new StringBuilder()).append("isPriviledgeContact() Exception 1: ").append(exception1.toString()).toString());
                exception1.printStackTrace();
                i = 0;
                break MISSING_BLOCK_LABEL_1840;
                exception2;
                exception2.printStackTrace();
                Log.e("CustomPhoneStateListener", (new StringBuilder()).append("Mute Timer Exception: ").append(exception2.toString()).toString());
                if (true) goto _L27; else goto _L26
_L26:
                exception3;
                if (true) goto _L28; else goto _L21
_L21:
                return;
                if (true) goto _L30; else goto _L29
_L29:
            }

            
            {
                this$0 = CustomPhoneStateListener.this;
                state = i;
                incomingNumber = s;
                incomingNumberTemp = s1;
                Object();
            }
        }
);
    }

    public void onDataActivity(int i)
    {
        super.onDataActivity(i);
    }

    public void onServiceStateChanged(ServiceState servicestate)
    {
        serviceState = Integer.valueOf(servicestate.getState());
        Log.d("CustomPhoneStateListener", (new StringBuilder()).append("onServiceChanged called State").append(serviceState).toString());
        super.onServiceStateChanged(servicestate);
    }

    public boolean removeCallNumberFromPreference()
    {
        if (!isOutgoingActive())
        {
            SharedPreferences sharedpreferences = context.getSharedPreferences("call_number__pref", 0);
            if (sharedpreferences != null)
            {
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                String s = sharedpreferences.getString(CALLER_NUMBER, "");
                editor.remove(CALLER_NUMBER);
                Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Call Number removed from preference:  ").append(s).toString());
                editor.commit();
                callerNumber = "";
                callerName = "";
                return true;
            }
            Log.d("CustomPhoneStateListener", "Call Number not removed from preference:  ");
        }
        setOutgoingActive(false);
        return false;
    }

    public void removeHandlerThread()
    {
        Log.e("CustomPhoneStateListener", "Removed handler called");
        if (currentState == 0)
        {
            looper.quit();
            callStateHandler = null;
            callStateHandlerThread = null;
        }
    }

    public void sendPhoneStateIndication(int i, int j, int k, int l, int i1, int j1, String s, 
            String s1, int k1, long l1, String s2, int i2, int j2)
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("service", k);
        jsonobject.put("call_status", l);
        jsonobject.put("call_setup_status", i1);
        jsonobject.put("call_held", j1);
        if (s == null)
            break MISSING_BLOCK_LABEL_68;
        jsonobject.put("caller_id", s);
        if (s1 == null)
            break MISSING_BLOCK_LABEL_84;
        jsonobject.put("caller_name", s1);
        if (l1 == 0L)
            break MISSING_BLOCK_LABEL_102;
        jsonobject.put("call_time", l1);
        if (s2 == null)
            break MISSING_BLOCK_LABEL_128;
        if (!s2.equalsIgnoreCase("Unknown"))
            jsonobject.put("caller_id_type", s2);
        jsonobject.put("privileged", k1);
        int k2;
        int l2;
        int i3;
        if (VoiceCallController.getVoiceCallController().isMicroPhoneMute())
            k2 = 1;
        else
            k2 = 0;
        jsonobject.put("mic_mute", k2);
        l2 = ((AudioManager)context.getSystemService("audio")).getRingerMode();
        if (l2 == 1) goto _L2; else goto _L1
_L1:
        i3 = 0;
        if (l2 != 0) goto _L3; else goto _L2
_L3:
        try
        {
            jsonobject.put("silence_mode", i3);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        Log.e("CustomPhoneStateListener", (new StringBuilder()).append("phoneStateInd: ").append(jsonobject).toString());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            PHubService phubservice = PHubService.getPHubService();
            if (phubservice != null)
                phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), i, j, jsonobject, i2, j2);
        }
        return;
_L2:
        i3 = 1;
        if (true) goto _L3; else goto _L4
_L4:
    }

    public void sendPhoneStateIndication(int i, int j, int k, int l, int i1, int j1, String s, 
            String s1, int k1, long l1, String s2, int i2, String s3, 
            String s4, int j2)
    {
        JSONObject jsonobject = new JSONObject();
        Log.printUsageLog("CustomPhoneStateListener", (new StringBuilder()).append("Sending call status: ").append(l).toString());
        jsonobject.put("service", k);
        jsonobject.put("call_status", l);
        jsonobject.put("call_setup_status", i1);
        jsonobject.put("call_held", j1);
        if (s == null)
            break MISSING_BLOCK_LABEL_94;
        jsonobject.put("caller_id", s);
        if (s1 == null)
            break MISSING_BLOCK_LABEL_110;
        jsonobject.put("caller_name", s1);
        if (l1 == 0L)
            break MISSING_BLOCK_LABEL_128;
        jsonobject.put("call_time", l1);
        if (s2 == null)
            break MISSING_BLOCK_LABEL_154;
        if (!s2.equalsIgnoreCase("Unknown"))
            jsonobject.put("caller_id_type", s2);
        jsonobject.put("privileged", k1);
        int k2;
        int l2;
        int i3;
        JSONObject jsonobject1;
        if (VoiceCallController.getVoiceCallController().isMicroPhoneMute())
            k2 = 1;
        else
            k2 = 0;
        jsonobject.put("mic_mute", k2);
        l2 = ((AudioManager)context.getSystemService("audio")).getRingerMode();
        if (l2 == 1) goto _L2; else goto _L1
_L1:
        i3 = 0;
        if (l2 != 0) goto _L3; else goto _L2
_L3:
        jsonobject.put("silence_mode", i3);
        jsonobject1 = new JSONObject();
        if (s3 == null)
            break MISSING_BLOCK_LABEL_259;
        jsonobject1.put("caller_id", s3);
        if (s4 == null)
            break MISSING_BLOCK_LABEL_275;
        jsonobject1.put("caller_name", s4);
        jsonobject.put("call_waiting", jsonobject1);
_L4:
        Log.e("CustomPhoneStateListener", (new StringBuilder()).append("phoneStateInd: ").append(jsonobject).toString());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            PHubService phubservice = PHubService.getPHubService();
            if (phubservice != null)
                phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), i, j, jsonobject, i2, j2);
        }
        return;
        JSONException jsonexception;
        jsonexception;
        jsonexception.printStackTrace();
        if (true) goto _L4; else goto _L2
_L2:
        i3 = 1;
        if (true) goto _L3; else goto _L5
_L5:
    }

    public void sendRingInd(int i, int j, String s, String s1, int k, int l, int i1)
    {
        JSONObject jsonobject = new JSONObject();
        if (s == null) goto _L2; else goto _L1
_L1:
        int j1;
        if (!s.equals(""))
        {
            j1 = 1;
            continue; /* Loop/switch isn't completed */
        }
          goto _L2
_L4:
        try
        {
            jsonobject.put("caller_id_present", j1);
            jsonobject.put("caller_id", s);
            jsonobject.put("caller_name", s1);
            jsonobject.put("privileged", k);
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            PHubService phubservice = PHubService.getPHubService();
            if (phubservice != null)
                phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), i, j, jsonobject, l, i1);
        }
        return;
_L2:
        j1 = 0;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setCallerNumber(String s)
    {
        this;
        JVM INSTR monitorenter ;
        SharedPreferences sharedpreferences;
        callerNumber = s;
        sharedpreferences = context.getSharedPreferences("call_number__pref", 0);
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_82;
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString(CALLER_NUMBER, Utils.getFormattedNumber(s));
        Log.d("CustomPhoneStateListener", (new StringBuilder()).append("Set Call Number in preference:  ").append(Utils.getFormattedNumber(s)).toString());
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setOutgoingActive(boolean flag)
    {
        isSet = flag;
    }

    public void setRingerMode(Integer integer)
    {
        ringerMode = integer;
    }

    public void unRegisterListener()
    {
        if (instance != null)
        {
            ((TelephonyManager)(TelephonyManager)context.getSystemService("phone")).listen(instance, 0);
            instance = null;
            Log.i("CustomPhoneStateListener", "unregistering listener");
        }
    }




/*
    static String access$002(CustomPhoneStateListener customphonestatelistener, String s)
    {
        customphonestatelistener.callerNumber = s;
        return s;
    }

*/



/*
    static int access$102(CustomPhoneStateListener customphonestatelistener, int i)
    {
        customphonestatelistener.prevCallState = i;
        return i;
    }

*/



/*
    static int access$202(CustomPhoneStateListener customphonestatelistener, int i)
    {
        customphonestatelistener.currentCallState = i;
        return i;
    }

*/





/*
    static Integer access$502(CustomPhoneStateListener customphonestatelistener, Integer integer)
    {
        customphonestatelistener.ringerMode = integer;
        return integer;
    }

*/

}
