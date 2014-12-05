// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.activitytracker;

import java.io.Serializable;
import java.util.ArrayList;

public class Month
    implements Serializable
{

    private static final long serialVersionUID = 0x8938daa053bf200cL;
    private ArrayList weekDataList;

    public Month()
    {
        weekDataList = new ArrayList();
    }

    public ArrayList getWeekDataList()
    {
        return weekDataList;
    }

    public void setWeekDataList(ArrayList arraylist)
    {
        weekDataList = arraylist;
    }

    public String toString()
    {
        return super.toString();
    }
}
