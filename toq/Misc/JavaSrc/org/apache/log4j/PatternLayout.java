// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.helpers.PatternConverter;
import org.apache.log4j.helpers.PatternParser;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            Layout

public class PatternLayout extends Layout
{

    public static final String DEFAULT_CONVERSION_PATTERN = "%m%n";
    public static final String TTCC_CONVERSION_PATTERN = "%r [%t] %p %c %x - %m%n";
    protected final int BUF_SIZE;
    protected final int MAX_CAPACITY;
    private PatternConverter head;
    private String pattern;
    private StringBuffer sbuf;

    public PatternLayout()
    {
        this("%m%n");
    }

    public PatternLayout(String s)
    {
        BUF_SIZE = 256;
        MAX_CAPACITY = 1024;
        sbuf = new StringBuffer(256);
        pattern = s;
        if (s == null)
            s = "%m%n";
        head = createPatternParser(s).parse();
    }

    public void activateOptions()
    {
    }

    protected PatternParser createPatternParser(String s)
    {
        return new PatternParser(s);
    }

    public String format(LoggingEvent loggingevent)
    {
        if (sbuf.capacity() > 1024)
            sbuf = new StringBuffer(256);
        else
            sbuf.setLength(0);
        for (PatternConverter patternconverter = head; patternconverter != null; patternconverter = patternconverter.next)
            patternconverter.format(sbuf, loggingevent);

        return sbuf.toString();
    }

    public String getConversionPattern()
    {
        return pattern;
    }

    public boolean ignoresThrowable()
    {
        return true;
    }

    public void setConversionPattern(String s)
    {
        pattern = s;
        head = createPatternParser(s).parse();
    }
}
