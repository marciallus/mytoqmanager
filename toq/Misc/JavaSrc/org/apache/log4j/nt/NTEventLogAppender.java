// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.nt;

import org.apache.log4j.*;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.LoggingEvent;

public class NTEventLogAppender extends AppenderSkeleton
{

    private int _handle;
    private String server;
    private String source;

    public NTEventLogAppender()
    {
        this(null, null, null);
    }

    public NTEventLogAppender(String s)
    {
        this(null, s, null);
    }

    public NTEventLogAppender(String s, String s1)
    {
        this(s, s1, null);
    }

    public NTEventLogAppender(String s, String s1, Layout layout)
    {
        _handle = 0;
        source = null;
        server = null;
        if (s1 == null)
            s1 = "Log4j";
        if (layout == null)
            this.layout = new TTCCLayout();
        else
            this.layout = layout;
        try
        {
            _handle = registerEventSource(s, s1);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        _handle = 0;
    }

    public NTEventLogAppender(String s, Layout layout)
    {
        this(null, s, layout);
    }

    public NTEventLogAppender(Layout layout)
    {
        this(null, null, layout);
    }

    private native void deregisterEventSource(int i);

    private native int registerEventSource(String s, String s1);

    private native void reportEvent(int i, String s, int j);

    public void activateOptions()
    {
        if (source == null)
            break MISSING_BLOCK_LABEL_23;
        _handle = registerEventSource(server, source);
        return;
        Exception exception;
        exception;
        LogLog.error("Could not register event source.", exception);
        _handle = 0;
        return;
    }

    public void append(LoggingEvent loggingevent)
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(layout.format(loggingevent));
        if (layout.ignoresThrowable())
        {
            String as[] = loggingevent.getThrowableStrRep();
            if (as != null)
            {
                int j = as.length;
                for (int k = 0; k < j; k++)
                    stringbuffer.append(as[k]);

            }
        }
        int i = loggingevent.getLevel().toInt();
        reportEvent(_handle, stringbuffer.toString(), i);
    }

    public void close()
    {
    }

    public void finalize()
    {
        deregisterEventSource(_handle);
        _handle = 0;
    }

    public String getSource()
    {
        return source;
    }

    public boolean requiresLayout()
    {
        return true;
    }

    public void setSource(String s)
    {
        source = s.trim();
    }

    static 
    {
        int i;
        String as[];
        int j;
        boolean flag;
        try
        {
            as = new String[1];
            as[0] = System.getProperty("os.arch");
        }
        catch (SecurityException securityexception)
        {
            as = (new String[] {
                "amd64", "ia64", "x86"
            });
        }
        i = 0;
_L2:
        j = as.length;
        flag = false;
        if (i >= j)
            break MISSING_BLOCK_LABEL_53;
        System.loadLibrary("NTEventLogAppender." + as[i]);
        flag = true;
        if (!flag)
            System.loadLibrary("NTEventLogAppender");
        return;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
