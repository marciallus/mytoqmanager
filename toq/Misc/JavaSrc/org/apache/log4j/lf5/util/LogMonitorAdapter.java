// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.util;

import java.util.Arrays;
import java.util.List;
import org.apache.log4j.lf5.LogLevel;
import org.apache.log4j.lf5.LogRecord;
import org.apache.log4j.lf5.viewer.LogBrokerMonitor;

// Referenced classes of package org.apache.log4j.lf5.util:
//            AdapterLogRecord

public class LogMonitorAdapter
{

    public static final int JDK14_LOG_LEVELS = 1;
    public static final int LOG4J_LOG_LEVELS;
    private LogLevel _defaultLevel;
    private LogBrokerMonitor _logMonitor;

    private LogMonitorAdapter(List list)
    {
        _defaultLevel = null;
        _defaultLevel = (LogLevel)list.get(0);
        _logMonitor = new LogBrokerMonitor(list);
        _logMonitor.setFrameSize(getDefaultMonitorWidth(), getDefaultMonitorHeight());
        _logMonitor.setFontSize(12);
        _logMonitor.show();
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
            i = java.awt.Toolkit.getDefaultToolkit().getScreenSize().height;
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
            i = java.awt.Toolkit.getDefaultToolkit().getScreenSize().width;
        }
        catch (Throwable throwable)
        {
            return 800;
        }
        return i;
    }

    public static LogMonitorAdapter newInstance(int i)
    {
        if (i == 1)
        {
            LogMonitorAdapter logmonitoradapter1 = newInstance(LogLevel.getJdk14Levels());
            logmonitoradapter1.setDefaultLevel(LogLevel.FINEST);
            logmonitoradapter1.setSevereLevel(LogLevel.SEVERE);
            return logmonitoradapter1;
        } else
        {
            LogMonitorAdapter logmonitoradapter = newInstance(LogLevel.getLog4JLevels());
            logmonitoradapter.setDefaultLevel(LogLevel.DEBUG);
            logmonitoradapter.setSevereLevel(LogLevel.FATAL);
            return logmonitoradapter;
        }
    }

    public static LogMonitorAdapter newInstance(List list)
    {
        return new LogMonitorAdapter(list);
    }

    public static LogMonitorAdapter newInstance(LogLevel aloglevel[])
    {
        if (aloglevel == null)
            return null;
        else
            return newInstance(Arrays.asList(aloglevel));
    }

    public void addMessage(LogRecord logrecord)
    {
        _logMonitor.addMessage(logrecord);
    }

    public LogLevel getDefaultLevel()
    {
        return _defaultLevel;
    }

    public LogLevel getSevereLevel()
    {
        return AdapterLogRecord.getSevereLevel();
    }

    public void log(String s, String s1)
    {
        log(s, null, s1);
    }

    public void log(String s, LogLevel loglevel, String s1)
    {
        log(s, loglevel, s1, null, null);
    }

    public void log(String s, LogLevel loglevel, String s1, String s2)
    {
        log(s, loglevel, s1, null, s2);
    }

    public void log(String s, LogLevel loglevel, String s1, Throwable throwable)
    {
        log(s, loglevel, s1, throwable, null);
    }

    public void log(String s, LogLevel loglevel, String s1, Throwable throwable, String s2)
    {
        AdapterLogRecord adapterlogrecord = new AdapterLogRecord();
        adapterlogrecord.setCategory(s);
        adapterlogrecord.setMessage(s1);
        adapterlogrecord.setNDC(s2);
        adapterlogrecord.setThrown(throwable);
        if (loglevel == null)
            adapterlogrecord.setLevel(getDefaultLevel());
        else
            adapterlogrecord.setLevel(loglevel);
        addMessage(adapterlogrecord);
    }

    public void setDefaultLevel(LogLevel loglevel)
    {
        _defaultLevel = loglevel;
    }

    public void setMaxNumberOfRecords(int i)
    {
        _logMonitor.setMaxNumberOfLogRecords(i);
    }

    public void setSevereLevel(LogLevel loglevel)
    {
        AdapterLogRecord.setSevereLevel(loglevel);
    }
}
