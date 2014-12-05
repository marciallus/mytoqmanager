// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.util.Enumeration;
import java.util.Vector;
import org.apache.log4j.*;

// Referenced classes of package org.apache.log4j.spi:
//            LoggerRepository, NOPLogger, HierarchyEventListener, LoggerFactory

public final class NOPLoggerRepository
    implements LoggerRepository
{


    public void addHierarchyEventListener(HierarchyEventListener hierarchyeventlistener)
    {
    }

    public void emitNoAppenderWarning(Category category)
    {
    }

    public Logger exists(String s)
    {
        return null;
    }

    public void fireAddAppenderEvent(Category category, Appender appender)
    {
    }

    public Enumeration getCurrentCategories()
    {
        return getCurrentLoggers();
    }

    public Enumeration getCurrentLoggers()
    {
        return (new Vector()).elements();
    }

    public Logger getLogger(String s)
    {
        return new NOPLogger(this, s);
    }

    public Logger getLogger(String s, LoggerFactory loggerfactory)
    {
        return new NOPLogger(this, s);
    }

    public Logger getRootLogger()
    {
        return new NOPLogger(this, "root");
    }

    public Level getThreshold()
    {
        return Level.OFF;
    }

    public boolean isDisabled(int i)
    {
        return true;
    }

    public void resetConfiguration()
    {
    }

    public void setThreshold(String s)
    {
    }

    public void setThreshold(Level level)
    {
    }

    public void shutdown()
    {
    }
}
