// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.util.*;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.or.ObjectRenderer;
import org.apache.log4j.or.RendererMap;
import org.apache.log4j.spi.HierarchyEventListener;
import org.apache.log4j.spi.LoggerFactory;
import org.apache.log4j.spi.LoggerRepository;
import org.apache.log4j.spi.RendererSupport;
import org.apache.log4j.spi.ThrowableRenderer;
import org.apache.log4j.spi.ThrowableRendererSupport;

// Referenced classes of package org.apache.log4j:
//            Level, Logger, DefaultCategoryFactory, ProvisionNode, 
//            Category, CategoryKey, Appender

public class Hierarchy
    implements LoggerRepository, RendererSupport, ThrowableRendererSupport
{

    private LoggerFactory defaultFactory;
    boolean emittedNoAppenderWarning;
    boolean emittedNoResourceBundleWarning;
    Hashtable ht;
    private Vector listeners;
    RendererMap rendererMap;
    Logger root;
    Level threshold;
    int thresholdInt;
    private ThrowableRenderer throwableRenderer;

    public Hierarchy(Logger logger)
    {
        emittedNoAppenderWarning = false;
        emittedNoResourceBundleWarning = false;
        throwableRenderer = null;
        ht = new Hashtable();
        listeners = new Vector(1);
        root = logger;
        setThreshold(Level.ALL);
        root.setHierarchy(this);
        rendererMap = new RendererMap();
        defaultFactory = new DefaultCategoryFactory();
    }

    private final void updateChildren(ProvisionNode provisionnode, Logger logger)
    {
        int i = provisionnode.size();
        for (int j = 0; j < i; j++)
        {
            Logger logger1 = (Logger)provisionnode.elementAt(j);
            if (!logger1.parent.name.startsWith(logger.name))
            {
                logger.parent = logger1.parent;
                logger1.parent = logger;
            }
        }

    }

    private final void updateParents(Logger logger)
    {
        String s = logger.name;
        int i = s.lastIndexOf('.', -1 + s.length());
        do
        {
label0:
            {
                Object obj;
label1:
                {
                    boolean flag = false;
                    if (i >= 0)
                    {
                        CategoryKey categorykey = new CategoryKey(s.substring(0, i));
                        obj = ht.get(categorykey);
                        if (obj == null)
                        {
                            ProvisionNode provisionnode = new ProvisionNode(logger);
                            ht.put(categorykey, provisionnode);
                            break label0;
                        }
                        if (!(obj instanceof Category))
                            break label1;
                        flag = true;
                        logger.parent = (Category)obj;
                    }
                    if (!flag)
                        logger.parent = root;
                    return;
                }
                if (obj instanceof ProvisionNode)
                    ((ProvisionNode)obj).addElement(logger);
                else
                    (new IllegalStateException("unexpected object type " + obj.getClass() + " in ht.")).printStackTrace();
            }
            i = s.lastIndexOf('.', i - 1);
        } while (true);
    }

    public void addHierarchyEventListener(HierarchyEventListener hierarchyeventlistener)
    {
        if (listeners.contains(hierarchyeventlistener))
        {
            LogLog.warn("Ignoring attempt to add an existent listener.");
            return;
        } else
        {
            listeners.addElement(hierarchyeventlistener);
            return;
        }
    }

    public void addRenderer(Class class1, ObjectRenderer objectrenderer)
    {
        rendererMap.put(class1, objectrenderer);
    }

    public void clear()
    {
        ht.clear();
    }

    public void emitNoAppenderWarning(Category category)
    {
        if (!emittedNoAppenderWarning)
        {
            LogLog.warn("No appenders could be found for logger (" + category.getName() + ").");
            LogLog.warn("Please initialize the log4j system properly.");
            LogLog.warn("See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info.");
            emittedNoAppenderWarning = true;
        }
    }

    public Logger exists(String s)
    {
        Object obj = ht.get(new CategoryKey(s));
        if (obj instanceof Logger)
            return (Logger)obj;
        else
            return null;
    }

    public void fireAddAppenderEvent(Category category, Appender appender)
    {
        if (listeners != null)
        {
            int i = listeners.size();
            for (int j = 0; j < i; j++)
                ((HierarchyEventListener)listeners.elementAt(j)).addAppenderEvent(category, appender);

        }
    }

    void fireRemoveAppenderEvent(Category category, Appender appender)
    {
        if (listeners != null)
        {
            int i = listeners.size();
            for (int j = 0; j < i; j++)
                ((HierarchyEventListener)listeners.elementAt(j)).removeAppenderEvent(category, appender);

        }
    }

    public Enumeration getCurrentCategories()
    {
        return getCurrentLoggers();
    }

    public Enumeration getCurrentLoggers()
    {
        Vector vector = new Vector(ht.size());
        Enumeration enumeration = ht.elements();
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            Object obj = enumeration.nextElement();
            if (obj instanceof Logger)
                vector.addElement(obj);
        } while (true);
        return vector.elements();
    }

    public Logger getLogger(String s)
    {
        return getLogger(s, defaultFactory);
    }

    public Logger getLogger(String s, LoggerFactory loggerfactory)
    {
        CategoryKey categorykey = new CategoryKey(s);
        Hashtable hashtable = ht;
        hashtable;
        JVM INSTR monitorenter ;
        Object obj = ht.get(categorykey);
        if (obj != null)
            break MISSING_BLOCK_LABEL_71;
        Logger logger;
        logger = loggerfactory.makeNewLoggerInstance(s);
        logger.setHierarchy(this);
        ht.put(categorykey, logger);
        updateParents(logger);
        hashtable;
        JVM INSTR monitorexit ;
        return logger;
        Logger logger2;
        if (!(obj instanceof Logger))
            break MISSING_BLOCK_LABEL_92;
        logger2 = (Logger)obj;
        hashtable;
        JVM INSTR monitorexit ;
        return logger2;
        Logger logger1;
        if (!(obj instanceof ProvisionNode))
            break MISSING_BLOCK_LABEL_157;
        logger1 = loggerfactory.makeNewLoggerInstance(s);
        logger1.setHierarchy(this);
        ht.put(categorykey, logger1);
        updateChildren((ProvisionNode)obj, logger1);
        updateParents(logger1);
        return logger1;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        hashtable;
        JVM INSTR monitorexit ;
        return null;
    }

    public RendererMap getRendererMap()
    {
        return rendererMap;
    }

    public Logger getRootLogger()
    {
        return root;
    }

    public Level getThreshold()
    {
        return threshold;
    }

    public ThrowableRenderer getThrowableRenderer()
    {
        return throwableRenderer;
    }

    public boolean isDisabled(int i)
    {
        return thresholdInt > i;
    }

    public void overrideAsNeeded(String s)
    {
        LogLog.warn("The Hiearchy.overrideAsNeeded method has been deprecated.");
    }

    public void resetConfiguration()
    {
        getRootLogger().setLevel(Level.DEBUG);
        root.setResourceBundle(null);
        setThreshold(Level.ALL);
        Hashtable hashtable = ht;
        hashtable;
        JVM INSTR monitorenter ;
        shutdown();
        Logger logger;
        for (Enumeration enumeration = getCurrentLoggers(); enumeration.hasMoreElements(); logger.setResourceBundle(null))
        {
            logger = (Logger)enumeration.nextElement();
            logger.setLevel(null);
            logger.setAdditivity(true);
        }

        break MISSING_BLOCK_LABEL_87;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        hashtable;
        JVM INSTR monitorexit ;
        rendererMap.clear();
        throwableRenderer = null;
        return;
    }

    public void setDisableOverride(String s)
    {
        LogLog.warn("The Hiearchy.setDisableOverride method has been deprecated.");
    }

    public void setRenderer(Class class1, ObjectRenderer objectrenderer)
    {
        rendererMap.put(class1, objectrenderer);
    }

    public void setThreshold(String s)
    {
        Level level = Level.toLevel(s, null);
        if (level != null)
        {
            setThreshold(level);
            return;
        } else
        {
            LogLog.warn("Could not convert [" + s + "] to Level.");
            return;
        }
    }

    public void setThreshold(Level level)
    {
        if (level != null)
        {
            thresholdInt = level.level;
            threshold = level;
        }
    }

    public void setThrowableRenderer(ThrowableRenderer throwablerenderer)
    {
        throwableRenderer = throwablerenderer;
    }

    public void shutdown()
    {
        Logger logger;
        logger = getRootLogger();
        logger.closeNestedAppenders();
        Hashtable hashtable = ht;
        hashtable;
        JVM INSTR monitorenter ;
        for (Enumeration enumeration = getCurrentLoggers(); enumeration.hasMoreElements(); ((Logger)enumeration.nextElement()).closeNestedAppenders());
        break MISSING_BLOCK_LABEL_53;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        logger.removeAllAppenders();
        for (Enumeration enumeration1 = getCurrentLoggers(); enumeration1.hasMoreElements(); ((Logger)enumeration1.nextElement()).removeAllAppenders());
        hashtable;
        JVM INSTR monitorexit ;
    }
}
