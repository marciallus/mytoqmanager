// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public final class LiteralPatternConverter extends LoggingEventPatternConverter
{

    private final String literal;

    public LiteralPatternConverter(String s)
    {
        super("Literal", "literal");
        literal = s;
    }

    public void format(Object obj, StringBuffer stringbuffer)
    {
        stringbuffer.append(literal);
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        stringbuffer.append(literal);
    }
}
