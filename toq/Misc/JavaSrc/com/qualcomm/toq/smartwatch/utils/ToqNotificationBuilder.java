// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.qualcomm.toq.base.utils.Log;

public class ToqNotificationBuilder extends android.support.v4.app.NotificationCompat.Builder
{

    private static final String TAG = "ToqNotificationBuilder";
    private Context context;
    private NotificationManager toqBuilderNotificationManager;

    public ToqNotificationBuilder(Context context1)
    {
        super(context1);
        context = context1;
        toqBuilderNotificationManager = (NotificationManager)context1.getSystemService("notification");
    }

    public void cancelToqNotification(int i)
    {
        if (toqBuilderNotificationManager != null)
            toqBuilderNotificationManager.cancel(i);
    }

    public void initToqNotificationBuilder(CharSequence charsequence, long l, int i, boolean flag, String s, String s1)
    {
        setTicker(charsequence);
        setWhen(l);
        setSmallIcon(i);
        setAutoCancel(flag);
        setContentText(s);
        setContentTitle(s1);
    }

    public void notifyToqNotification(int i)
    {
        if (toqBuilderNotificationManager != null)
            toqBuilderNotificationManager.notify(i, build());
    }

    public void setActivityLauncherIntent(Intent intent, int i, int j)
    {
        PendingIntent pendingintent = PendingIntent.getActivity(context, i, intent, j);
        if (pendingintent != null)
            setContentIntent(pendingintent);
    }

    public void setContentBroadcastIntent(Intent intent, int i, int j)
    {
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, i, intent, j);
        if (pendingintent != null)
        {
            setContentIntent(pendingintent);
            return;
        } else
        {
            Log.e("ToqNotificationBuilder", "Pending Intent for content is null because of flag set is PendingIntent.FLAG_NO_CREATE ");
            return;
        }
    }

    public void setDeleteBroadcastIntent(Intent intent, int i, int j)
    {
        PendingIntent pendingintent = PendingIntent.getBroadcast(context, i, intent, j);
        if (pendingintent != null)
        {
            setDeleteIntent(pendingintent);
            return;
        } else
        {
            Log.e("ToqNotificationBuilder", "Pending Intent for delete is null because of flag set is PendingIntent.FLAG_NO_CREATE ");
            return;
        }
    }

    public android.support.v4.app.NotificationCompat.Builder setLights(int i, int j, int k)
    {
        return super.setLights(i, j, k);
    }
}
