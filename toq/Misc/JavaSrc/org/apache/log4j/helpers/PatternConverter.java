// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.helpers:
//            FormattingInfo

public abstract class PatternConverter
{

    static String SPACES[] = {
        " ", "  ", "    ", "        ", "                ", "                                "
    };
    boolean leftAlign;
    int max;
    int min;
    public PatternConverter next;

    protected PatternConverter()
    {
        min = -1;
        max = 0x7fffffff;
        leftAlign = false;
    }

    protected PatternConverter(FormattingInfo formattinginfo)
    {
        min = -1;
        max = 0x7fffffff;
        leftAlign = false;
        min = formattinginfo.min;
        max = formattinginfo.max;
        leftAlign = formattinginfo.leftAlign;
    }

    protected abstract String convert(LoggingEvent loggingevent);

    public void format(StringBuffer stringbuffer, LoggingEvent loggingevent)
    {
        String s = convert(loggingevent);
        if (s == null)
        {
            if (min > 0)
                spacePad(stringbuffer, min);
            return;
        }
        int i = s.length();
        if (i > max)
        {
            stringbuffer.append(s.substring(i - max));
            return;
        }
        if (i < min)
        {
            if (leftAlign)
            {
                stringbuffer.append(s);
                spacePad(stringbuffer, min - i);
                return;
            } else
            {
                spacePad(stringbuffer, min - i);
                stringbuffer.append(s);
                return;
            }
        } else
        {
            stringbuffer.append(s);
            return;
        }
    }

    public void spacePad(StringBuffer stringbuffer, int i)
    {
        for (; i >= 32; i -= 32)
            stringbuffer.append(SPACES[5]);

        for (int j = 4; j >= 0; j--)
            if ((i & 1 << j) != 0)
                stringbuffer.append(SPACES[j]);

    }

}
