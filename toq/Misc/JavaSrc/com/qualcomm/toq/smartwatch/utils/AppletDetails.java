// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.qualcomm.toq.ToqApplication;

public class AppletDetails
{

    private Drawable appIcon;
    private String appName;
    private boolean isInstalled;
    private String packageName;

    public AppletDetails(String s, boolean flag)
    {
        packageName = s;
        isInstalled = flag;
        try
        {
            PackageManager packagemanager = ToqApplication.getAppContext().getPackageManager();
            android.content.pm.ApplicationInfo applicationinfo = packagemanager.getApplicationInfo(s, 0);
            appName = packagemanager.getApplicationLabel(applicationinfo).toString();
            appIcon = packagemanager.getApplicationIcon(applicationinfo);
            return;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return;
        }
    }

    public Drawable getAppIcon()
    {
        return appIcon;
    }

    public String getAppName()
    {
        return appName;
    }

    public String getPackageName()
    {
        return packageName;
    }

    public boolean isInstalled()
    {
        return isInstalled;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[").append("packageName=").append(packageName).append(",").append("appName=").append(appName).append(",").append("isInstalled=").append(isInstalled).append("]").toString();
    }
}
