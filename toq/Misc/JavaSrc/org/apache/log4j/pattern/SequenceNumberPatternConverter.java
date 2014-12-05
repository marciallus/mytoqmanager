// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public class SequenceNumberPatternConverter extends LoggingEventPatternConverter
{

    private static final SequenceNumberPatternConverter INSTANCE = new SequenceNumberPatternConverter();

    private SequenceNumberPatternConverter()
    {
        super("Sequence Number", "sn");
    }

    public static SequenceNumberPatternConverter newInstance(String as[])
    {
        return INSTANCE;
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        stringbuffer.append("0");
    }

}
