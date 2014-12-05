// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.util.*;
import org.apache.log4j.helpers.PatternConverter;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            PatternParser, LoggingEventPatternConverter, FormattingInfo, LiteralPatternConverter

public final class BridgePatternConverter extends PatternConverter
{

    private boolean handlesExceptions;
    private LoggingEventPatternConverter patternConverters[];
    private FormattingInfo patternFields[];

    public BridgePatternConverter(String s)
    {
        next = null;
        handlesExceptions = false;
        ArrayList arraylist = new ArrayList();
        ArrayList arraylist1 = new ArrayList();
        PatternParser.parse(s, arraylist, arraylist1, null, PatternParser.getPatternLayoutRules());
        patternConverters = new LoggingEventPatternConverter[arraylist.size()];
        patternFields = new FormattingInfo[arraylist.size()];
        int i = 0;
        Iterator iterator = arraylist.iterator();
        Iterator iterator1 = arraylist1.iterator();
        while (iterator.hasNext()) 
        {
            Object obj = iterator.next();
            if (obj instanceof LoggingEventPatternConverter)
            {
                patternConverters[i] = (LoggingEventPatternConverter)obj;
                handlesExceptions = handlesExceptions | patternConverters[i].handlesThrowable();
            } else
            {
                patternConverters[i] = new LiteralPatternConverter("");
            }
            if (iterator1.hasNext())
                patternFields[i] = (FormattingInfo)iterator1.next();
            else
                patternFields[i] = FormattingInfo.getDefault();
            i++;
        }
    }

    protected String convert(LoggingEvent loggingevent)
    {
        StringBuffer stringbuffer = new StringBuffer();
        format(stringbuffer, loggingevent);
        return stringbuffer.toString();
    }

    public void format(StringBuffer stringbuffer, LoggingEvent loggingevent)
    {
        for (int i = 0; i < patternConverters.length; i++)
        {
            int j = stringbuffer.length();
            patternConverters[i].format(loggingevent, stringbuffer);
            patternFields[i].format(j, stringbuffer);
        }

    }

    public boolean ignoresThrowable()
    {
        return !handlesExceptions;
    }
}
