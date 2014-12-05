// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public final class MethodLocationPatternConverter extends LoggingEventPatternConverter
{

    private static final MethodLocationPatternConverter INSTANCE = new MethodLocationPatternConverter();

    private MethodLocationPatternConverter()
    {
        super("Method", "method");
    }

    public static MethodLocationPatternConverter newInstance(String as[])
    {
        return INSTANCE;
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        LocationInfo locationinfo = loggingevent.getLocationInformation();
        if (locationinfo != null)
            stringbuffer.append(locationinfo.getMethodName());
    }

}