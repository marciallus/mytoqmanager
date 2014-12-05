// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.Level;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public final class LevelPatternConverter extends LoggingEventPatternConverter
{

    private static final LevelPatternConverter INSTANCE = new LevelPatternConverter();
    private static final int TRACE_INT = 5000;

    private LevelPatternConverter()
    {
        super("Level", "level");
    }

    public static LevelPatternConverter newInstance(String as[])
    {
        return INSTANCE;
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        stringbuffer.append(loggingevent.getLevel().toString());
    }

    public String getStyleClass(Object obj)
    {
        if (obj instanceof LoggingEvent)
        {
            switch (((LoggingEvent)obj).getLevel().toInt())
            {
            case 50000: 
                return "level fatal";

            case 40000: 
                return "level error";

            case 30000: 
                return "level warn";

            case 20000: 
                return "level info";

            case 10000: 
                return "level debug";

            case 5000: 
                return "level trace";
            }
            return "level " + ((LoggingEvent)obj).getLevel().toString();
        } else
        {
            return "level";
        }
    }

}
