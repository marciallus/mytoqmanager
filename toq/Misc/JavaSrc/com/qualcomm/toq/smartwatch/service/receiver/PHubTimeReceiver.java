// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service.receiver;

import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.factory.ConnectionFactory;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.controller.*;
import com.qualcomm.toq.smartwatch.service.PHubService;
import java.util.*;
import org.json.JSONObject;

public class PHubTimeReceiver extends BroadcastReceiver
{

    private static final String TAG = "PHubTimeReceiver";
    public Timer counter;


    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals((new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.service.receiver.PHubTimeReceiver").toString()))
        {
            Log.d("PHubTimeReceiver", "Intent com.qualcomm.toq.smartwatch.service.receiver.PHubTimeReceiver called.");
            Calendar calendar = Calendar.getInstance();
            Log.d("PHubTimeReceiver", (new StringBuilder()).append("Current date = ").append(calendar).toString());
            Log.d("PHubTimeReceiver", (new StringBuilder()).append("currentDate.getHours() = ").append(calendar.get(11)).toString());
            Log.d("PHubTimeReceiver", (new StringBuilder()).append("currentDate.getMinutes() = ").append(calendar.get(12)).toString());
            if (calendar.get(11) == 0 && calendar.get(12) == 0)
            {
                Log.d("PHubTimeReceiver", "Day Completed and New Day started!");
                JSONObject jsonobject = new JSONObject();
                long l = System.currentTimeMillis();
                long l1 = l / 1000L;
                Calendar calendar1 = Calendar.getInstance();
                TimeZone timezone = calendar1.getTimeZone();
                int i = timezone.getRawOffset() / 1000;
                Log.d("PHubTimeReceiver", (new StringBuilder()).append("timezone Offset Raw = ").append(i).toString());
                int j = timezone.getOffset(l) / 1000;
                Log.d("PHubTimeReceiver", (new StringBuilder()).append("timezone Offset including daylight savings time  = ").append(j).toString());
                java.util.Date date = calendar1.getTime();
                int k;
                if (timezone.useDaylightTime())
                {
                    if (timezone.inDaylightTime(date))
                        k = 1;
                    else
                        k = 0;
                } else
                {
                    k = 0;
                }
                try
                {
                    JSONObject jsonobject1 = new JSONObject();
                    jsonobject1.put("epoch_time", l1);
                    jsonobject1.put("dst", k);
                    jsonobject1.put("time_zone", i);
                    jsonobject.put("time", jsonobject1);
                }
                catch (Exception exception)
                {
                    Log.e("PHubTimeReceiver", (new StringBuilder()).append("Exception ocured in PHubTimeReceiver").append(exception).toString());
                }
                Log.d("PHubTimeReceiver", (new StringBuilder()).append("TimeUpdateInd: ").append(jsonobject).toString());
                if (ConnectionFactory.getConnectionFactory().getEndPoint(0) != null)
                {
                    PHubService phubservice = PHubService.getPHubService();
                    if (phubservice != null)
                        phubservice.sendDataToController(ConnectionFactory.getConnectionFactory().getEndPoint(0).getType(), 5, 6, jsonobject, 32768, ConnectionFactory.getConnectionFactory().createTransactionID());
                }
                if (ConnectionFactory.getConnectionFactory() != null && ConnectionFactory.getConnectionFactory().getContext() != null)
                {
                    if (AgendaController.getAgendaController() != null)
                    {
                        Log.d("PHubTimeReceiver", "storeUpdateAgendaToFile() called from PHubServiceReceiver");
                        AgendaController.getAgendaController().storeUpdateAgendaToFile(ConnectionFactory.getConnectionFactory().getContext());
                    }
                    if (CommHubController.getCommHubController() != null)
                    {
                        Log.d("PHubTimeReceiver", "storeCommHubToFile() called from PHubServiceReceiver");
                        CommHubController.getCommHubController().storeCommHubToFile();
                    }
                    SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("activity_monitoring_pref", 0);
                    if (sharedpreferences != null)
                    {
                        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                        editor.putInt("activity_final_points", 0);
                        editor.commit();
                        Intent intent1 = new Intent(Constants.ACTION_SMARTWATCH_HANDLE_MESSAGE_SERVICE);
                        intent1.putExtra("condition", 6);
                        intent1.putExtra("action", 7);
                        context.startService(intent1);
                    }
                    if (ActivityMonitoringController.getActivityMonitoringController() != null)
                    {
                        Log.d("PHubTimeReceiver", "sendGetActivityInd() called from PHubTimeReceiver");
                        Log.printUsageLog("PHubTimeReceiver", "sendGetActivityInd() called from PHubTimeReceiver ");
                        ActivityMonitoringController.getActivityMonitoringController().sendActivityUpdateInd();
                    }
                }
            }
        }
    }
}
