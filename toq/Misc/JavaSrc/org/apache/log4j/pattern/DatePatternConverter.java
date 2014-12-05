// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.text.*;
import java.util.Date;
import java.util.TimeZone;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter, CachedDateFormat

public final class DatePatternConverter extends LoggingEventPatternConverter
{
    private static class DefaultZoneDateFormat extends DateFormat
    {

        private static final long serialVersionUID = 1L;
        private final DateFormat dateFormat;

        public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
        {
            dateFormat.setTimeZone(TimeZone.getDefault());
            return dateFormat.format(date, stringbuffer, fieldposition);
        }

        public Date parse(String s, ParsePosition parseposition)
        {
            dateFormat.setTimeZone(TimeZone.getDefault());
            return dateFormat.parse(s, parseposition);
        }

        public DefaultZoneDateFormat(DateFormat dateformat)
        {
            dateFormat = dateformat;
        }
    }


    private static final String ABSOLUTE_FORMAT = "ABSOLUTE";
    private static final String ABSOLUTE_TIME_PATTERN = "HH:mm:ss,SSS";
    private static final String DATE_AND_TIME_FORMAT = "DATE";
    private static final String DATE_AND_TIME_PATTERN = "dd MMM yyyy HH:mm:ss,SSS";
    private static final String ISO8601_FORMAT = "ISO8601";
    private static final String ISO8601_PATTERN = "yyyy-MM-dd HH:mm:ss,SSS";
    private final CachedDateFormat df;

    private DatePatternConverter(String as[])
    {
        String s;
        SimpleDateFormat simpledateformat;
        super("Date", "date");
        String s1;
        int i;
        int j;
        if (as == null || as.length == 0)
            s = null;
        else
            s = as[0];
        if (s == null || s.equalsIgnoreCase("ISO8601"))
            s1 = "yyyy-MM-dd HH:mm:ss,SSS";
        else
        if (s.equalsIgnoreCase("ABSOLUTE"))
            s1 = "HH:mm:ss,SSS";
        else
        if (s.equalsIgnoreCase("DATE"))
            s1 = "dd MMM yyyy HH:mm:ss,SSS";
        else
            s1 = s;
        i = 1000;
        simpledateformat = new SimpleDateFormat(s1);
        j = CachedDateFormat.getMaximumCacheValidity(s1);
        i = j;
_L1:
        IllegalArgumentException illegalargumentexception;
        Object obj;
        if (as != null && as.length > 1)
        {
            simpledateformat.setTimeZone(TimeZone.getTimeZone(as[1]));
            obj = simpledateformat;
        } else
        {
            obj = new DefaultZoneDateFormat(simpledateformat);
        }
        df = new CachedDateFormat(((DateFormat) (obj)), i);
        return;
        illegalargumentexception;
_L2:
        LogLog.warn("Could not instantiate SimpleDateFormat with pattern " + s, illegalargumentexception);
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss,SSS");
          goto _L1
        illegalargumentexception;
        simpledateformat;
          goto _L2
    }

    public static DatePatternConverter newInstance(String as[])
    {
        return new DatePatternConverter(as);
    }

    public void format(Object obj, StringBuffer stringbuffer)
    {
        if (obj instanceof Date)
            format((Date)obj, stringbuffer);
        super.format(obj, stringbuffer);
    }

    public void format(Date date, StringBuffer stringbuffer)
    {
        this;
        JVM INSTR monitorenter ;
        df.format(date.getTime(), stringbuffer);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        this;
        JVM INSTR monitorenter ;
        df.format(loggingevent.timeStamp, stringbuffer);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
