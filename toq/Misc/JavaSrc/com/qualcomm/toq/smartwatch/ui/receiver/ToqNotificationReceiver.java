// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.ui.receiver;

import android.app.PendingIntent;
import android.content.*;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.ToqNotificationBuilder;

public class ToqNotificationReceiver extends BroadcastReceiver
{

    private static final String TAG = "ToqNotificationReceiver";


    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getAction();
        Log.d("ToqNotificationReceiver", (new StringBuilder()).append(" ToqNotificationReceiver : onReceive called ******* action received : ").append(s).toString());
        int i = intent.getIntExtra("notification_id_key", 0);
        PendingIntent.getBroadcast(context, i, intent, 0).cancel();
        if (s.equals("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK"))
        {
            if (i == 10)
            {
                (new ToqNotificationBuilder(ToqApplication.getAppContext())).cancelToqNotification(i);
                Intent intent1 = new Intent();
                intent1.setClassName(context, "com.qualcomm.toq.smartwatch.ui.activity.MainActivity");
                intent1.setFlags(0x14000000);
                context.startActivity(intent1);
            }
        } else
        if (s.equals("com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE"))
            return;
    }
}
