// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import java.io.Serializable;

public class ClockInfo
    implements Serializable
{

    private static final long serialVersionUID = 0x80706ce5c1565ec5L;
    private String appZipName;
    private String assetFileName;
    private String clockType;
    private String displayName;
    private String iconName;
    private String jsonName;
    private String packageName;


    public String getAppZipName()
    {
        return appZipName;
    }

    public String getAssetFileName()
    {
        return assetFileName;
    }

    public String getClockType()
    {
        return clockType;
    }

    public String getDisplayName()
    {
        return displayName;
    }

    public String getIconName()
    {
        return iconName;
    }

    public String getJsonName()
    {
        return jsonName;
    }

    public String getPackageName()
    {
        return packageName;
    }

    public void setAppZipName(String s)
    {
        appZipName = s;
    }

    public void setAssetFileName(String s)
    {
        assetFileName = s;
    }

    public void setClockType(String s)
    {
        clockType = s;
    }

    public void setDisplayName(String s)
    {
        displayName = s;
    }

    public void setIconName(String s)
    {
        iconName = s;
    }

    public void setJsonName(String s)
    {
        jsonName = s;
    }

    public void setPackageName(String s)
    {
        packageName = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("display name=").append(displayName).append(", package name=").append(packageName).append(". asset=").append(appZipName).append(" , iconName=").append(iconName).append("clocktype= ").append(clockType).append(" json Name: ").append(jsonName).toString();
    }
}
