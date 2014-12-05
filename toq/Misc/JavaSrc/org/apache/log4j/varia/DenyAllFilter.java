// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import org.apache.log4j.spi.Filter;
import org.apache.log4j.spi.LoggingEvent;

public class DenyAllFilter extends Filter
{


    public int decide(LoggingEvent loggingevent)
    {
        return -1;
    }

    public String[] getOptionStrings()
    {
        return null;
    }

    public void setOption(String s, String s1)
    {
    }
}
