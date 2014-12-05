// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.util.*;
import org.apache.log4j.*;

// Referenced classes of package org.apache.log4j.spi:
//            NOPLoggerRepository, LoggingEvent

public final class NOPLogger extends Logger
{

    public NOPLogger(NOPLoggerRepository noploggerrepository, String s)
    {
        super(s);
        repository = noploggerrepository;
        level = Level.OFF;
        parent = this;
    }

    public void addAppender(Appender appender)
    {
    }

    public void assertLog(boolean flag, String s)
    {
    }

    public void callAppenders(LoggingEvent loggingevent)
    {
    }

    void closeNestedAppenders()
    {
    }

    public void debug(Object obj)
    {
    }

    public void debug(Object obj, Throwable throwable)
    {
    }

    public void error(Object obj)
    {
    }

    public void error(Object obj, Throwable throwable)
    {
    }

    public void fatal(Object obj)
    {
    }

    public void fatal(Object obj, Throwable throwable)
    {
    }

    public Enumeration getAllAppenders()
    {
        return (new Vector()).elements();
    }

    public Appender getAppender(String s)
    {
        return null;
    }

    public Priority getChainedPriority()
    {
        return getEffectiveLevel();
    }

    public Level getEffectiveLevel()
    {
        return Level.OFF;
    }

    public ResourceBundle getResourceBundle()
    {
        return null;
    }

    public void info(Object obj)
    {
    }

    public void info(Object obj, Throwable throwable)
    {
    }

    public boolean isAttached(Appender appender)
    {
        return false;
    }

    public boolean isDebugEnabled()
    {
        return false;
    }

    public boolean isEnabledFor(Priority priority)
    {
        return false;
    }

    public boolean isInfoEnabled()
    {
        return false;
    }

    public boolean isTraceEnabled()
    {
        return false;
    }

    public void l7dlog(Priority priority, String s, Throwable throwable)
    {
    }

    public void l7dlog(Priority priority, String s, Object aobj[], Throwable throwable)
    {
    }

    public void log(String s, Priority priority, Object obj, Throwable throwable)
    {
    }

    public void log(Priority priority, Object obj)
    {
    }

    public void log(Priority priority, Object obj, Throwable throwable)
    {
    }

    public void removeAllAppenders()
    {
    }

    public void removeAppender(String s)
    {
    }

    public void removeAppender(Appender appender)
    {
    }

    public void setLevel(Level level)
    {
    }

    public void setPriority(Priority priority)
    {
    }

    public void setResourceBundle(ResourceBundle resourcebundle)
    {
    }

    public void trace(Object obj)
    {
    }

    public void trace(Object obj, Throwable throwable)
    {
    }

    public void warn(Object obj)
    {
    }

    public void warn(Object obj, Throwable throwable)
    {
    }
}
