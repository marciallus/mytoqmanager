// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            PatternConverter

public abstract class LoggingEventPatternConverter extends PatternConverter
{

    protected LoggingEventPatternConverter(String s, String s1)
    {
        super(s, s1);
    }

    public void format(Object obj, StringBuffer stringbuffer)
    {
        if (obj instanceof LoggingEvent)
            format((LoggingEvent)obj, stringbuffer);
    }

    public abstract void format(LoggingEvent loggingevent, StringBuffer stringbuffer);

    public boolean handlesThrowable()
    {
        return false;
    }
}
