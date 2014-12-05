// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.util;

import java.io.PrintWriter;
import java.io.StringWriter;
import org.apache.log4j.lf5.LogLevel;
import org.apache.log4j.lf5.LogRecord;

public class AdapterLogRecord extends LogRecord
{

    private static PrintWriter pw;
    private static LogLevel severeLevel = null;
    private static StringWriter sw;


    public static LogLevel getSevereLevel()
    {
        return severeLevel;
    }

    public static void setSevereLevel(LogLevel loglevel)
    {
        severeLevel = loglevel;
    }

    protected String getLocationInfo(String s)
    {
        return parseLine(stackTraceToString(new Throwable()), s);
    }

    public boolean isSevereLevel()
    {
        if (severeLevel == null)
            return false;
        else
            return severeLevel.equals(getLevel());
    }

    protected String parseLine(String s, String s1)
    {
        int i = s.indexOf(s1);
        if (i == -1)
        {
            return null;
        } else
        {
            String s2 = s.substring(i);
            return s2.substring(0, 1 + s2.indexOf(")"));
        }
    }

    public void setCategory(String s)
    {
        super.setCategory(s);
        super.setLocation(getLocationInfo(s));
    }

    protected String stackTraceToString(Throwable throwable)
    {
        String s;
        synchronized (sw)
        {
            throwable.printStackTrace(pw);
            s = sw.toString();
            sw.getBuffer().setLength(0);
        }
        return s;
        exception;
        stringwriter;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static 
    {
        sw = new StringWriter();
        pw = new PrintWriter(sw);
    }
}
