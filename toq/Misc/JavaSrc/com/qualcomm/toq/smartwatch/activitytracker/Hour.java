// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.activitytracker;

import java.io.Serializable;

public class Hour
    implements Serializable
{

    private static final long serialVersionUID = 0xada27c0bad286a89L;
    private String currentHour;
    private long epocTime;
    private long points;


    public String getCurrentHour()
    {
        return currentHour;
    }

    public long getEpocTime()
    {
        return epocTime;
    }

    public long getPoints()
    {
        return points;
    }

    public void setCurrentHour(String s)
    {
        currentHour = s;
    }

    public void setEpocTime(long l)
    {
        epocTime = l;
    }

    public void setPoints(long l)
    {
        points = l;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Hour Data -- Epoch Time :").append(epocTime).append(", Points :").append(points).append(", Current Hour").append(currentHour).toString();
    }
}
