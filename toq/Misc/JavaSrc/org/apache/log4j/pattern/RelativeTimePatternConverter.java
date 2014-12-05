// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public class RelativeTimePatternConverter extends LoggingEventPatternConverter
{
    private static final class CachedTimestamp
    {

        private final String formatted;
        private final long timestamp;

        public boolean format(long l, StringBuffer stringbuffer)
        {
            if (l == timestamp)
            {
                stringbuffer.append(formatted);
                return true;
            } else
            {
                return false;
            }
        }

        public CachedTimestamp(long l, String s)
        {
            timestamp = l;
            formatted = s;
        }
    }


    private CachedTimestamp lastTimestamp;

    public RelativeTimePatternConverter()
    {
        super("Time", "time");
        lastTimestamp = new CachedTimestamp(0L, "");
    }

    public static RelativeTimePatternConverter newInstance(String as[])
    {
        return new RelativeTimePatternConverter();
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        long l = loggingevent.timeStamp;
        if (!lastTimestamp.format(l, stringbuffer))
        {
            String s = Long.toString(l - LoggingEvent.getStartTime());
            stringbuffer.append(s);
            lastTimestamp = new CachedTimestamp(l, s);
        }
    }
}
