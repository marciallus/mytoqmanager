// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.text.*;
import java.util.Date;
import java.util.TimeZone;
import org.apache.log4j.Layout;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.helpers:
//            RelativeTimeDateFormat, AbsoluteTimeDateFormat, DateTimeDateFormat, ISO8601DateFormat

public abstract class DateLayout extends Layout
{

    public static final String DATE_FORMAT_OPTION = "DateFormat";
    public static final String NULL_DATE_FORMAT = "NULL";
    public static final String RELATIVE_TIME_DATE_FORMAT = "RELATIVE";
    public static final String TIMEZONE_OPTION = "TimeZone";
    protected Date date;
    protected DateFormat dateFormat;
    private String dateFormatOption;
    protected FieldPosition pos;
    private String timeZoneID;

    public DateLayout()
    {
        pos = new FieldPosition(0);
        date = new Date();
    }

    public void activateOptions()
    {
        setDateFormat(dateFormatOption);
        if (timeZoneID != null && dateFormat != null)
            dateFormat.setTimeZone(TimeZone.getTimeZone(timeZoneID));
    }

    public void dateFormat(StringBuffer stringbuffer, LoggingEvent loggingevent)
    {
        if (dateFormat != null)
        {
            date.setTime(loggingevent.timeStamp);
            dateFormat.format(date, stringbuffer, pos);
            stringbuffer.append(' ');
        }
    }

    public String getDateFormat()
    {
        return dateFormatOption;
    }

    public String[] getOptionStrings()
    {
        return (new String[] {
            "DateFormat", "TimeZone"
        });
    }

    public String getTimeZone()
    {
        return timeZoneID;
    }

    public void setDateFormat(String s)
    {
        if (s != null)
            dateFormatOption = s;
        setDateFormat(dateFormatOption, TimeZone.getDefault());
    }

    public void setDateFormat(String s, TimeZone timezone)
    {
        if (s == null)
        {
            dateFormat = null;
            return;
        }
        if (s.equalsIgnoreCase("NULL"))
        {
            dateFormat = null;
            return;
        }
        if (s.equalsIgnoreCase("RELATIVE"))
        {
            dateFormat = new RelativeTimeDateFormat();
            return;
        }
        if (s.equalsIgnoreCase("ABSOLUTE"))
        {
            dateFormat = new AbsoluteTimeDateFormat(timezone);
            return;
        }
        if (s.equalsIgnoreCase("DATE"))
        {
            dateFormat = new DateTimeDateFormat(timezone);
            return;
        }
        if (s.equalsIgnoreCase("ISO8601"))
        {
            dateFormat = new ISO8601DateFormat(timezone);
            return;
        } else
        {
            dateFormat = new SimpleDateFormat(s);
            dateFormat.setTimeZone(timezone);
            return;
        }
    }

    public void setDateFormat(DateFormat dateformat, TimeZone timezone)
    {
        dateFormat = dateformat;
        dateFormat.setTimeZone(timezone);
    }

    public void setOption(String s, String s1)
    {
        if (s.equalsIgnoreCase("DateFormat"))
            dateFormatOption = s1.toUpperCase();
        else
        if (s.equalsIgnoreCase("TimeZone"))
        {
            timeZoneID = s1;
            return;
        }
    }

    public void setTimeZone(String s)
    {
        timeZoneID = s;
    }
}
