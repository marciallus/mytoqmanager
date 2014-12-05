// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.activitytracker;

import java.io.Serializable;
import java.util.ArrayList;

public class Week
    implements Serializable
{

    private static final long serialVersionUID = 0x6bedef6308381288L;
    private ArrayList dayDataList;

    public Week()
    {
        dayDataList = new ArrayList();
    }

    public ArrayList getDayDataList()
    {
        return dayDataList;
    }

    public void setDayDataList(ArrayList arraylist)
    {
        dayDataList = arraylist;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Week Data --").append(dayDataList.toString()).toString();
    }
}
