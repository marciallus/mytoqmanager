// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            NamePatternConverter

public final class LoggerPatternConverter extends NamePatternConverter
{

    private static final LoggerPatternConverter INSTANCE = new LoggerPatternConverter(null);

    private LoggerPatternConverter(String as[])
    {
        super("Logger", "logger", as);
    }

    public static LoggerPatternConverter newInstance(String as[])
    {
        if (as != null && as.length != 0)
            return new LoggerPatternConverter(as);
        else
            return INSTANCE;
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        int i = stringbuffer.length();
        stringbuffer.append(loggingevent.getLoggerName());
        abbreviate(i, stringbuffer);
    }

}
