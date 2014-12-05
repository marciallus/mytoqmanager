// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.util;

import java.text.*;
import java.util.*;

public class DateFormatManager
{

    private DateFormat _dateFormat;
    private Locale _locale;
    private String _pattern;
    private TimeZone _timeZone;

    public DateFormatManager()
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        configure();
    }

    public DateFormatManager(String s)
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        _pattern = s;
        configure();
    }

    public DateFormatManager(Locale locale)
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        _locale = locale;
        configure();
    }

    public DateFormatManager(Locale locale, String s)
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        _locale = locale;
        _pattern = s;
        configure();
    }

    public DateFormatManager(TimeZone timezone)
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        _timeZone = timezone;
        configure();
    }

    public DateFormatManager(TimeZone timezone, String s)
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        _timeZone = timezone;
        _pattern = s;
        configure();
    }

    public DateFormatManager(TimeZone timezone, Locale locale)
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        _timeZone = timezone;
        _locale = locale;
        configure();
    }

    public DateFormatManager(TimeZone timezone, Locale locale, String s)
    {
        _timeZone = null;
        _locale = null;
        _pattern = null;
        _dateFormat = null;
        _timeZone = timezone;
        _locale = locale;
        _pattern = s;
        configure();
    }

    private void configure()
    {
        this;
        JVM INSTR monitorenter ;
        _dateFormat = SimpleDateFormat.getDateTimeInstance(0, 0, getLocale());
        _dateFormat.setTimeZone(getTimeZone());
        if (_pattern != null)
            ((SimpleDateFormat)_dateFormat).applyPattern(_pattern);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String format(Date date)
    {
        return getDateFormatInstance().format(date);
    }

    public String format(Date date, String s)
    {
        Object obj = getDateFormatInstance();
        if (obj instanceof SimpleDateFormat)
        {
            obj = (SimpleDateFormat)(SimpleDateFormat)((DateFormat) (obj)).clone();
            ((SimpleDateFormat)obj).applyPattern(s);
        }
        return ((DateFormat) (obj)).format(date);
    }

    public DateFormat getDateFormatInstance()
    {
        this;
        JVM INSTR monitorenter ;
        DateFormat dateformat = _dateFormat;
        this;
        JVM INSTR monitorexit ;
        return dateformat;
        Exception exception;
        exception;
        throw exception;
    }

    public Locale getLocale()
    {
        this;
        JVM INSTR monitorenter ;
        if (_locale != null) goto _L2; else goto _L1
_L1:
        Locale locale1 = Locale.getDefault();
        Locale locale = locale1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return locale;
_L2:
        locale = _locale;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public String getOutputFormat()
    {
        this;
        JVM INSTR monitorenter ;
        String s = _pattern;
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public String getPattern()
    {
        this;
        JVM INSTR monitorenter ;
        String s = _pattern;
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public TimeZone getTimeZone()
    {
        this;
        JVM INSTR monitorenter ;
        if (_timeZone != null) goto _L2; else goto _L1
_L1:
        TimeZone timezone1 = TimeZone.getDefault();
        TimeZone timezone = timezone1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return timezone;
_L2:
        timezone = _timeZone;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public Date parse(String s)
        throws ParseException
    {
        return getDateFormatInstance().parse(s);
    }

    public Date parse(String s, String s1)
        throws ParseException
    {
        Object obj = getDateFormatInstance();
        if (obj instanceof SimpleDateFormat)
        {
            obj = (SimpleDateFormat)(SimpleDateFormat)((DateFormat) (obj)).clone();
            ((SimpleDateFormat)obj).applyPattern(s1);
        }
        return ((DateFormat) (obj)).parse(s);
    }

    public void setDateFormatInstance(DateFormat dateformat)
    {
        this;
        JVM INSTR monitorenter ;
        _dateFormat = dateformat;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setLocale(Locale locale)
    {
        this;
        JVM INSTR monitorenter ;
        _locale = locale;
        configure();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setOutputFormat(String s)
    {
        this;
        JVM INSTR monitorenter ;
        _pattern = s;
        configure();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setPattern(String s)
    {
        this;
        JVM INSTR monitorenter ;
        _pattern = s;
        configure();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setTimeZone(TimeZone timezone)
    {
        this;
        JVM INSTR monitorenter ;
        _timeZone = timezone;
        configure();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
