// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import java.io.InterruptedIOException;
import java.util.Vector;
import org.apache.log4j.Appender;
import org.apache.log4j.Logger;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

public class FallbackErrorHandler
    implements ErrorHandler
{

    Appender backup;
    Vector loggers;
    Appender primary;


    public void activateOptions()
    {
    }

    public void error(String s)
    {
    }

    public void error(String s, Exception exception, int i)
    {
        error(s, exception, i, null);
    }

    public void error(String s, Exception exception, int i, LoggingEvent loggingevent)
    {
        if (exception instanceof InterruptedIOException)
            Thread.currentThread().interrupt();
        LogLog.debug("FB: The following error reported: " + s, exception);
        LogLog.debug("FB: INITIATING FALLBACK PROCEDURE.");
        if (loggers != null)
        {
            for (int j = 0; j < loggers.size(); j++)
            {
                Logger logger = (Logger)loggers.elementAt(j);
                LogLog.debug("FB: Searching for [" + primary.getName() + "] in logger [" + logger.getName() + "].");
                LogLog.debug("FB: Replacing [" + primary.getName() + "] by [" + backup.getName() + "] in logger [" + logger.getName() + "].");
                logger.removeAppender(primary);
                LogLog.debug("FB: Adding appender [" + backup.getName() + "] to logger " + logger.getName());
                logger.addAppender(backup);
            }

        }
    }

    public void setAppender(Appender appender)
    {
        LogLog.debug("FB: Setting primary appender to [" + appender.getName() + "].");
        primary = appender;
    }

    public void setBackupAppender(Appender appender)
    {
        LogLog.debug("FB: Setting backup appender to [" + appender.getName() + "].");
        backup = appender;
    }

    public void setLogger(Logger logger)
    {
        LogLog.debug("FB: Adding logger [" + logger.getName() + "].");
        if (loggers == null)
            loggers = new Vector();
        loggers.addElement(logger);
    }
}
