// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            NamePatternConverter

public final class ClassNamePatternConverter extends NamePatternConverter
{

    private ClassNamePatternConverter(String as[])
    {
        super("Class Name", "class name", as);
    }

    public static ClassNamePatternConverter newInstance(String as[])
    {
        return new ClassNamePatternConverter(as);
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        int i = stringbuffer.length();
        LocationInfo locationinfo = loggingevent.getLocationInformation();
        if (locationinfo == null)
            stringbuffer.append("?");
        else
            stringbuffer.append(locationinfo.getClassName());
        abbreviate(i, stringbuffer);
    }
}
