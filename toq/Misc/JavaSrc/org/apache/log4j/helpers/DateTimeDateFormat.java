// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.text.*;
import java.util.*;

// Referenced classes of package org.apache.log4j.helpers:
//            AbsoluteTimeDateFormat

public class DateTimeDateFormat extends AbsoluteTimeDateFormat
{

    private static final long serialVersionUID = 0x4cfd2b294307279bL;
    String shortMonths[];

    public DateTimeDateFormat()
    {
        shortMonths = (new DateFormatSymbols()).getShortMonths();
    }

    public DateTimeDateFormat(TimeZone timezone)
    {
        this();
        setCalendar(Calendar.getInstance(timezone));
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        calendar.setTime(date);
        int i = calendar.get(5);
        if (i < 10)
            stringbuffer.append('0');
        stringbuffer.append(i);
        stringbuffer.append(' ');
        stringbuffer.append(shortMonths[calendar.get(2)]);
        stringbuffer.append(' ');
        stringbuffer.append(calendar.get(1));
        stringbuffer.append(' ');
        return super.format(date, stringbuffer, fieldposition);
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        return null;
    }
}
