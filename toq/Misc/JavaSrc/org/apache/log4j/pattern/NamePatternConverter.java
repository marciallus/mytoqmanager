// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;


// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter, NameAbbreviator

public abstract class NamePatternConverter extends LoggingEventPatternConverter
{

    private final NameAbbreviator abbreviator;

    protected NamePatternConverter(String s, String s1, String as[])
    {
        super(s, s1);
        if (as != null && as.length > 0)
        {
            abbreviator = NameAbbreviator.getAbbreviator(as[0]);
            return;
        } else
        {
            abbreviator = NameAbbreviator.getDefaultAbbreviator();
            return;
        }
    }

    protected final void abbreviate(int i, StringBuffer stringbuffer)
    {
        abbreviator.abbreviate(i, stringbuffer);
    }
}
