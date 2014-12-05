// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            Layout, Level

public class SimpleLayout extends Layout
{

    StringBuffer sbuf;

    public SimpleLayout()
    {
        sbuf = new StringBuffer(128);
    }

    public void activateOptions()
    {
    }

    public String format(LoggingEvent loggingevent)
    {
        sbuf.setLength(0);
        sbuf.append(loggingevent.getLevel().toString());
        sbuf.append(" - ");
        sbuf.append(loggingevent.getRenderedMessage());
        sbuf.append(LINE_SEP);
        return sbuf.toString();
    }

    public boolean ignoresThrowable()
    {
        return true;
    }
}
