// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;


// Referenced classes of package org.apache.log4j.spi:
//            OptionHandler, LoggingEvent

public abstract class Filter
    implements OptionHandler
{

    public static final int ACCEPT = 1;
    public static final int DENY = -1;
    public static final int NEUTRAL;
    public Filter next;


    public void activateOptions()
    {
    }

    public abstract int decide(LoggingEvent loggingevent);

    public Filter getNext()
    {
        return next;
    }

    public void setNext(Filter filter)
    {
        next = filter;
    }
}
