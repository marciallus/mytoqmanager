// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.PrintStream;

// Referenced classes of package org.apache.log4j.helpers:
//            OptionConverter

public class LogLog
{

    public static final String CONFIG_DEBUG_KEY = "log4j.configDebug";
    public static final String DEBUG_KEY = "log4j.debug";
    private static final String ERR_PREFIX = "log4j:ERROR ";
    private static final String PREFIX = "log4j: ";
    private static final String WARN_PREFIX = "log4j:WARN ";
    protected static boolean debugEnabled = false;
    private static boolean quietMode = false;


    public static void debug(String s)
    {
        if (debugEnabled && !quietMode)
            System.out.println("log4j: " + s);
    }

    public static void debug(String s, Throwable throwable)
    {
        if (debugEnabled && !quietMode)
        {
            System.out.println("log4j: " + s);
            if (throwable != null)
                throwable.printStackTrace(System.out);
        }
    }

    public static void error(String s)
    {
        if (quietMode)
        {
            return;
        } else
        {
            System.err.println("log4j:ERROR " + s);
            return;
        }
    }

    public static void error(String s, Throwable throwable)
    {
        if (!quietMode)
        {
            System.err.println("log4j:ERROR " + s);
            if (throwable != null)
            {
                throwable.printStackTrace();
                return;
            }
        }
    }

    public static void setInternalDebugging(boolean flag)
    {
        debugEnabled = flag;
    }

    public static void setQuietMode(boolean flag)
    {
        quietMode = flag;
    }

    public static void warn(String s)
    {
        if (quietMode)
        {
            return;
        } else
        {
            System.err.println("log4j:WARN " + s);
            return;
        }
    }

    public static void warn(String s, Throwable throwable)
    {
        if (!quietMode)
        {
            System.err.println("log4j:WARN " + s);
            if (throwable != null)
            {
                throwable.printStackTrace();
                return;
            }
        }
    }

    static 
    {
        String s = OptionConverter.getSystemProperty("log4j.debug", null);
        if (s == null)
            s = OptionConverter.getSystemProperty("log4j.configDebug", null);
        if (s != null)
            debugEnabled = OptionConverter.toBoolean(s, true);
    }
}
