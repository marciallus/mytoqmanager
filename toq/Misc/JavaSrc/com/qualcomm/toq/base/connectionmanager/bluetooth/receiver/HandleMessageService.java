// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.connectionmanager.bluetooth.receiver;

import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.*;
import android.os.*;
import android.telephony.PhoneNumberUtils;
import android.telephony.SmsMessage;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.connectionmanager.bluetooth.BTConnectionManager;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.*;
import com.qualcomm.toq.smartwatch.controller.ContactController;
import com.qualcomm.toq.smartwatch.controller.SMSController;
import com.qualcomm.toq.smartwatch.database.ActivityPointsDatabaseAdapter;
import com.qualcomm.toq.smartwatch.handler.ToqConnectionHandlerImpl;
import com.qualcomm.toq.smartwatch.service.PHubService;
import com.qualcomm.toq.smartwatch.utils.*;
import java.io.IOException;
import java.util.*;
import org.json.JSONException;
import org.json.JSONObject;

public class HandleMessageService extends Service
{
    private final class ServiceHandler extends Handler
    {

        final HandleMessageService this$0;

        public void handleMessage(Message message)
        {
            onHandleIntent((Intent)message.obj);
            stopSelf(message.arg1);
        }

        public ServiceHandler(Looper looper)
        {
            this$0 = HandleMessageService.this;
            super(looper);
        }
    }


    public static int COUNT_EPL_CONNECT_ATTEMPT = 0;
    public static int COUNT_EPR_CONNECT_ATTEMPT = 0;
    public static int COUNT_WD_CONNECT_ATTEMPT = 0;
    public static final int MAX_CONNECT_ATTEMPTS = 3;
    private static final String TAG = "HandleMessageService";
    public static final int TIMER_VALUE = 10000;
    private final int MAX_STORED_DAYS = 28;
    int action;
    int condition;
    final ConnectionFactory connectionFactory = ConnectionFactory.getConnectionFactory();
    private Context context;
    private volatile ServiceHandler mServiceHandler;
    private volatile Looper mServiceLooper;
    int messageLength;

    public HandleMessageService()
    {
        context = null;
        condition = -1;
        action = -1;
    }

    private void onHandleIntent(Intent intent)
    {
        if (intent == null) goto _L2; else goto _L1
_L1:
        Bundle bundle;
        final int endType;
        final String address;
        bundle = intent.getExtras();
        if (bundle != null)
        {
            condition = bundle.getInt("condition");
            action = bundle.getInt("action");
            messageLength = bundle.getInt("messageLength");
        } else
        {
            condition = intent.getIntExtra("condition", 0);
        }
        if (condition != 1) goto _L4; else goto _L3
_L3:
        endType = intent.getIntExtra("endtype", 0);
        address = intent.getStringExtra("address");
        endType;
        JVM INSTR tableswitch 0 2: default 96
    //                   0 134
    //                   1 278
    //                   2 419;
           goto _L5 _L6 _L7 _L8
_L5:
        mServiceHandler.postDelayed(new Runnable() {

            final HandleMessageService this$0;
            final String val$address;
            final int val$endType;

            public void run()
            {
                if (BluetoothAdapter.getDefaultAdapter().isEnabled() && ToqData.getInstance().getAssociatedDevicePrefs() != null)
                {
                    if (endType == 0)
                    {
                        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") && ToqConnectionHandlerImpl.getConnectionHandler() != null && ToqConnectionHandlerImpl.getConnectionHandler().getState(endType) == 4)
                        {
                            Log.d("HandleMessageService", "WD Connect from HandleMessageService");
                            Log.v("HandleMessageService", (new StringBuilder()).append("COUNT_WD_CONNECT_ATTEMPT:::").append(HandleMessageService.COUNT_WD_CONNECT_ATTEMPT).toString());
                            BTConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).connect(address);
                        }
                    } else
                    if (endType == 1)
                    {
                        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address") && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(1) == 4)
                        {
                            Log.d("HandleMessageService", "EP-L Connect from HandleMessageService");
                            Log.v("HandleMessageService", (new StringBuilder()).append("COUNT_EPL_CONNECT_ATTEMPT:::").append(HandleMessageService.COUNT_EPL_CONNECT_ATTEMPT).toString());
                            BTConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).connect(address);
                            return;
                        }
                    } else
                    if (endType == 2 && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address") && PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(2) == 4)
                    {
                        Log.d("HandleMessageService", "EP-R Connect from HandleMessageService");
                        Log.v("HandleMessageService", (new StringBuilder()).append("COUNT_EPR_CONNECT_ATTEMPT:::").append(HandleMessageService.COUNT_EPR_CONNECT_ATTEMPT).toString());
                        BTConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).connect(address);
                        return;
                    }
                    return;
                } else
                {
                    Log.e("HandleMessageService", "Connect from HandleMessageService cannot be initiated");
                    return;
                }
            }

            
            {
                this$0 = HandleMessageService.this;
                endType = i;
                address = s;
                super();
            }
        }
, 10000L);
_L10:
        return;
