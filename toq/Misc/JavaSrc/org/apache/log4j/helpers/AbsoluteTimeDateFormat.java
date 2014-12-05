// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.text.*;
import java.util.*;

public class AbsoluteTimeDateFormat extends DateFormat
{

    public static final String ABS_TIME_DATE_FORMAT = "ABSOLUTE";
    public static final String DATE_AND_TIME_DATE_FORMAT = "DATE";
    public static final String ISO8601_DATE_FORMAT = "ISO8601";
    private static long previousTime = 0L;
    private static char previousTimeWithoutMillis[] = new char[9];
    private static final long serialVersionUID = 0xfa9a8136ad66a872L;

    public AbsoluteTimeDateFormat()
    {
        setCalendar(Calendar.getInstance());
    }

    public AbsoluteTimeDateFormat(TimeZone timezone)
    {
        setCalendar(Calendar.getInstance(timezone));
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        long l = date.getTime();
        int i = (int)(l % 1000L);
        if (l - (long)i == previousTime && previousTimeWithoutMillis[0] != 0)
        {
            stringbuffer.append(previousTimeWithoutMillis);
        } else
        {
            calendar.setTime(date);
            int j = stringbuffer.length();
            int k = calendar.get(11);
            if (k < 10)
                stringbuffer.append('0');
            stringbuffer.append(k);
            stringbuffer.append(':');
            int i1 = calendar.get(12);
            if (i1 < 10)
                stringbuffer.append('0');
            stringbuffer.append(i1);
            stringbuffer.append(':');
            int j1 = calendar.get(13);
            if (j1 < 10)
                stringbuffer.append('0');
            stringbuffer.append(j1);
            stringbuffer.append(',');
            stringbuffer.getChars(j, stringbuffer.length(), previousTimeWithoutMillis, 0);
            previousTime = l - (long)i;
        }
        if (i < 100)
            stringbuffer.append('0');
        if (i < 10)
            stringbuffer.append('0');
        stringbuffer.append(i);
        return stringbuffer;
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        return null;
    }

}
