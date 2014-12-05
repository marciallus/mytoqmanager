// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.InterruptedIOException;
import org.apache.log4j.Appender;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.helpers:
//            LogLog

public class OnlyOnceErrorHandler
    implements ErrorHandler
{

    final String ERROR_PREFIX = "log4j error: ";
    final String WARN_PREFIX = "log4j warning: ";
    boolean firstTime;

    public OnlyOnceErrorHandler()
    {
        firstTime = true;
    }

    public void activateOptions()
    {
    }

    public void error(String s)
    {
        if (firstTime)
        {
            LogLog.error(s);
            firstTime = false;
        }
    }

    public void error(String s, Exception exception, int i)
    {
        error(s, exception, i, null);
    }

    public void error(String s, Exception exception, int i, LoggingEvent loggingevent)
    {
        if ((exception instanceof InterruptedIOException) || (exception instanceof InterruptedException))
            Thread.currentThread().interrupt();
        if (firstTime)
        {
            LogLog.error(s, exception);
            firstTime = false;
        }
    }

    public void setAppender(Appender appender)
    {
    }

    public void setBackupAppender(Appender appender)
    {
    }

    public void setLogger(Logger logger)
    {
    }
}
