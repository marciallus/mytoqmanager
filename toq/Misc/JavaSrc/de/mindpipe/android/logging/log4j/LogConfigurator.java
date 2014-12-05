// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package de.mindpipe.android.logging.log4j;

import java.io.IOException;
import org.apache.log4j.*;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.LoggerRepository;

// Referenced classes of package de.mindpipe.android.logging.log4j:
//            LogCatAppender

public class LogConfigurator
{

    private String fileName;
    private String filePattern;
    private boolean immediateFlush;
    private boolean internalDebugging;
    private String logCatPattern;
    private int maxBackupSize;
    private long maxFileSize;
    private boolean resetConfiguration;
    private Level rootLevel;
    private boolean useFileAppender;
    private boolean useLogCatAppender;

    public LogConfigurator()
    {
        rootLevel = Level.DEBUG;
        filePattern = "%d - [%p::%c::%C] - %m%n";
        logCatPattern = "%m%n";
        fileName = "android-log4j.log";
        maxBackupSize = 5;
        maxFileSize = 0x80000L;
        immediateFlush = true;
        useLogCatAppender = true;
        useFileAppender = true;
        resetConfiguration = true;
        internalDebugging = false;
    }

    public LogConfigurator(String s)
    {
        rootLevel = Level.DEBUG;
        filePattern = "%d - [%p::%c::%C] - %m%n";
        logCatPattern = "%m%n";
        fileName = "android-log4j.log";
        maxBackupSize = 5;
        maxFileSize = 0x80000L;
        immediateFlush = true;
        useLogCatAppender = true;
        useFileAppender = true;
        resetConfiguration = true;
        internalDebugging = false;
        setFileName(s);
    }

    public LogConfigurator(String s, int i, long l, String s1, Level level)
    {
        this(s, level, s1);
        setMaxBackupSize(i);
        setMaxFileSize(l);
    }

    public LogConfigurator(String s, Level level)
    {
        this(s);
        setRootLevel(level);
    }

    public LogConfigurator(String s, Level level, String s1)
    {
        this(s);
        setRootLevel(level);
        setFilePattern(s1);
    }

    private void configureFileAppender()
    {
        Logger logger = Logger.getRootLogger();
        PatternLayout patternlayout = new PatternLayout(getFilePattern());
        RollingFileAppender rollingfileappender;
        try
        {
            rollingfileappender = new RollingFileAppender(patternlayout, getFileName());
        }
        catch (IOException ioexception)
        {
            throw new RuntimeException("Exception configuring log system", ioexception);
        }
        rollingfileappender.setMaxBackupIndex(getMaxBackupSize());
        rollingfileappender.setMaximumFileSize(getMaxFileSize());
        rollingfileappender.setImmediateFlush(isImmediateFlush());
        logger.addAppender(rollingfileappender);
    }

    private void configureLogCatAppender()
    {
        Logger.getRootLogger().addAppender(new LogCatAppender(new PatternLayout(getLogCatPattern())));
    }

    public void configure()
    {
        Logger logger = Logger.getRootLogger();
        if (isResetConfiguration())
            LogManager.getLoggerRepository().resetConfiguration();
        LogLog.setInternalDebugging(isInternalDebugging());
        if (isUseFileAppender())
            configureFileAppender();
        if (isUseLogCatAppender())
            configureLogCatAppender();
        logger.setLevel(getRootLevel());
    }

    public String getFileName()
    {
        return fileName;
    }

    public String getFilePattern()
    {
        return filePattern;
    }

    public String getLogCatPattern()
    {
        return logCatPattern;
    }

    public int getMaxBackupSize()
    {
        return maxBackupSize;
    }

    public long getMaxFileSize()
    {
        return maxFileSize;
    }

    public Level getRootLevel()
    {
        return rootLevel;
    }

    public boolean isImmediateFlush()
    {
        return immediateFlush;
    }

    public boolean isInternalDebugging()
    {
        return internalDebugging;
    }

    public boolean isResetConfiguration()
    {
        return resetConfiguration;
    }

    public boolean isUseFileAppender()
    {
        return useFileAppender;
    }

    public boolean isUseLogCatAppender()
    {
        return useLogCatAppender;
    }

    public void setFileName(String s)
    {
        fileName = s;
    }

    public void setFilePattern(String s)
    {
        filePattern = s;
    }

    public void setImmediateFlush(boolean flag)
    {
        immediateFlush = flag;
    }

    public void setInternalDebugging(boolean flag)
    {
        internalDebugging = flag;
    }

    public void setLevel(String s, Level level)
    {
        Logger.getLogger(s).setLevel(level);
    }

    public void setLogCatPattern(String s)
    {
        logCatPattern = s;
    }

    public void setMaxBackupSize(int i)
    {
        maxBackupSize = i;
    }

    public void setMaxFileSize(long l)
    {
        maxFileSize = l;
    }

    public void setResetConfiguration(boolean flag)
    {
        resetConfiguration = flag;
    }

    public void setRootLevel(Level level)
    {
        rootLevel = level;
    }

    public void setUseFileAppender(boolean flag)
    {
        useFileAppender = flag;
    }

    public void setUseLogCatAppender(boolean flag)
    {
        useLogCatAppender = flag;
    }
}
