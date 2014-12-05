// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.File;

// Referenced classes of package org.apache.log4j.helpers:
//            LogLog

public abstract class FileWatchdog extends Thread
{

    public static final long DEFAULT_DELAY = 60000L;
    protected long delay;
    File file;
    protected String filename;
    boolean interrupted;
    long lastModif;
    boolean warnedAlready;

    protected FileWatchdog(String s)
    {
        super("FileWatchdog");
        delay = 60000L;
        lastModif = 0L;
        warnedAlready = false;
        interrupted = false;
        filename = s;
        file = new File(s);
        setDaemon(true);
        checkAndConfigure();
    }

    protected void checkAndConfigure()
    {
        boolean flag;
        try
        {
            flag = file.exists();
        }
        catch (SecurityException securityexception)
        {
            LogLog.warn("Was not allowed to read check file existance, file:[" + filename + "].");
            interrupted = true;
            return;
        }
        if (flag)
        {
            long l = file.lastModified();
            if (l > lastModif)
            {
                lastModif = l;
                doOnChange();
                warnedAlready = false;
            }
        } else
        if (!warnedAlready)
        {
            LogLog.debug("[" + filename + "] does not exist.");
            warnedAlready = true;
            return;
        }
    }

    protected abstract void doOnChange();

    public void run()
    {
        while (!interrupted) 
        {
            try
            {
                Thread.sleep(delay);
            }
            catch (InterruptedException interruptedexception) { }
            checkAndConfigure();
        }
    }

    public void setDelay(long l)
    {
        delay = l;
    }
}
