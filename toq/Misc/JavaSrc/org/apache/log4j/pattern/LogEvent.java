// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.io.*;
import java.lang.reflect.Method;
import java.util.*;
import org.apache.log4j.*;
import org.apache.log4j.helpers.Loader;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.or.RendererMap;
import org.apache.log4j.spi.*;

public class LogEvent
    implements Serializable
{

    static final Integer PARAM_ARRAY[] = new Integer[1];
    static final String TO_LEVEL = "toLevel";
    static final Class TO_LEVEL_PARAMS[];
    static Class class$org$apache$log4j$Level;
    static final Hashtable methodCache = new Hashtable(3);
    static final long serialVersionUID = 0xf3f2b923740bb53fL;
    private static long startTime = System.currentTimeMillis();
    public final String categoryName;
    public final transient String fqnOfCategoryClass;
    public transient Priority level;
    private LocationInfo locationInfo;
    private transient Category logger;
    private Hashtable mdcCopy;
    private boolean mdcCopyLookupRequired;
    private transient Object message;
    private String ndc;
    private boolean ndcLookupRequired;
    private String renderedMessage;
    private String threadName;
    private ThrowableInformation throwableInfo;
    public final long timeStamp;

    public LogEvent(String s, Category category, long l, Priority priority, Object obj, Throwable throwable)
    {
        ndcLookupRequired = true;
        mdcCopyLookupRequired = true;
        fqnOfCategoryClass = s;
        logger = category;
        categoryName = category.getName();
        level = priority;
        message = obj;
        if (throwable != null)
            throwableInfo = new ThrowableInformation(throwable);
        timeStamp = l;
    }

    public LogEvent(String s, Category category, Priority priority, Object obj, Throwable throwable)
    {
        ndcLookupRequired = true;
        mdcCopyLookupRequired = true;
        fqnOfCategoryClass = s;
        logger = category;
        categoryName = category.getName();
        level = priority;
        message = obj;
        if (throwable != null)
            throwableInfo = new ThrowableInformation(throwable);
        timeStamp = System.currentTimeMillis();
    }

    public LogEvent(String s, Logger logger1, long l, Level level1, Object obj, String s1, 
            ThrowableInformation throwableinformation, String s2, LocationInfo locationinfo, Map map)
    {
        ndcLookupRequired = true;
        mdcCopyLookupRequired = true;
        fqnOfCategoryClass = s;
        logger = logger1;
        if (logger1 != null)
            categoryName = logger1.getName();
        else
            categoryName = null;
        level = level1;
        message = obj;
        if (throwableinformation != null)
            throwableInfo = throwableinformation;
        timeStamp = l;
        threadName = s1;
        ndcLookupRequired = false;
        ndc = s2;
        locationInfo = locationinfo;
        mdcCopyLookupRequired = false;
        if (map != null)
            mdcCopy = new Hashtable(map);
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

    public static long getStartTime()
    {
        return startTime;
    }

    private void readLevel(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        int i = objectinputstream.readInt();
        String s = (String)objectinputstream.readObject();
        if (s == null)
        {
            Method method;
            try
            {
                level = Level.toLevel(i);
                return;
            }
            catch (Exception exception)
            {
                LogLog.warn("Level deserialization failed, reverting to default.", exception);
            }
            break MISSING_BLOCK_LABEL_109;
        }
        method = (Method)methodCache.get(s);
        if (method != null)
            break MISSING_BLOCK_LABEL_72;
        method = Loader.loadClass(s).getDeclaredMethod("toLevel", TO_LEVEL_PARAMS);
        methodCache.put(s, method);
        PARAM_ARRAY[0] = new Integer(i);
        level = (Level)method.invoke(null, PARAM_ARRAY);
        return;
        level = Level.toLevel(i);
        return;
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        readLevel(objectinputstream);
        if (locationInfo == null)
            locationInfo = new LocationInfo(null, null);
    }

    private void writeLevel(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.writeInt(level.toInt());
        Class class1 = level.getClass();
        Class class2;
        if (class$org$apache$log4j$Level == null)
        {
            class2 = _mthclass$("org.apache.log4j.Level");
            class$org$apache$log4j$Level = class2;
        } else
        {
            class2 = class$org$apache$log4j$Level;
        }
        if (class1 == class2)
        {
            objectoutputstream.writeObject(null);
            return;
        } else
        {
            objectoutputstream.writeObject(class1.getName());
            return;
        }
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        getThreadName();
        getRenderedMessage();
        getNDC();
        getMDCCopy();
        getThrowableStrRep();
        objectoutputstream.defaultWriteObject();
        writeLevel(objectoutputstream);
    }

    public String getFQNOfLoggerClass()
    {
        return fqnOfCategoryClass;
    }

    public Level getLevel()
    {
        return (Level)level;
    }

    public LocationInfo getLocationInformation()
    {
        if (locationInfo == null)
            locationInfo = new LocationInfo(new Throwable(), fqnOfCategoryClass);
        return locationInfo;
    }

    public String getLoggerName()
    {
        return categoryName;
    }

    public Object getMDC(String s)
    {
        if (mdcCopy != null)
        {
            Object obj = mdcCopy.get(s);
            if (obj != null)
                return obj;
        }
        return MDC.get(s);
    }

    public void getMDCCopy()
    {
        if (mdcCopyLookupRequired)
        {
            mdcCopyLookupRequired = false;
            Hashtable hashtable = MDC.getContext();
            if (hashtable != null)
                mdcCopy = (Hashtable)hashtable.clone();
        }
    }

    public Object getMessage()
    {
        if (message != null)
            return message;
        else
            return getRenderedMessage();
    }

    public String getNDC()
    {
        if (ndcLookupRequired)
        {
            ndcLookupRequired = false;
            ndc = NDC.get();
        }
        return ndc;
    }

    public Map getProperties()
    {
        getMDCCopy();
        Object obj;
        if (mdcCopy == null)
            obj = new HashMap();
        else
            obj = mdcCopy;
        return Collections.unmodifiableMap(((Map) (obj)));
    }

    public final String getProperty(String s)
    {
        Object obj = getMDC(s);
        String s1 = null;
        if (obj != null)
            s1 = obj.toString();
        return s1;
    }

    public Set getPropertyKeySet()
    {
        return getProperties().keySet();
    }

    public String getRenderedMessage()
    {
        if (renderedMessage == null && message != null)
            if (message instanceof String)
            {
                renderedMessage = (String)message;
            } else
            {
                org.apache.log4j.spi.LoggerRepository loggerrepository = logger.getLoggerRepository();
                if (loggerrepository instanceof RendererSupport)
                    renderedMessage = ((RendererSupport)loggerrepository).getRendererMap().findAndRender(message);
                else
                    renderedMessage = message.toString();
            }
        return renderedMessage;
    }

    public String getThreadName()
    {
        if (threadName == null)
            threadName = Thread.currentThread().getName();
        return threadName;
    }

    public ThrowableInformation getThrowableInformation()
    {
        return throwableInfo;
    }

    public String[] getThrowableStrRep()
    {
        if (throwableInfo == null)
            return null;
        else
            return throwableInfo.getThrowableStrRep();
    }

    public final long getTimeStamp()
    {
        return timeStamp;
    }

    public final boolean locationInformationExists()
    {
        return locationInfo != null;
    }

    public final void setProperty(String s, String s1)
    {
        if (mdcCopy == null)
            getMDCCopy();
        if (mdcCopy == null)
            mdcCopy = new Hashtable();
        mdcCopy.put(s, s1);
    }

    static 
    {
        Class aclass[] = new Class[1];
        aclass[0] = Integer.TYPE;
        TO_LEVEL_PARAMS = aclass;
    }
}