_L6:
        if (COUNT_WD_CONNECT_ATTEMPT >= 3)
            continue; /* Loop/switch isn't completed */
        Log.printUsageLog("HandleMessageService", (new StringBuilder()).append("SPP retry interation: ").append(COUNT_WD_CONNECT_ATTEMPT).toString());
        Log.e("HandleMessageService", (new StringBuilder()).append("SPP retry interation: ").append(COUNT_WD_CONNECT_ATTEMPT).toString());
        COUNT_WD_CONNECT_ATTEMPT = 1 + COUNT_WD_CONNECT_ATTEMPT;
        continue; /* Loop/switch isn't completed */
        if (!BluetoothAdapter.getDefaultAdapter().isEnabled() || ToqData.getInstance().getAssociatedDevicePrefs() == null || !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") || ToqConnectionHandlerImpl.getConnectionHandler() == null || ToqConnectionHandlerImpl.getConnectionHandler().getState(endType) != 4) goto _L10; else goto _L9
_L9:
        Log.d("HandleMessageService", "WD SPP server start from HandleMessageService");
        BTConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).startSPPServer(address);
        return;
_L7:
        StringBuilder stringbuilder2 = (new StringBuilder()).append("SPP EP-L retry interation: ").append(COUNT_EPL_CONNECT_ATTEMPT).append("   Request from interface: ");
        boolean flag1;
        if (COUNT_EPL_CONNECT_ATTEMPT < 3)
            flag1 = true;
        else
            flag1 = false;
        Log.e("HandleMessageService", stringbuilder2.append(flag1).toString());
        if (COUNT_EPL_CONNECT_ATTEMPT >= 3)
            continue; /* Loop/switch isn't completed */
        COUNT_EPL_CONNECT_ATTEMPT = 1 + COUNT_EPL_CONNECT_ATTEMPT;
        continue; /* Loop/switch isn't completed */
        if (!BluetoothAdapter.getDefaultAdapter().isEnabled() || ToqData.getInstance().getAssociatedDevicePrefs() == null || !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address") || PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(1) != 4) goto _L10; else goto _L11
_L11:
        Log.d("HandleMessageService", "EP-L SPP server start from HandleMessageService");
        BTConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).startSPPServer(address);
        return;
