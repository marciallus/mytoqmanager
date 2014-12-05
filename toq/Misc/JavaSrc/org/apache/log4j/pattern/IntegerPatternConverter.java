// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.util.Date;

// Referenced classes of package org.apache.log4j.pattern:
//            PatternConverter

public final class IntegerPatternConverter extends PatternConverter
{

    private static final IntegerPatternConverter INSTANCE = new IntegerPatternConverter();

    private IntegerPatternConverter()
    {
        super("Integer", "integer");
    }

    public static IntegerPatternConverter newInstance(String as[])
    {
        return INSTANCE;
    }

    public void format(Object obj, StringBuffer stringbuffer)
    {
        if (obj instanceof Integer)
            stringbuffer.append(obj.toString());
        if (obj instanceof Date)
            stringbuffer.append(Long.toString(((Date)obj).getTime()));
    }

}
