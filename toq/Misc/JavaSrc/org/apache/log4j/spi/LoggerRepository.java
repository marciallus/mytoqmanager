// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.util.Enumeration;
import org.apache.log4j.*;

// Referenced classes of package org.apache.log4j.spi:
//            HierarchyEventListener, LoggerFactory

public interface LoggerRepository
{

    public abstract void addHierarchyEventListener(HierarchyEventListener hierarchyeventlistener);

    public abstract void emitNoAppenderWarning(Category category);

    public abstract Logger exists(String s);

    public abstract void fireAddAppenderEvent(Category category, Appender appender);

    public abstract Enumeration getCurrentCategories();

    public abstract Enumeration getCurrentLoggers();

    public abstract Logger getLogger(String s);

    public abstract Logger getLogger(String s, LoggerFactory loggerfactory);

    public abstract Logger getRootLogger();

    public abstract Level getThreshold();

    public abstract boolean isDisabled(int i);

    public abstract void resetConfiguration();

    public abstract void setThreshold(String s);

    public abstract void setThreshold(Level level);

    public abstract void shutdown();
}
