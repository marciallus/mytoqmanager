// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.api.v1.deckofcards.util;

import android.util.Log;

public final class Logger
{

    private static final boolean COMPILE_WITH_LOGGING_ENABLED = true;
    private static boolean isLoggingEnabled = true;
    private static String tag = "DeckOfCards";

    private Logger()
    {
    }

    public static void d(String s)
    {
        if (isLoggingEnabled)
            Log.d(tag, s);
    }

    public static void d(String s, Throwable throwable)
    {
        if (isLoggingEnabled)
            Log.d(tag, s, throwable);
    }

    public static void e(String s)
    {
        if (isLoggingEnabled)
            Log.e(tag, s);
    }

    public static void e(String s, Throwable throwable)
    {
        if (isLoggingEnabled)
            Log.e(tag, s, throwable);
    }

    public static String getTag()
    {
        return tag;
    }

    public static void i(String s)
    {
        if (isLoggingEnabled)
            Log.i(tag, s);
    }

    public static void i(String s, Throwable throwable)
    {
        if (isLoggingEnabled)
            Log.i(tag, s, throwable);
    }

    public static boolean isLoggingEnabled()
    {
        return isLoggingEnabled;
    }

    public static void setLoggingEnabled(boolean flag)
    {
        isLoggingEnabled = flag;
    }

    public static void setTag(String s)
    {
        tag = s;
    }

    public static void v(String s)
    {
        if (isLoggingEnabled)
            Log.v(tag, s);
    }

    public static void v(String s, Throwable throwable)
    {
        if (isLoggingEnabled)
            Log.v(tag, s, throwable);
    }

    public static void w(String s)
    {
        if (isLoggingEnabled)
            Log.w(tag, s);
    }

    public static void w(String s, Throwable throwable)
    {
        if (isLoggingEnabled)
            Log.w(tag, s, throwable);
    }

}