_L8:
        StringBuilder stringbuilder1 = (new StringBuilder()).append("SPP EP-R retry interation: ").append(COUNT_EPR_CONNECT_ATTEMPT).append("   Request from interface: ");
        boolean flag;
        if (COUNT_EPR_CONNECT_ATTEMPT < 3)
            flag = true;
        else
            flag = false;
        Log.e("HandleMessageService", stringbuilder1.append(flag).toString());
        if (COUNT_EPR_CONNECT_ATTEMPT >= 3)
            continue; /* Loop/switch isn't completed */
        COUNT_EPR_CONNECT_ATTEMPT = 1 + COUNT_EPR_CONNECT_ATTEMPT;
        continue; /* Loop/switch isn't completed */
        if (!BluetoothAdapter.getDefaultAdapter().isEnabled() || ToqData.getInstance().getAssociatedDevicePrefs() == null || !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address") || PhubBluetoothDeviceBondInfo.getInstance().getDeviceState(2) != 4) goto _L10; else goto _L12
_L12:
        Log.d("HandleMessageService", "EP-R SPP server start from HandleMessageService");
        BTConnectionManager.getConnectionManager(ConnectionFactory.getConnectionFactory().getContext()).startSPPServer(address);
        return;
_L4:
        if (condition == 2)
        {
            mServiceHandler.postDelayed(new Runnable() {

                final HandleMessageService this$0;

                public void run()
                {
                    if (ToqData.getInstance().getAssociatedDevicePrefs() != null && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_name") && ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address"))
                    {
                        Log.e("HandleMessageService", "REQ_CONNECT_ANOTHER_DEVICE called but WD associated details present in SP, this state not expected");
                    } else
                    {
                        for (Iterator iterator1 = BluetoothAdapter.getDefaultAdapter().getBondedDevices().iterator(); iterator1.hasNext();)
                        {
                            BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator1.next();
                            if (PhubBluetoothDeviceBondInfo.getInstance().isWDNameSupported(bluetoothdevice.getName(), 0))
                            {
                                android.content.SharedPreferences.Editor editor1 = ToqData.getInstance().getAssociatedDevicePrefs().edit();
                                editor1.putString("associated_wd_device_name", bluetoothdevice.getName());
                                editor1.putString("associated_wd_device_address", bluetoothdevice.getAddress());
                                editor1.commit();
                                Log.d("HandleMessageService", "associatePhoneWD() from HandleMessageService");
                                if (connectionFactory != null && connectionFactory.getConnManager() != null)
                                {
                                    connectionFactory.getConnManager().associatePhoneWD();
                                    return;
                                }
                            }
                        }

                        if (connectionFactory != null && connectionFactory.getContext() != null)
                        {
                            Log.d("HandleMessageService", "HandleMessageService: send ACTION_WD_DEVICE_DISASSOCIATED Broadcast");
                            Intent intent2 = new Intent(Constants.ACTION_WD_DEVICE_DISASSOCIATED);
                            intent2.putExtra("endpointtype", 0);
                            connectionFactory.getContext().sendBroadcast(intent2);
                            Log.d("HandleMessageService", "HandleMessageService: stop PHubService");
                            Intent intent3 = new Intent(com/qualcomm/toq/smartwatch/service/PHubService.getName());
                            context.stopService(intent3);
                            return;
                        }
                    }
                }

            
            {
                this$0 = HandleMessageService.this;
                super();
            }
            }
, 10000L);
            return;
        }
        if (condition != 4)
            break; /* Loop/switch isn't completed */
        int k = bundle.getInt("messageLength");
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
        {
            if (AndroidUtils.getAndroidUtils() != null && !AndroidUtils.getAndroidUtils().isThirdPartySMSAppsInstalled(context))
            {
                SmsMessage smsmessage = SmsMessage.createFromPdu(bundle.getByteArray(Integer.toString(0)));
                if (smsmessage != null)
                {
                    String s5 = Utils.getFormattedNumber(smsmessage.getDisplayOriginatingAddress());
                    if (s5 != null)
                    {
                        if (s5.contains("@"))
                            s5 = PhoneNumberUtils.extractNetworkPortion(s5);
                        ContactController contactcontroller = ContactController.getContactController();
                        Context context1 = context;
                        String as1[] = contactcontroller.getContactInfoFromPhone(s5, context1);
                        long l = smsmessage.getTimestampMillis();
                        Log.d("SMSController", (new StringBuilder()).append("Received Time from intent= ").append(l).toString());
                        Log.d("HandleMessageService", (new StringBuilder()).append("REQ_SEND_SMS_DATA_TO_CONTROLLER: smsReceivedTime = ").append(l).toString());
                        SMSController smscontroller = SMSController.getSMSController();
                        Context context2 = context;
                        int i1 = smscontroller.getItemID(s5, l, context2);
                        ContactController contactcontroller1 = ContactController.getContactController();
                        Context context3 = context;
                        int j1;
                        String s6;
                        StringBuilder stringbuilder;
                        SmsMessage asmsmessage[];
                        int k1;
                        if (contactcontroller1.isPriviledgeContact(s5, context3))
                            j1 = 1;
                        else
                            j1 = 0;
                        s6 = as1[0];
                        stringbuilder = new StringBuilder();
                        asmsmessage = new SmsMessage[k];
                        k1 = 0;
                        while (k1 < k) 
                        {
                            asmsmessage[k1] = SmsMessage.createFromPdu(bundle.getByteArray(Integer.toString(k1)));
                            try
                            {
                                stringbuilder.append(asmsmessage[k1].getDisplayMessageBody());
                            }
                            catch (Exception exception2)
                            {
                                exception2.printStackTrace();
                            }
                            k1++;
                        }
                        JSONObject jsonobject1 = new JSONObject();
                        PHubService phubservice1;
                        try
                        {
                            jsonobject1.put("caller_id", s5);
                            jsonobject1.put("caller_name", s6);
                            jsonobject1.put("privileged", j1);
                            jsonobject1.put("text", stringbuilder);
                            jsonobject1.put("item_id", i1);
                            jsonobject1.put("time_stamp", l);
                        }
                        catch (JSONException jsonexception1)
                        {
                            jsonexception1.printStackTrace();
                        }
                        Log.d("HandleMessageService", (new StringBuilder()).append("SMSNumber: ").append(s5).append(" SMSName: ").append(s6).append(" isFavorite: ").append(j1).append(" SMSContent: ").append(stringbuilder).append(" ItemID: ").append(i1).toString());
                        Log.d("HandleMessageService", (new StringBuilder()).append("IncomingSMSInd payload: ").append(jsonobject1.toString()).toString());
                        phubservice1 = PHubService.getPHubService();
                        if (phubservice1 != null)
                        {
                            phubservice1.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 3, 4, jsonobject1, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                            return;
                        }
                    }
                }
            }
        } else
        {
            Log.e("HandleMessageService", "Third party SMS Apps Installed.Bypassing intent");
            return;
        }
        if (true) goto _L10; else goto _L13
