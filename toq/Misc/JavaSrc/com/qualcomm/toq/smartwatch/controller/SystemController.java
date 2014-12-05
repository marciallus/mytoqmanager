// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.content.Intent;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.service.PHubService;
import com.qualcomm.toq.smartwatch.ui.activity.FindPhoneActivity;
import com.qualcomm.toq.smartwatch.utils.AndroidUtils;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.TimeZone;
import org.json.JSONException;
import org.json.JSONObject;

public class SystemController extends DefaultController
{

    private static final String TAG = "SystemController";
    public static final String appName = "TIME_CONTROLLER";
    private static SystemController mInstance = null;
    public boolean bFindPhoneReqOn;
    public Context context;
    public long currentSysTime;
    public int dayLightSaving;
    public long dayLightSavingOffset;
    private boolean isFindWdReqAllowed;
    public boolean mFindPhoneCancel;

    private SystemController()
    {
        bFindPhoneReqOn = false;
        mFindPhoneCancel = false;
        isFindWdReqAllowed = true;
        context = null;
    }

    public static SystemController getSystemController()
    {
        if (mInstance == null)
            mInstance = new SystemController();
        return mInstance;
    }

    private void unpairDevice(BluetoothDevice bluetoothdevice)
    {
        try
        {
            bluetoothdevice.getClass().getMethod("removeBond", (Class[])null).invoke(bluetoothdevice, (Object[])null);
            return;
        }
        catch (Exception exception)
        {
            Log.e("SystemController", (new StringBuilder()).append("Exception in unpairDevice() - ").append(exception.getMessage()).toString());
        }
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        context = ConnectionFactory.getConnectionFactory().getContext();
        j;
        JVM INSTR lookupswitch 11: default 108
    //                   0: 497
    //                   1: 870
    //                   2: 1066
    //                   6: 1543
    //                   7: 283
    //                   8: 109
    //                   10: 1325
    //                   16387: 1291
    //                   16388: 1455
    //                   16389: 1504
    //                   16393: 1697;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12
_L5:
        break MISSING_BLOCK_LABEL_1543;
_L1:
        break; /* Loop/switch isn't completed */
_L12:
        break MISSING_BLOCK_LABEL_1697;
_L13:
        return;
_L7:
        Log.d("SystemController", "DisassociateReq Request received");
        Log.printUsageLog("SystemController", "Received DisassociateReq from WD");
        JSONObject jsonobject7 = new JSONObject();
        try
        {
            jsonobject7.put("result", 0);
            jsonobject7.put("description", "WD has been Disassociated");
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("SystemController", "Sending DisassociateResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject7, 16392, k);
                Log.d("SystemController", (new StringBuilder()).append("DisassociateResp sent to WD ").append(jsonobject7).toString());
            }
        }
        catch (Exception exception3)
        {
            exception3.printStackTrace();
        }
        try
        {
            unpairDevice(BluetoothAdapter.getDefaultAdapter().getRemoteDevice(ConnectionFactory.getConnectionFactory().getEndPoint(0).getAddress()));
            return;
        }
        catch (Exception exception4)
        {
            Log.e("SystemController", (new StringBuilder()).append("Exception in DisassociateReq - ").append(exception4.getMessage()).toString());
        }
        return;
_L6:
        Log.printUsageLog("SystemController", "Received SilencePhoneReq from WD");
        Log.d("SystemController", (new StringBuilder()).append("Set to Silence Mode Request received").append(obj).toString());
        JSONObject jsonobject6 = new JSONObject();
        try
        {
            jsonobject6.put("result", 0);
            jsonobject6.put("description", "Set to Silence Mode Request received");
        }
        catch (JSONException jsonexception2)
        {
            jsonexception2.printStackTrace();
        }
        try
        {
            if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
            {
                Log.printUsageLog("SystemController", "Sending SilencePhoneResp to WD");
                sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject6, 16391, k);
                ConnectionFactory.getConnectionFactory().setAppCurrentMode(((JSONObject)obj).getInt("silence_mode"));
            }
            Log.d("SystemController", (new StringBuilder()).append("Set to Silence Mode Response sent to WD= ").append(obj).toString());
            if (context != null)
            {
                Log.d("SystemController", (new StringBuilder()).append("REQ_SILENCE_MODE value = ").append(((JSONObject)obj).getInt("silence_mode")).toString());
                AndroidUtils.getAndroidUtils().setRingerModeSilent(((JSONObject)obj).getInt("silence_mode"));
                return;
            }
        }
        catch (JSONException jsonexception3)
        {
            jsonexception3.printStackTrace();
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        Log.d("SystemController", "Received GetTimeReq from WD");
        Log.printUsageLog("SystemController", "Received GetTimeReq from WD");
        JSONObject jsonobject4 = new JSONObject();
        long l1 = System.currentTimeMillis();
        currentSysTime = l1 / 1000L;
        Calendar calendar = Calendar.getInstance();
        TimeZone timezone = calendar.getTimeZone();
        int i1 = timezone.getRawOffset() / 1000;
        Log.d("SystemController", (new StringBuilder()).append("timezone Offset Raw = ").append(i1).toString());
        int j1 = timezone.getOffset(l1) / 1000;
        Log.d("SystemController", (new StringBuilder()).append("timezone Offset including daylight savings time  = ").append(j1).toString());
        java.util.Date date = calendar.getTime();
        if (timezone.useDaylightTime())
        {
            if (timezone.inDaylightTime(date))
            {
                dayLightSaving = 1;
                dayLightSavingOffset = timezone.getDSTSavings() / 1000;
            } else
            {
                dayLightSaving = 0;
                dayLightSavingOffset = 0L;
            }
        } else
        {
            dayLightSaving = 0;
            dayLightSavingOffset = 0L;
        }
        try
        {
            jsonobject4.put("result", 0);
            jsonobject4.put("description", "current time");
            JSONObject jsonobject5 = new JSONObject();
            jsonobject5.put("epoch_time", currentSysTime);
            jsonobject5.put("dst", dayLightSaving);
            jsonobject5.put("time_zone", i1);
            jsonobject4.put("time", jsonobject5);
        }
        catch (Exception exception2)
        {
            Log.e("SystemController", (new StringBuilder()).append("Exception ocured in GetTimeRequest: ").append(exception2).toString());
        }
        Log.d("SystemController", (new StringBuilder()).append("GetTimeResp: ").append(jsonobject4).toString());
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending GetTimeResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject4, 16384, k);
            return;
        }
        if (true) goto _L13; else goto _L3
