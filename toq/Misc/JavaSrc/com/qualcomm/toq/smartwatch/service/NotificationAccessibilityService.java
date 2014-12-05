// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.service;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.app.Notification;
import android.text.TextUtils;
import android.view.accessibility.AccessibilityEvent;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.notification.NotificationHandler;
import com.qualcomm.toq.smartwatch.notification.NotificationUtils;

public class NotificationAccessibilityService extends AccessibilityService
{


    public void onAccessibilityEvent(AccessibilityEvent accessibilityevent)
    {
        if (android.os.Build.VERSION.SDK_INT >= 18 && NotificationUtils.isNotificationListenerServiceEnabled(getApplicationContext()))
        {
            Log.w("NotificationHandler", "NotificationAccessibilityService.onAccessibilityEvent notification listener service is enabled - don't handle here - abort");
            return;
        }
        String s = accessibilityevent.getPackageName().toString();
        if (TextUtils.isEmpty(s))
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationAccessibilityService.onAccessibilityEvent ignoring, spurious event with no package, event: ").append(accessibilityevent.getEventType()).toString());
            return;
        }
        if (accessibilityevent.getEventType() != 64)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationAccessibilityService.onAccessibilityEvent ignoring, not notification, event: ").append(accessibilityevent.getEventType()).append(", package: ").append(s).toString());
            return;
        }
        android.os.Parcelable parcelable = accessibilityevent.getParcelableData();
        if (parcelable != null && (parcelable instanceof Notification))
        {
            Notification notification = (Notification)parcelable;
            String s1 = "";
            if (accessibilityevent.getText() != null)
                s1 = accessibilityevent.getText().toString().replaceAll("^\\[|\\]$", "");
            NotificationHandler.getInstance().onAndroidNotificationPosted(s, s1, notification, null);
            return;
        } else
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationAccessibilityService.onAccessibilityEvent ignoring, no notification, package: ").append(s).append(", parcelable: ").append(parcelable).toString());
            return;
        }
    }

    public void onCreate()
    {
        super.onCreate();
        Log.v("NotificationHandler", "NotificationAccessibilityService.onCreate");
    }

    public void onInterrupt()
    {
        Log.v("NotificationHandler", "NotificationAccessibilityService.onInterrupt");
    }

    protected void onServiceConnected()
    {
        Log.v("NotificationHandler", (new StringBuilder()).append("NotificationAccessibilityService.onServiceConnected - android version: ").append(android.os.Build.VERSION.SDK_INT).toString());
        AccessibilityServiceInfo accessibilityserviceinfo = new AccessibilityServiceInfo();
        accessibilityserviceinfo.eventTypes = 64;
        accessibilityserviceinfo.feedbackType = -1;
        accessibilityserviceinfo.notificationTimeout = 100L;
        setServiceInfo(accessibilityserviceinfo);
    }
}
