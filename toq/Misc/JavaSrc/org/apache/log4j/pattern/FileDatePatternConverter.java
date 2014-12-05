// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;


// Referenced classes of package org.apache.log4j.pattern:
//            DatePatternConverter, PatternConverter

public final class FileDatePatternConverter
{

    private FileDatePatternConverter()
    {
    }

    public static PatternConverter newInstance(String as[])
    {
        if (as != null && as.length != 0)
            return DatePatternConverter.newInstance(as);
        else
            return DatePatternConverter.newInstance(new String[] {
                "yyyy-MM-dd"
            });
    }
}