_L3:
        JSONObject jsonobject3;
        Log.printUsageLog("SystemController", "Received FindPhoneReq from WD");
        getSystemController().mFindPhoneCancel = false;
        Log.d("SystemController", "Received FindPhoneReq");
        try
        {
            jsonobject3 = new JSONObject();
            if (bFindPhoneReqOn)
            {
                jsonobject3.put("result", 0);
                jsonobject3.put("description", "Find phone alert already on");
                sendFoundPhoneReq(jsonobject3);
                return;
            }
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
            bFindPhoneReqOn = false;
            return;
        }
        bFindPhoneReqOn = true;
        jsonobject3.put("result", 0);
        jsonobject3.put("description", "FindPhone Request received");
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending FindPhoneResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, new JSONObject(), 16385, k);
        }
        Log.d("SystemController", "Sent FindPhoneResp Success");
        Log.d("SystemController", (new StringBuilder()).append("Caller Thread Name start find ").append(Thread.currentThread().getName()).toString());
        startFindPhoneDialogActivity();
        return;
_L4:
        Log.printUsageLog("SystemController", "Received CancelFindPhoneReq from WD");
        Log.d("SystemController", "Received CancelFindPhoneReq");
        Log.d("SystemController", (new StringBuilder()).append("Caller Thread Name for cancel ").append(Thread.currentThread().getName()).toString());
        mFindPhoneCancel = true;
        Intent intent1 = new Intent(Constants.ACTION_CANCEL_FIND_PHONE_REQUEST);
        if (ConnectionFactory.getConnectionFactory().getContext() != null)
        {
            ConnectionFactory.getConnectionFactory().getContext().sendBroadcast(intent1);
            Log.d("SystemController", (new StringBuilder()).append("The broadcast is sent with the action").append(Constants.ACTION_CANCEL_FIND_PHONE_REQUEST).toString());
        }
        bFindPhoneReqOn = false;
        JSONObject jsonobject2 = new JSONObject();
        try
        {
            jsonobject2.put("result", 0);
            jsonobject2.put("description", "Find Phone Request is Cancelled");
        }
        catch (JSONException jsonexception1)
        {
            jsonexception1.printStackTrace();
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending CancelFindPhoneResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject2, 16386, k);
        }
        Log.d("SystemController", (new StringBuilder()).append("Sent CancelFindPhoneResp: ").append(jsonobject2).toString());
        return;
