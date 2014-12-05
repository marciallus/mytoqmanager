// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;
import org.apache.log4j.helpers.LogLog;

// Referenced classes of package org.apache.log4j:
//            WriterAppender, Layout

public class ConsoleAppender extends WriterAppender
{
    private static class SystemErrStream extends OutputStream
    {

        public void close()
        {
        }

        public void flush()
        {
            System.err.flush();
        }

        public void write(int i)
            throws IOException
        {
            System.err.write(i);
        }

        public void write(byte abyte0[])
            throws IOException
        {
            System.err.write(abyte0);
        }

        public void write(byte abyte0[], int i, int j)
            throws IOException
        {
            System.err.write(abyte0, i, j);
        }

    }

    private static class SystemOutStream extends OutputStream
    {

        public void close()
        {
        }

        public void flush()
        {
            System.out.flush();
        }

        public void write(int i)
            throws IOException
        {
            System.out.write(i);
        }

        public void write(byte abyte0[])
            throws IOException
        {
            System.out.write(abyte0);
        }

        public void write(byte abyte0[], int i, int j)
            throws IOException
        {
            System.out.write(abyte0, i, j);
        }

    }


    public static final String SYSTEM_ERR = "System.err";
    public static final String SYSTEM_OUT = "System.out";
    private boolean follow;
    protected String target;

    public ConsoleAppender()
    {
        target = "System.out";
        follow = false;
    }

    public ConsoleAppender(Layout layout)
    {
        this(layout, "System.out");
    }

    public ConsoleAppender(Layout layout, String s)
    {
        target = "System.out";
        follow = false;
        setLayout(layout);
        setTarget(s);
        activateOptions();
    }

    public void activateOptions()
    {
        if (follow)
        {
            if (target.equals("System.err"))
                setWriter(createWriter(new SystemErrStream()));
            else
                setWriter(createWriter(new SystemOutStream()));
        } else
        if (target.equals("System.err"))
            setWriter(createWriter(System.err));
        else
            setWriter(createWriter(System.out));
        super.activateOptions();
    }

    protected final void closeWriter()
    {
        if (follow)
            super.closeWriter();
    }

    public final boolean getFollow()
    {
        return follow;
    }

    public String getTarget()
    {
        return target;
    }

    public final void setFollow(boolean flag)
    {
        follow = flag;
    }

    public void setTarget(String s)
    {
        String s1 = s.trim();
        if ("System.out".equalsIgnoreCase(s1))
        {
            target = "System.out";
            return;
        }
        if ("System.err".equalsIgnoreCase(s1))
        {
            target = "System.err";
            return;
        } else
        {
            targetWarn(s);
            return;
        }
    }

    void targetWarn(String s)
    {
        LogLog.warn("[" + s + "] should be System.out or System.err.");
        LogLog.warn("Using previously set target, System.out by default.");
    }
}
