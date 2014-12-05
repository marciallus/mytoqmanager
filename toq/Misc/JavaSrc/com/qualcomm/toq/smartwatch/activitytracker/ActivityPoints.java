// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.activitytracker;


public class ActivityPoints
{

    private long epochTime;
    private int points;


    public long getEpochTime()
    {
        return epochTime;
    }

    public int getPoints()
    {
        return points;
    }

    public void setEpochTime(long l)
    {
        epochTime = l;
    }

    public void setPoints(int i)
    {
        points = i;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Epoc Time : ").append(epochTime).append(" ,Activity Point : ").append(points).toString();
    }
}
