// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.helpers.PatternConverter;
import org.apache.log4j.helpers.PatternParser;
import org.apache.log4j.pattern.BridgePatternConverter;
import org.apache.log4j.pattern.BridgePatternParser;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            Layout

public class EnhancedPatternLayout extends Layout
{

    public static final String DEFAULT_CONVERSION_PATTERN = "%m%n";
    public static final String PATTERN_RULE_REGISTRY = "PATTERN_RULE_REGISTRY";
    public static final String TTCC_CONVERSION_PATTERN = "%r [%t] %p %c %x - %m%n";
    protected final int BUF_SIZE;
    protected final int MAX_CAPACITY;
    private String conversionPattern;
    private boolean handlesExceptions;
    private PatternConverter head;

    public EnhancedPatternLayout()
    {
        this("%m%n");
    }

    public EnhancedPatternLayout(String s)
    {
        BUF_SIZE = 256;
        MAX_CAPACITY = 1024;
        conversionPattern = s;
        if (s == null)
            s = "%m%n";
        head = createPatternParser(s).parse();
        if (head instanceof BridgePatternConverter)
        {
            boolean flag;
            if (!((BridgePatternConverter)head).ignoresThrowable())
                flag = true;
            else
                flag = false;
            handlesExceptions = flag;
            return;
        } else
        {
            handlesExceptions = false;
            return;
        }
    }

    public void activateOptions()
    {
    }

    protected PatternParser createPatternParser(String s)
    {
        return new BridgePatternParser(s);
    }

    public String format(LoggingEvent loggingevent)
    {
        StringBuffer stringbuffer = new StringBuffer();
        for (PatternConverter patternconverter = head; patternconverter != null; patternconverter = patternconverter.next)
            patternconverter.format(stringbuffer, loggingevent);

        return stringbuffer.toString();
    }

    public String getConversionPattern()
    {
        return conversionPattern;
    }

    public boolean ignoresThrowable()
    {
        return !handlesExceptions;
    }

    public void setConversionPattern(String s)
    {
        conversionPattern = OptionConverter.convertSpecialChars(s);
        head = createPatternParser(conversionPattern).parse();
        if (head instanceof BridgePatternConverter)
        {
            boolean flag;
            if (!((BridgePatternConverter)head).ignoresThrowable())
                flag = true;
            else
                flag = false;
            handlesExceptions = flag;
            return;
        } else
        {
            handlesExceptions = false;
            return;
        }
    }
}
