// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public final class NDCPatternConverter extends LoggingEventPatternConverter
{

    private static final NDCPatternConverter INSTANCE = new NDCPatternConverter();

    private NDCPatternConverter()
    {
        super("NDC", "ndc");
    }

    public static NDCPatternConverter newInstance(String as[])
    {
        return INSTANCE;
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        stringbuffer.append(loggingevent.getNDC());
    }

}
