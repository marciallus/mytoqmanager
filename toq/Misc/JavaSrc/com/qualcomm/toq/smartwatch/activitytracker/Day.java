// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.activitytracker;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.qualcomm.toq.smartwatch.activitytracker:
//            Hour

public class Day
    implements Serializable
{

    private static final long serialVersionUID = 0xc5112549b5937aeaL;
    private ArrayList hourDataList;
    private int totalPoints;

    public Day()
    {
        hourDataList = new ArrayList();
    }

    public ArrayList getHourDataList()
    {
        return hourDataList;
    }

    public int getTotalPoints()
    {
        totalPoints = 0;
        for (Iterator iterator = hourDataList.iterator(); iterator.hasNext();)
        {
            Hour hour = (Hour)iterator.next();
            totalPoints = (int)((long)totalPoints + hour.getPoints());
        }

        return totalPoints;
    }

    public void setHourDataList(ArrayList arraylist)
    {
        hourDataList = arraylist;
    }

    public void setTotalPoints(int i)
    {
        totalPoints = i;
    }

    public String toString()
    {
        return (new StringBuilder()).append("\nDay-----").append(hourDataList.toString()).toString();
    }
}
