// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import com.qualcomm.toq.base.utils.Log;

public class NotificationInfo
{

    private String detail;
    private String time;
    private String title;


    public String getDetail()
    {
        return detail;
    }

    public String getTime()
    {
        return time;
    }

    public String getTitle()
    {
        return title;
    }

    public void setDetail(String s)
    {
        detail = s;
    }

    public void setTime(String s)
    {
        time = s;
    }

    public void setTitle(String s)
    {
        title = s;
    }

    public String toString()
    {
        String s = (new StringBuilder()).append("NotifyCard{title=\"").append(title).append("\",time=\"").append(time).append("\",detail=\"").append(detail).append("\",}").toString();
        Log.i("NotificationInfo", (new StringBuilder()).append("NotifyCard=").append(s).toString());
        return s;
    }
}
