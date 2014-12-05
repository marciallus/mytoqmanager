// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.controller;

import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.controller.DefaultController;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.database.ActivityPointsDatabaseAdapter;
import java.util.Date;
import java.util.concurrent.*;
import org.json.JSONArray;
import org.json.JSONObject;

public class ActivityMonitoringController extends DefaultController
{

    private static final String TAG = "ActivityMonitoringController";
    public static final String appName = "ACTIVITY_MONITORING_CONTROLLER";
    private static ActivityMonitoringController mInstance = null;
    private ScheduledExecutorService activityExecutorService;
    private ActivityPointsDatabaseAdapter activityPointsDatabaseAdapter;
    private SharedPreferences prefs;

    private ActivityMonitoringController()
    {
        activityExecutorService = null;
        activityPointsDatabaseAdapter = null;
        prefs = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        if (activityPointsDatabaseAdapter == null)
        {
            Log.d("ActivityMonitoringController", "ActivityPointsDatabaseAdapter open() from ActivityMonitoringController as activityPointsDatabaseAdapter is NULL");
            activityPointsDatabaseAdapter = ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext());
            activityPointsDatabaseAdapter.open();
            if (!activityPointsDatabaseAdapter.isDBOpen())
            {
                activityPointsDatabaseAdapter.close();
                activityPointsDatabaseAdapter.open();
            }
        }
    }

    public static ActivityMonitoringController getActivityMonitoringController()
    {
        if (mInstance == null)
            mInstance = new ActivityMonitoringController();
        return mInstance;
    }

    public static void setController(Object obj)
    {
        mInstance = null;
    }

    public void clearActivityData()
    {
        if (prefs == null)
            break MISSING_BLOCK_LABEL_184;
        ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext()).dropDB();
        ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext()).close();
        android.content.SharedPreferences.Editor editor = prefs.edit();
        editor.remove("activity_final_points");
        editor.remove("activity_last_received_final_points");
        editor.remove("activity_reset_diff_points");
        editor.remove("activity_last_epoc_time");
        editor.remove("activity_last_received_points");
        editor.remove("activity_monitoring_offset_points");
        editor.remove("activity_monitoring_offset_final_points");
        editor.remove("activity_monitoring_new_key_value");
        editor.remove("activity_monitoring_key_value");
        editor.remove("activity_monitoring_ui_value");
        editor.commit();
        sendResetActivityCountReq();
        Log.d("ActivityMonitoringController", "Intent send to start HandleMessage Service on clear data");
        Intent intent = new Intent(Constants.ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE);
        intent.putExtra("condition", 6);
        intent.putExtra("action", 8);
        ToqApplication.getAppContext().startService(intent);
        return;
        Exception exception;
        exception;
        Log.e("ActivityMonitoringController", "Exception in clearData");
        exception.printStackTrace();
        return;
    }

    public void handleConnHandlerMessage(int i, int j, Object obj, int k, int l)
    {
        j;
        JVM INSTR lookupswitch 2: default 28
    //                   0: 29
    //                   16385: 835;
           goto _L1 _L2 _L3
_L1:
        return;
_L2:
        JSONObject jsonobject;
        Log.d("ActivityMonitoringController", (new StringBuilder()).append("ActivityUpdateReq received: ").append(obj.toString()).toString());
        Log.printUsageLog("ActivityMonitoringController", (new StringBuilder()).append("ActivityUpdateReq received: ").append(obj.toString()).toString());
        if (activityPointsDatabaseAdapter == null)
            activityPointsDatabaseAdapter = ActivityPointsDatabaseAdapter.getActivityPointsDatabaseAdapter(ToqApplication.getAppContext());
        jsonobject = (JSONObject)obj;
        android.content.SharedPreferences.Editor editor;
        if (prefs == null)
            prefs = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
        editor = prefs.edit();
        if (!jsonobject.has("activity")) goto _L5; else goto _L4
_L4:
        JSONArray jsonarray = jsonobject.getJSONArray("activity");
        if (jsonarray == null) goto _L7; else goto _L6
_L6:
        if (jsonarray.length() == 0) goto _L7; else goto _L8
_L8:
        int l1 = 0;
_L21:
        if (l1 >= jsonarray.length()) goto _L10; else goto _L9
_L9:
        JSONObject jsonobject3;
        jsonobject3 = (JSONObject)jsonarray.get(l1);
        Log.d("ActivityMonitoringController", (new StringBuilder()).append("Activity Monitoring Key Value = ").append(jsonobject3.toString()).toString());
        if (!jsonobject3.has("et") || !jsonobject3.has("p")) goto _L12; else goto _L11
_L11:
        if (jsonobject3.getInt("p") < 0) goto _L14; else goto _L13
_L13:
        activityPointsDatabaseAdapter.insertActivitydata(jsonobject3.getLong("et"), jsonobject3.getInt("p"));
          goto _L12
_L14:
        try
        {
            Log.e("ActivityMonitoringController", (new StringBuilder()).append("WD sends negative value for epochtime : ").append(jsonobject3.getLong("et")).toString());
            Log.printUsageLog("ActivityMonitoringController", (new StringBuilder()).append("WD sends negative value for epochtime : ").append(jsonobject3.getLong("et")).toString());
        }
        catch (Exception exception)
        {
            Log.e("ActivityMonitoringController", (new StringBuilder()).append("Error in ActivityUpdateReq parsing: ").append(exception.toString()).toString());
            exception.printStackTrace();
            Log.printUsageLog("ActivityMonitoringController", "Error in ActivityUpdateReq parsing: ");
            return;
        }
          goto _L12
_L7:
        Log.e("ActivityMonitoringController", "ActivityUpdateReq activity key array is null or empty");
_L10:
        if (!jsonobject.has("current-count")) goto _L16; else goto _L15
_L15:
        int i1;
        i1 = jsonobject.getInt("current-count");
        Log.d("ActivityMonitoringController", (new StringBuilder()).append("currentRunningCount = ").append(i1).toString());
        if (i1 >= 0) goto _L18; else goto _L17
_L17:
        Log.e("ActivityMonitoringController", "WD sends negative value discard the message");
        Log.printUsageLog("ActivityMonitoringController", "WD sends negative value discard the message");
        return;
_L5:
        Log.e("ActivityMonitoringController", "ActivityUpdateReq doesn't contain activity key");
          goto _L10
_L18:
        int j1 = prefs.getInt("activity_monitoring_offset_points", 0);
        int k1 = i1 + j1;
        Log.d("ActivityMonitoringController", (new StringBuilder()).append("Current counter value = ").append(k1).toString());
        Log.printUsageLog("ActivityMonitoringController", (new StringBuilder()).append("Offset Points in Preference= ").append(j1).append("CurrentRunningCount from WD= ").append(i1).append(" Final Points = ").append(k1).toString());
        editor.putInt("activity_final_points", k1);
        editor.commit();
        JSONObject jsonobject2 = new JSONObject();
        jsonobject2.put("result", 0);
        jsonobject2.put("description", "Updated Activity data successfully");
        sendControllerMessageData(0, 30, 31, jsonobject2, 16384, k);
        Log.d("ActivityMonitoringController", (new StringBuilder()).append("Send success ActivityUpdateResp: ").append(jsonobject2.toString()).toString());
        Log.printUsageLog("ActivityMonitoringController", (new StringBuilder()).append("Send success ActivityUpdateResp: ").append(jsonobject2.toString()).toString());
_L19:
        Log.d("ActivityMonitoringController", "Intent send to start HandleMessage Service");
        Intent intent = new Intent(Constants.ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE);
        intent.putExtra("condition", 6);
        intent.putExtra("action", 8);
        ToqApplication.getAppContext().startService(intent);
        return;
_L16:
        JSONObject jsonobject1 = new JSONObject();
        jsonobject1.put("result", 1);
        jsonobject1.put("description", "Error: Activity data doesn't contain current-count value");
        sendControllerMessageData(0, 30, 31, jsonobject1, 16384, k);
        Log.d("ActivityMonitoringController", (new StringBuilder()).append("Send failure ActivityUpdateResp: ").append(jsonobject1.toString()).toString());
        Log.printUsageLog("ActivityMonitoringController", (new StringBuilder()).append("Send failure ActivityUpdateResp: ").append(jsonobject1.toString()).toString());
          goto _L19
_L3:
        Log.d("ActivityMonitoringController", (new StringBuilder()).append("ResetActivityCountResp received: ").append(obj.toString()).toString());
        return;
_L12:
        l1++;
        if (true) goto _L21; else goto _L20
_L20:
    }

    public void initiateActivityOperation()
    {
        Log.d("ActivityMonitoringController", "initiateActivityOperation() called");
        try
        {
            if (activityExecutorService != null && !activityExecutorService.isShutdown())
            {
                activityExecutorService.shutdownNow();
                activityExecutorService = null;
            }
            activityExecutorService = Executors.newScheduledThreadPool(1);
            activityExecutorService.scheduleAtFixedRate(new Runnable() {

                final ActivityMonitoringController this$0;

                public void run()
                {
                    Log.d("ActivityMonitoringController", (new StringBuilder()).append("sendGetActivityInd() called from ExecutorService").append(new Date()).toString());
                    sendActivityUpdateInd();
                }

            
            {
                this$0 = ActivityMonitoringController.this;
                super();
            }
            }
, 1L, 1L, TimeUnit.HOURS);
            Log.d("ActivityMonitoringController", "initiateActivityOperation  activityExecutorService created for 1 hour");
            return;
        }
        catch (Exception exception)
        {
            Log.e("ActivityMonitoringController", (new StringBuilder()).append("Exception in initiateActivityOperation(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

    public void sendActivityUpdateInd()
    {
        Log.d("ActivityMonitoringController", "sendActivityUpdateInd() called");
        sendControllerMessageData(0, 30, 31, new JSONObject(), 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
    }

    public void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1)
    {
        if (ConnectionFactory.getConnectionFactory().getEndPointVersionState(0) == 1)
            super.sendControllerMessageData(i, j, k, obj, l, i1);
    }

    public void sendResetActivityCountReq()
    {
        Log.d("ActivityMonitoringController", "sendResetActivityCountReq() called");
        sendControllerMessageData(0, 30, 31, new JSONObject(), 1, ConnectionFactory.getConnectionFactory().createTransactionID());
    }

    public void stopActivityOperation()
    {
        Log.d("ActivityMonitoringController", "stopActivityOperation() called");
        try
        {
            if (activityExecutorService != null && !activityExecutorService.isShutdown())
            {
                activityExecutorService.shutdownNow();
                activityExecutorService = null;
            }
            return;
        }
        catch (Exception exception)
        {
            Log.e("ActivityMonitoringController", (new StringBuilder()).append("Exception in stopActivityOperation(): ").append(exception.toString()).toString());
            exception.printStackTrace();
            return;
        }
    }

}