_L9:
        Log.printUsageLog("SystemController", "Received FoundPhoneResp from WD");
        Log.d("SystemController", (new StringBuilder()).append("Received FoundPhoneResp: ").append(obj).toString());
        return;
_L8:
        Log.d("SystemController", (new StringBuilder()).append("Received VoiceCommandReq: ").append(obj).toString());
        Log.printUsageLog("SystemController", "Received VoiceCommandReq from WD");
        PHubService phubservice1;
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("result", 0);
        jsonobject1.put("description", "VoiceCommand Request received");
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending VoiceCommandResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject1, 16394, k);
        }
        phubservice1 = PHubService.getPHubService();
        if (phubservice1 != null)
        {
            try
            {
                phubservice1.launchGoogleVoiceApplication();
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            return;
        }
        if (true)
            continue; /* Loop/switch isn't completed */
_L10:
        Log.d("SystemController", (new StringBuilder()).append("Received FindWDResp: ").append(obj).toString());
        Log.printUsageLog("SystemController", "Received FindWDResp from WD");
        PHubService phubservice = PHubService.getPHubService();
        if (phubservice != null)
        {
            phubservice.startFindWDDialogActivity();
            return;
        }
        if (true) goto _L13; else goto _L11
_L11:
        Log.printUsageLog("SystemController", "Received CancelFindWDResp from WD");
        setIsFindWdReqAllowed(true);
        Log.d("SystemController", (new StringBuilder()).append("Received CancelFindWDResp: ").append(obj).toString());
        return;
        Log.d("SystemController", "Received FoundWDReq");
        Log.printUsageLog("SystemController", "Received FoundWDReq from WD");
        Intent intent = new Intent(Constants.ACTION_FOUND_WD_REQUEST);
        ConnectionFactory.getConnectionFactory().getContext().sendBroadcast(intent);
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("result", 0);
            jsonobject.put("description", "Found WD Request received");
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending FoundWDResp to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject, 16390, k);
        }
        setIsFindWdReqAllowed(true);
        Log.d("SystemController", (new StringBuilder()).append("Sent FoundWDResp").append(jsonobject).toString());
        return;
        Log.printUsageLog("SystemController", (new StringBuilder()).append("Received GetWDBatteryLevelResp ").append(obj).toString());
        return;
    }

    public void sendCancelFindWDReq()
    {
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending CancelFindWDReq to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, new JSONObject(), 5, ConnectionFactory.getConnectionFactory().createTransactionID());
        }
        Log.d("SystemController", "CancelFindWDReq: ");
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendFindWDReq()
    {
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null && isFindWdReqAllowed)
        {
            Log.printUsageLog("SystemController", "Sending FindWDReq to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, new JSONObject(), 4, ConnectionFactory.getConnectionFactory().createTransactionID());
            Log.d("SystemController", "Sent FindWDReq");
            setIsFindWdReqAllowed(false);
        }
    }

    public void sendFoundPhoneReq(JSONObject jsonobject)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending FoundPhoneReq to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject, 3, ConnectionFactory.getConnectionFactory().createTransactionID());
        }
        Log.d("SystemController", (new StringBuilder()).append("Sent FoundPhoneReq:").append(jsonobject).toString());
    }

    public void sendWDBatteryLevelRequest()
    {
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            Log.printUsageLog("SystemController", "Sending GetWDBatteryLevelRequest to WD");
            Log.d("SystemController", "Sending GetWDBatteryLevelRequest to WD");
            sendControllerMessageData(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, new JSONObject(), 9, ConnectionFactory.getConnectionFactory().createTransactionID());
        }
    }

    public void setIsFindWdReqAllowed(boolean flag)
    {
        isFindWdReqAllowed = flag;
    }

    public void startFindPhoneDialogActivity()
    {
        Context context1 = ToqApplication.getAppContext();
        Intent intent = new Intent(context1, com/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity);
        intent.setFlags(0x14000000);
        context1.startActivity(intent);
    }

}
