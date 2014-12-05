// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.text.MessageFormat;
import java.util.*;
import org.apache.log4j.helpers.AppenderAttachableImpl;
import org.apache.log4j.helpers.NullEnumeration;
import org.apache.log4j.spi.AppenderAttachable;
import org.apache.log4j.spi.HierarchyEventListener;
import org.apache.log4j.spi.LoggerRepository;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            LogManager, Hierarchy, Appender, Level, 
//            Priority, Logger

public class Category
    implements AppenderAttachable
{

    private static final String FQCN;
    static Class class$org$apache$log4j$Category;
    AppenderAttachableImpl aai;
    protected boolean additive;
    protected volatile Level level;
    protected String name;
    protected volatile Category parent;
    protected LoggerRepository repository;
    protected ResourceBundle resourceBundle;

    protected Category(String s)
    {
        additive = true;
        name = s;
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public static Logger exists(String s)
    {
        return LogManager.exists(s);
    }

    private void fireRemoveAppenderEvent(Appender appender)
    {
        if (appender != null)
            if (repository instanceof Hierarchy)
                ((Hierarchy)repository).fireRemoveAppenderEvent(this, appender);
            else
            if (repository instanceof HierarchyEventListener)
            {
                ((HierarchyEventListener)repository).removeAppenderEvent(this, appender);
                return;
            }
    }

    public static Enumeration getCurrentCategories()
    {
        return LogManager.getCurrentLoggers();
    }

    public static LoggerRepository getDefaultHierarchy()
    {
        return LogManager.getLoggerRepository();
    }

    public static Category getInstance(Class class1)
    {
        return LogManager.getLogger(class1);
    }

    public static Category getInstance(String s)
    {
        return LogManager.getLogger(s);
    }

    public static final Category getRoot()
    {
        return LogManager.getRootLogger();
    }

    public static void shutdown()
    {
        LogManager.shutdown();
    }

    public void addAppender(Appender appender)
    {
        this;
        JVM INSTR monitorenter ;
        if (aai == null)
            aai = new AppenderAttachableImpl();
        aai.addAppender(appender);
        repository.fireAddAppenderEvent(this, appender);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void assertLog(boolean flag, String s)
    {
        if (!flag)
            error(s);
    }

    public void callAppenders(LoggingEvent loggingevent)
    {
        int i;
        Category category;
        i = 0;
        category = this;
_L4:
        if (category == null) goto _L2; else goto _L1
_L1:
        category;
        JVM INSTR monitorenter ;
        if (category.aai != null)
            i += category.aai.appendLoopOnAppenders(loggingevent);
        if (category.additive)
            break MISSING_BLOCK_LABEL_52;
        category;
        JVM INSTR monitorexit ;
_L2:
        if (i == 0)
            repository.emitNoAppenderWarning(this);
        return;
        category;
        JVM INSTR monitorexit ;
        category = category.parent;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        category;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void closeNestedAppenders()
    {
        this;
        JVM INSTR monitorenter ;
        Enumeration enumeration = getAllAppenders();
        if (enumeration == null)
            break MISSING_BLOCK_LABEL_51;
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            Appender appender = (Appender)enumeration.nextElement();
            if (appender instanceof AppenderAttachable)
                appender.close();
        } while (true);
        break MISSING_BLOCK_LABEL_51;
        Exception exception;
        exception;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public void debug(Object obj)
    {
        if (!repository.isDisabled(10000) && Level.DEBUG.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.DEBUG, obj, null);
            return;
        } else
        {
            return;
        }
    }

    public void debug(Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(10000) && Level.DEBUG.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.DEBUG, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    public void error(Object obj)
    {
        if (!repository.isDisabled(40000) && Level.ERROR.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.ERROR, obj, null);
            return;
        } else
        {
            return;
        }
    }

    public void error(Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(40000) && Level.ERROR.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.ERROR, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    public void fatal(Object obj)
    {
        if (!repository.isDisabled(50000) && Level.FATAL.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.FATAL, obj, null);
            return;
        } else
        {
            return;
        }
    }

    public void fatal(Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(50000) && Level.FATAL.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.FATAL, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    protected void forcedLog(String s, Priority priority, Object obj, Throwable throwable)
    {
        callAppenders(new LoggingEvent(s, this, priority, obj, throwable));
    }

    public boolean getAdditivity()
    {
        return additive;
    }

    public Enumeration getAllAppenders()
    {
        this;
        JVM INSTR monitorenter ;
        if (aai != null) goto _L2; else goto _L1
_L1:
        NullEnumeration nullenumeration = NullEnumeration.getInstance();
        Object obj = nullenumeration;
_L4:
        this;
        JVM INSTR monitorexit ;
        return ((Enumeration) (obj));
_L2:
        Enumeration enumeration = aai.getAllAppenders();
        obj = enumeration;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public Appender getAppender(String s)
    {
        this;
        JVM INSTR monitorenter ;
        AppenderAttachableImpl appenderattachableimpl = aai;
        if (appenderattachableimpl != null && s != null) goto _L2; else goto _L1
_L1:
        Appender appender = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return appender;
_L2:
        Appender appender1 = aai.getAppender(s);
        appender = appender1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public Priority getChainedPriority()
    {
        for (Category category = this; category != null; category = category.parent)
            if (category.level != null)
                return category.level;

        return null;
    }

    public Level getEffectiveLevel()
    {
        for (Category category = this; category != null; category = category.parent)
            if (category.level != null)
                return category.level;

        return null;
    }

    public LoggerRepository getHierarchy()
    {
        return repository;
    }

    public final Level getLevel()
    {
        return level;
    }

    public LoggerRepository getLoggerRepository()
    {
        return repository;
    }

    public final String getName()
    {
        return name;
    }

    public final Category getParent()
    {
        return parent;
    }

    public final Level getPriority()
    {
        return level;
    }

    public ResourceBundle getResourceBundle()
    {
        for (Category category = this; category != null; category = category.parent)
            if (category.resourceBundle != null)
                return category.resourceBundle;

        return null;
    }

    protected String getResourceBundleString(String s)
    {
        ResourceBundle resourcebundle = getResourceBundle();
        if (resourcebundle == null)
            return null;
        String s1;
        try
        {
            s1 = resourcebundle.getString(s);
        }
        catch (MissingResourceException missingresourceexception)
        {
            error("No resource is associated with key \"" + s + "\".");
            return null;
        }
        return s1;
    }

    public void info(Object obj)
    {
        if (!repository.isDisabled(20000) && Level.INFO.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.INFO, obj, null);
            return;
        } else
        {
            return;
        }
    }

    public void info(Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(20000) && Level.INFO.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.INFO, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    public boolean isAttached(Appender appender)
    {
        if (appender != null && aai != null)
            return aai.isAttached(appender);
        else
            return false;
    }

    public boolean isDebugEnabled()
    {
        if (repository.isDisabled(10000))
            return false;
        else
            return Level.DEBUG.isGreaterOrEqual(getEffectiveLevel());
    }

    public boolean isEnabledFor(Priority priority)
    {
        if (repository.isDisabled(priority.level))
            return false;
        else
            return priority.isGreaterOrEqual(getEffectiveLevel());
    }

    public boolean isInfoEnabled()
    {
        if (repository.isDisabled(20000))
            return false;
        else
            return Level.INFO.isGreaterOrEqual(getEffectiveLevel());
    }

    public void l7dlog(Priority priority, String s, Throwable throwable)
    {
        if (!repository.isDisabled(priority.level) && priority.isGreaterOrEqual(getEffectiveLevel()))
        {
            String s1 = getResourceBundleString(s);
            if (s1 == null)
                s1 = s;
            forcedLog(FQCN, priority, s1, throwable);
            return;
        } else
        {
            return;
        }
    }

    public void l7dlog(Priority priority, String s, Object aobj[], Throwable throwable)
    {
        if (!repository.isDisabled(priority.level) && priority.isGreaterOrEqual(getEffectiveLevel()))
        {
            String s1 = getResourceBundleString(s);
            String s2;
            if (s1 == null)
                s2 = s;
            else
                s2 = MessageFormat.format(s1, aobj);
            forcedLog(FQCN, priority, s2, throwable);
            return;
        } else
        {
            return;
        }
    }

    public void log(String s, Priority priority, Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(priority.level) && priority.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(s, priority, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    public void log(Priority priority, Object obj)
    {
        if (!repository.isDisabled(priority.level) && priority.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, priority, obj, null);
            return;
        } else
        {
            return;
        }
    }

    public void log(Priority priority, Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(priority.level) && priority.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, priority, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    public void removeAllAppenders()
    {
        this;
        JVM INSTR monitorenter ;
        Vector vector;
        Enumeration enumeration;
        if (aai == null)
            break MISSING_BLOCK_LABEL_102;
        vector = new Vector();
        enumeration = aai.getAllAppenders();
_L2:
        if (enumeration == null)
            break; /* Loop/switch isn't completed */
        if (!enumeration.hasMoreElements())
            break; /* Loop/switch isn't completed */
        vector.add(enumeration.nextElement());
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        throw exception;
_L1:
        aai.removeAllAppenders();
        for (Enumeration enumeration1 = vector.elements(); enumeration1.hasMoreElements(); fireRemoveAppenderEvent((Appender)enumeration1.nextElement()));
        aai = null;
        this;
        JVM INSTR monitorexit ;
    }

    public void removeAppender(String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (s == null) goto _L2; else goto _L1
_L1:
        AppenderAttachableImpl appenderattachableimpl = aai;
        if (appenderattachableimpl != null) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        Appender appender;
        appender = aai.getAppender(s);
        aai.removeAppender(s);
        if (appender == null)
            continue; /* Loop/switch isn't completed */
        fireRemoveAppenderEvent(appender);
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public void removeAppender(Appender appender)
    {
        this;
        JVM INSTR monitorenter ;
        if (appender == null) goto _L2; else goto _L1
_L1:
        AppenderAttachableImpl appenderattachableimpl = aai;
        if (appenderattachableimpl != null) goto _L3; else goto _L2
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L3:
        boolean flag;
        flag = aai.isAttached(appender);
        aai.removeAppender(appender);
        if (!flag)
            continue; /* Loop/switch isn't completed */
        fireRemoveAppenderEvent(appender);
        if (true) goto _L2; else goto _L4
_L4:
        Exception exception;
        exception;
        throw exception;
    }

    public void setAdditivity(boolean flag)
    {
        additive = flag;
    }

    final void setHierarchy(LoggerRepository loggerrepository)
    {
        repository = loggerrepository;
    }

    public void setLevel(Level level1)
    {
        level = level1;
    }

    public void setPriority(Priority priority)
    {
        level = (Level)priority;
    }

    public void setResourceBundle(ResourceBundle resourcebundle)
    {
        resourceBundle = resourcebundle;
    }

    public void warn(Object obj)
    {
        if (!repository.isDisabled(30000) && Level.WARN.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.WARN, obj, null);
            return;
        } else
        {
            return;
        }
    }

    public void warn(Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(30000) && Level.WARN.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.WARN, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$Category == null)
        {
            class1 = _mthclass$("org.apache.log4j.Category");
            class$org$apache$log4j$Category = class1;
        } else
        {
            class1 = class$org$apache$log4j$Category;
        }
        FQCN = class1.getName();
    }
}
