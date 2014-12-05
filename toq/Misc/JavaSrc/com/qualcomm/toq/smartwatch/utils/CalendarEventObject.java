// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import java.util.Date;

public class CalendarEventObject
{

    private String eventDescription;
    private Date eventEndDate;
    private long eventID;
    private String eventLocation;
    private Date eventStartDate;
    private String eventTitle;
    private long reminderTime;


    public CalendarEventObject(String s, String s1, String s2, Date date, Date date1, long l)
    {
        eventTitle = s;
        eventLocation = s1;
        eventStartDate = date;
        eventEndDate = date1;
        eventDescription = s2;
        eventID = l;
        reminderTime = 0L;
    }

    public String getEventDescription()
    {
        return eventDescription;
    }

    public Date getEventEndDate()
    {
        return eventEndDate;
    }

    public long getEventID()
    {
        return eventID;
    }

    public String getEventLocation()
    {
        return eventLocation;
    }

    public Date getEventStartDate()
    {
        return eventStartDate;
    }

    public String getEventTitle()
    {
        return eventTitle;
    }

    public long getReminderTime()
    {
        return reminderTime;
    }

    public void setEventDescription(String s)
    {
        eventDescription = s;
    }

    public void setReminderTime(long l)
    {
        reminderTime = l;
    }
}
