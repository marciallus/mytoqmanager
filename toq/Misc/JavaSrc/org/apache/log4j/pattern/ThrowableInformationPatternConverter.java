// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LoggingEvent;
import org.apache.log4j.spi.ThrowableInformation;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public class ThrowableInformationPatternConverter extends LoggingEventPatternConverter
{

    private int maxLines;

    private ThrowableInformationPatternConverter(String as[])
    {
label0:
        {
            super("Throwable", "throwable");
            maxLines = 0x7fffffff;
            if (as != null && as.length > 0)
            {
                if (!"none".equals(as[0]))
                    break label0;
                maxLines = 0;
            }
            return;
        }
        if ("short".equals(as[0]))
        {
            maxLines = 1;
            return;
        }
        try
        {
            maxLines = Integer.parseInt(as[0]);
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            return;
        }
    }

    public static ThrowableInformationPatternConverter newInstance(String as[])
    {
        return new ThrowableInformationPatternConverter(as);
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        if (maxLines != 0)
        {
            ThrowableInformation throwableinformation = loggingevent.getThrowableInformation();
            if (throwableinformation != null)
            {
                String as[] = throwableinformation.getThrowableStrRep();
                int i = as.length;
                if (maxLines < 0)
                    i += maxLines;
                else
                if (i > maxLines)
                    i = maxLines;
                for (int j = 0; j < i; j++)
                    stringbuffer.append(as[j]).append("\n");

            }
        }
    }

    public boolean handlesThrowable()
    {
        return true;
    }
}
