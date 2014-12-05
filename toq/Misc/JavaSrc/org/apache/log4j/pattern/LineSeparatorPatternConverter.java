// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.Layout;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public final class LineSeparatorPatternConverter extends LoggingEventPatternConverter
{

    private static final LineSeparatorPatternConverter INSTANCE = new LineSeparatorPatternConverter();
    private final String lineSep;

    private LineSeparatorPatternConverter()
    {
        super("Line Sep", "lineSep");
        lineSep = Layout.LINE_SEP;
    }

    public static LineSeparatorPatternConverter newInstance(String as[])
    {
        return INSTANCE;
    }

    public void format(Object obj, StringBuffer stringbuffer)
    {
        stringbuffer.append(lineSep);
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        stringbuffer.append(lineSep);
    }

}
