// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.helpers.DateLayout;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            Level

public class TTCCLayout extends DateLayout
{

    protected final StringBuffer buf;
    private boolean categoryPrefixing;
    private boolean contextPrinting;
    private boolean threadPrinting;

    public TTCCLayout()
    {
        threadPrinting = true;
        categoryPrefixing = true;
        contextPrinting = true;
        buf = new StringBuffer(256);
        setDateFormat("RELATIVE", null);
    }

    public TTCCLayout(String s)
    {
        threadPrinting = true;
        categoryPrefixing = true;
        contextPrinting = true;
        buf = new StringBuffer(256);
        setDateFormat(s);
    }

    public String format(LoggingEvent loggingevent)
    {
        buf.setLength(0);
        dateFormat(buf, loggingevent);
        if (threadPrinting)
        {
            buf.append('[');
            buf.append(loggingevent.getThreadName());
            buf.append("] ");
        }
        buf.append(loggingevent.getLevel().toString());
        buf.append(' ');
        if (categoryPrefixing)
        {
            buf.append(loggingevent.getLoggerName());
            buf.append(' ');
        }
        if (contextPrinting)
        {
            String s = loggingevent.getNDC();
            if (s != null)
            {
                buf.append(s);
                buf.append(' ');
            }
        }
        buf.append("- ");
        buf.append(loggingevent.getRenderedMessage());
        buf.append(LINE_SEP);
        return buf.toString();
    }

    public boolean getCategoryPrefixing()
    {
        return categoryPrefixing;
    }

    public boolean getContextPrinting()
    {
        return contextPrinting;
    }

    public boolean getThreadPrinting()
    {
        return threadPrinting;
    }

    public boolean ignoresThrowable()
    {
        return true;
    }

    public void setCategoryPrefixing(boolean flag)
    {
        categoryPrefixing = flag;
    }

    public void setContextPrinting(boolean flag)
    {
        contextPrinting = flag;
    }

    public void setThreadPrinting(boolean flag)
    {
        threadPrinting = flag;
    }
}
