// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;


public abstract class PatternConverter
{

    private final String name;
    private final String style;

    protected PatternConverter(String s, String s1)
    {
        name = s;
        style = s1;
    }

    public abstract void format(Object obj, StringBuffer stringbuffer);

    public final String getName()
    {
        return name;
    }

    public String getStyleClass(Object obj)
    {
        return style;
    }
}
