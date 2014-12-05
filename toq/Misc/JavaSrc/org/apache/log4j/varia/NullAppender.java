// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.spi.LoggingEvent;

public class NullAppender extends AppenderSkeleton
{

    private static NullAppender instance = new NullAppender();


    public static NullAppender getNullAppender()
    {
        return instance;
    }

    public void activateOptions()
    {
    }

    protected void append(LoggingEvent loggingevent)
    {
    }

    public void close()
    {
    }

    public void doAppend(LoggingEvent loggingevent)
    {
    }

    public NullAppender getInstance()
    {
        return instance;
    }

    public boolean requiresLayout()
    {
        return false;
    }

}