_L13:
        if (condition != 5)
            continue; /* Loop/switch isn't completed */
        if (ConnectionFactory.getConnectionFactory().getEndPoint(0) == null) goto _L10; else goto _L14
_L14:
        MMSUtil.initializeLastMms();
        Thread.sleep(10000L);
_L18:
        Iterator iterator = MMSUtil.getNewMmsIds().iterator();
_L17:
        if (!iterator.hasNext()) goto _L10; else goto _L15
_L15:
        String s;
        String s1;
        String s2;
        s = (String)iterator.next();
        s1 = MMSUtil.getMmsText(s);
        s2 = MMSUtil.getMmsSenderAddress(s);
        if (s1.equals("") || s2.equals("")) goto _L17; else goto _L16
_L16:
        String s3;
        String as[];
        s3 = Utils.getFormattedNumber(s2);
        as = ContactController.getContactController().getContactInfoFromPhone(s3, context);
        ActivityPointsDatabaseAdapter activitypointsdatabaseadapter;
        com.qualcomm.toq.smartwatch.activitytracker.Day day;
        SharedPreferences sharedpreferences;
        android.content.SharedPreferences.Editor editor;
        IOException ioexception;
        InterruptedException interruptedexception;
        int i;
        int j;
        String s4;
        JSONObject jsonobject;
        JSONException jsonexception;
        PHubService phubservice;
        if (ContactController.getContactController().isPriviledgeContact(s3, context))
            i = 1;
        else
            i = 0;
        j = Integer.parseInt(s);
        s4 = as[0];
        jsonobject = new JSONObject();
        jsonobject.put("caller_id", s3);
        jsonobject.put("caller_name", s4);
        jsonobject.put("privileged", i);
        jsonobject.put("text", s1);
        jsonobject.put("item_id", j);
