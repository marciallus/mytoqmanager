// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.notification;

import android.app.PendingIntent;
import android.content.*;
import android.content.res.Resources;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.base.utils.PhubBluetoothDeviceBondInfo;
import com.qualcomm.toq.smartwatch.utils.ToqNotificationBuilder;

public class ToqNotificationManager
{

    private static final String TAG = "ToqNotificationManager";
    private static ToqNotificationManager inst;

    private ToqNotificationManager()
    {
    }

    public static ToqNotificationManager getInstance()
    {
        com/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
        JVM INSTR monitorenter ;
        ToqNotificationManager toqnotificationmanager;
        if (inst == null)
            inst = new ToqNotificationManager();
        toqnotificationmanager = inst;
        com/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
        JVM INSTR monitorexit ;
        return toqnotificationmanager;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isToqNotificationVisible(String s, int i)
    {
        Context context = ToqApplication.getAppContext();
        Intent intent = new Intent(s);
        intent.setClassName(context, "com.qualcomm.toq.smartwatch.ui.receiver.ToqNotificationReceiver");
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, i, intent, 0x20000000);
        Log.d("ToqNotificationManager", (new StringBuilder()).append(" Pending intent for action ").append(s).append(" is ").append(pendingintent).toString());
        return pendingintent != null;
    }

    public void showWatchBTDisconnectNotification()
    {
        Context context = ToqApplication.getAppContext();
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("app_pref", 0);
        boolean flag = false;
        if (sharedpreferences != null)
            flag = sharedpreferences.getBoolean("firstTime", true);
        if (PhubBluetoothDeviceBondInfo.getInstance().isWDBonded() && !flag)
        {
            ToqNotificationBuilder toqnotificationbuilder = new ToqNotificationBuilder(context);
            if (toqnotificationbuilder != null)
            {
                Resources resources = context.getResources();
                toqnotificationbuilder.initToqNotificationBuilder(resources.getString(0x7f0a025c), System.currentTimeMillis(), 0x7f020139, false, resources.getString(0x7f0a025d), resources.getString(0x7f0a0006));
                toqnotificationbuilder.setLights(0xff00ff00, 300, 1000);
                Intent intent = new Intent("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK");
                intent.setClassName(context, "com.qualcomm.toq.smartwatch.ui.receiver.ToqNotificationReceiver");
                intent.putExtra("notification_id_key", 10);
                toqnotificationbuilder.setContentBroadcastIntent(intent, 10, 0x10000000);
                Intent intent1 = new Intent("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE");
                intent1.setClassName(context, "com.qualcomm.toq.smartwatch.ui.receiver.ToqNotificationReceiver");
                intent1.putExtra("notification_id_key", 10);
                toqnotificationbuilder.setDeleteBroadcastIntent(intent1, 10, 0x10000000);
                toqnotificationbuilder.notifyToqNotification(10);
            }
        }
    }
}
