// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;

import java.awt.Dimension;
import java.awt.Toolkit;
import org.apache.log4j.AppenderSkeleton;
import org.apache.log4j.Level;
import org.apache.log4j.lf5.viewer.LogBrokerMonitor;
import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.lf5:
//            LogLevel, AppenderFinalizer, LogLevelFormatException, Log4JLogRecord

public class LF5Appender extends AppenderSkeleton
{

    protected static LogBrokerMonitor _defaultLogMonitor;
    protected static AppenderFinalizer _finalizer;
    protected LogBrokerMonitor _logMonitor;

    public LF5Appender()
    {
        this(getDefaultInstance());
    }

    public LF5Appender(LogBrokerMonitor logbrokermonitor)
    {
        if (logbrokermonitor != null)
            _logMonitor = logbrokermonitor;
    }

    protected static LogBrokerMonitor getDefaultInstance()
    {
        org/apache/log4j/lf5/LF5Appender;
        JVM INSTR monitorenter ;
        LogBrokerMonitor logbrokermonitor = _defaultLogMonitor;
        if (logbrokermonitor != null)
            break MISSING_BLOCK_LABEL_63;
        _defaultLogMonitor = new LogBrokerMonitor(LogLevel.getLog4JLevels());
        _finalizer = new AppenderFinalizer(_defaultLogMonitor);
        _defaultLogMonitor.setFrameSize(getDefaultMonitorWidth(), getDefaultMonitorHeight());
        _defaultLogMonitor.setFontSize(12);
        _defaultLogMonitor.show();
_L1:
        LogBrokerMonitor logbrokermonitor1 = _defaultLogMonitor;
        org/apache/log4j/lf5/LF5Appender;
        JVM INSTR monitorexit ;
        return logbrokermonitor1;
        SecurityException securityexception;
        securityexception;
        _defaultLogMonitor = null;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    protected static int getDefaultMonitorHeight()
    {
        return (3 * getScreenHeight()) / 4;
    }

    protected static int getDefaultMonitorWidth()
    {
        return (3 * getScreenWidth()) / 4;
    }

    protected static int getScreenHeight()
    {
        int i;
        try
        {
            i = Toolkit.getDefaultToolkit().getScreenSize().height;
        }
        catch (Throwable throwable)
        {
            return 600;
        }
        return i;
    }

    protected static int getScreenWidth()
    {
        int i;
        try
        {
            i = Toolkit.getDefaultToolkit().getScreenSize().width;
        }
        catch (Throwable throwable)
        {
            return 800;
        }
        return i;
    }

    public static void main(String args[])
    {
        new LF5Appender();
    }

    public void append(LoggingEvent loggingevent)
    {
        String s = loggingevent.getLoggerName();
        String s1 = loggingevent.getRenderedMessage();
        String s2 = loggingevent.getNDC();
        String s3 = loggingevent.getThreadName();
        String s4 = loggingevent.getLevel().toString();
        long l = loggingevent.timeStamp;
        LocationInfo locationinfo = loggingevent.getLocationInformation();
        Log4JLogRecord log4jlogrecord = new Log4JLogRecord();
        log4jlogrecord.setCategory(s);
        log4jlogrecord.setMessage(s1);
        log4jlogrecord.setLocation(locationinfo.fullInfo);
        log4jlogrecord.setMillis(l);
        log4jlogrecord.setThreadDescription(s3);
        if (s2 != null)
            log4jlogrecord.setNDC(s2);
        else
            log4jlogrecord.setNDC("");
        if (loggingevent.getThrowableInformation() != null)
            log4jlogrecord.setThrownStackTrace(loggingevent.getThrowableInformation());
        try
        {
            log4jlogrecord.setLevel(LogLevel.valueOf(s4));
        }
        catch (LogLevelFormatException loglevelformatexception)
        {
            log4jlogrecord.setLevel(LogLevel.WARN);
        }
        if (_logMonitor != null)
            _logMonitor.addMessage(log4jlogrecord);
    }

    public void close()
    {
    }

    public boolean equals(LF5Appender lf5appender)
    {
        return _logMonitor == lf5appender.getLogBrokerMonitor();
    }

    public LogBrokerMonitor getLogBrokerMonitor()
    {
        return _logMonitor;
    }

    public boolean requiresLayout()
    {
        return false;
    }

    public void setCallSystemExitOnClose(boolean flag)
    {
        _logMonitor.setCallSystemExitOnClose(flag);
    }

    public void setMaxNumberOfRecords(int i)
    {
        _defaultLogMonitor.setMaxNumberOfLogRecords(i);
    }
}