_L19:
        Log.d("HandleMessageService", (new StringBuilder()).append("IncomingSMSInd payload: ").append(jsonobject.toString()).toString());
        phubservice = PHubService.getPHubService();
        if (phubservice != null)
            try
            {
                phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 3, 4, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
            }
            catch (Exception exception1)
            {
                exception1.printStackTrace();
                return;
            }
          goto _L17
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L18
        jsonexception;
        jsonexception.printStackTrace();
          goto _L19
        if (condition != 6) goto _L10; else goto _L20
_L20:
        try
        {
            Log.d("HandleMessageService", "REQ_UPDATE_ACTIVITY_PREFERENCE Inside");
            activitypointsdatabaseadapter = ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext());
        }
        catch (Exception exception)
        {
            Log.e("HandleMessageService", (new StringBuilder()).append("Exception in REQ_UPDATE_ACTIVITY_PREFERENCE : ").append(exception).toString());
            exception.printStackTrace();
            return;
        }
        if (activitypointsdatabaseadapter == null) goto _L22; else goto _L21
_L21:
        Log.e("HandleMessageService", (new StringBuilder()).append("Curretn End Date=").append(AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec()).toString());
        if (action != 7) goto _L24; else goto _L23
_L23:
        Log.d("HandleMessageService", "Date Changed.Deleting old Db entries if present");
        Log.printUsageLog("HandleMessageService", "Date Changed.Deleting old Db entries if present");
        activitypointsdatabaseadapter.deleteOldDBEntries(28);
_L26:
        day = activitypointsdatabaseadapter.fetchDayData(AndroidUtils.getAndroidUtils().getCurrentDayEndTimeInSec());
        sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (sharedpreferences == null) goto _L22; else goto _L25
_L25:
        editor = sharedpreferences.edit();
        editor.putString("activity_monitoring_new_key_value", ObjectSerializer.serialize(day));
_L27:
        editor.commit();
_L22:
        Intent intent1 = new Intent(Constants.ACTION_ACTIVITY_MONITORING_UPDATE);
        ToqApplication.getAppContext().sendBroadcast(intent1);
        return;
_L24:
        Log.d("HandleMessageService", "Fetching data as Activity DB got updated");
        Log.printUsageLog("HandleMessageService", "Fetching data in to preference for the current day as Activity DB got updated");
          goto _L26
        ioexception;
        ioexception.printStackTrace();
          goto _L27
_L2:
        Log.e("HandleMessageService", "Intent is null in HandleMessageService:onHandleIntent()");
        return;
        if (true) goto _L5; else goto _L28
_L28:
    }

    public IBinder onBind(Intent intent)
    {
        return null;
    }

    public void onCreate()
    {
        super.onCreate();
        Log.d("HandleMessageService", "OnCreate called");
        HandlerThread handlerthread = new HandlerThread("ServiceStartArguments", 10);
        handlerthread.start();
        mServiceLooper = handlerthread.getLooper();
        mServiceHandler = new ServiceHandler(mServiceLooper);
    }

    public void onDestroy()
    {
        super.onDestroy();
        Log.d("HandleMessageService", "On destroy called");
        if (mServiceLooper != null)
            mServiceLooper.quit();
    }

    public int onStartCommand(Intent intent, int i, int j)
    {
        Log.d("HandleMessageService", "onStartCommand called");
        Message message = mServiceHandler.obtainMessage();
        context = getApplicationContext();
        message.arg1 = j;
        message.obj = intent;
        mServiceHandler.sendMessage(message);
        return super.onStartCommand(intent, i, j);
    }

    static 
    {
        COUNT_WD_CONNECT_ATTEMPT = 0;
        COUNT_EPL_CONNECT_ATTEMPT = 3;
        COUNT_EPR_CONNECT_ATTEMPT = 3;
    }


}
