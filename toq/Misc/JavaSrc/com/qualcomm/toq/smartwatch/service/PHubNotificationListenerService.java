// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service;

import android.app.Notification;
import android.service.notification.NotificationListenerService;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.notification.NotificationHandler;
import java.util.HashSet;
import java.util.Set;

public class PHubNotificationListenerService extends NotificationListenerService
{


    private String[] getCurrentPackageNames()
    {
        StatusBarNotification astatusbarnotification[] = getActiveNotifications();
        if (astatusbarnotification == null)
            return null;
        HashSet hashset = new HashSet();
        for (int i = 0; i < astatusbarnotification.length; i++)
        {
            String s = astatusbarnotification[i].getPackageName();
            if (s != null)
                hashset.add(s);
        }

        return (String[])hashset.toArray(new String[hashset.size()]);
    }

    public void onCreate()
    {
        super.onCreate();
        Log.v("NotificationHandler", "PHubNotificationListenerService.onCreate");
    }

    public void onNotificationPosted(StatusBarNotification statusbarnotification)
    {
        String s = statusbarnotification.getPackageName();
        if (TextUtils.isEmpty(s))
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("PHubNotificationListenerService.onNotificationPosted ignoring, spurious sbn with no package, sbn: ").append(statusbarnotification).toString());
            return;
        }
        Notification notification = statusbarnotification.getNotification();
        if (notification == null)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("PHubNotificationListenerService.onNotificationPosted ignoring, notification is null, package: ").append(s).toString());
            return;
        }
        String s1 = "";
        if (notification.tickerText != null)
            s1 = notification.tickerText.toString().replaceAll("^\\[|\\]$", "");
        NotificationHandler.getInstance().onAndroidNotificationPosted(s, s1, notification, getCurrentPackageNames());
    }

    public void onNotificationRemoved(StatusBarNotification statusbarnotification)
    {
        String s = statusbarnotification.getPackageName();
        if (TextUtils.isEmpty(s))
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("PHubNotificationListenerService.onNotificationRemoved ignoring, spurious sbn with no package, sbn: ").append(statusbarnotification).toString());
            return;
        }
        Notification notification = statusbarnotification.getNotification();
        if (notification == null)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("PHubNotificationListenerService.onNotificationRemoved ignoring, notification is null, package: ").append(s).toString());
            return;
        } else
        {
            NotificationHandler.getInstance().onAndroidNotificationRemoved(s, notification, getCurrentPackageNames());
            return;
        }
    }
}
