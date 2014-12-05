// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.spi.LoggerFactory;
import org.apache.log4j.spi.LoggerRepository;

// Referenced classes of package org.apache.log4j:
//            Category, LogManager, Level

public class Logger extends Category
{

    private static final String FQCN;
    static Class class$org$apache$log4j$Logger;

    protected Logger(String s)
    {
        super(s);
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

    public static Logger getLogger(Class class1)
    {
        return LogManager.getLogger(class1.getName());
    }

    public static Logger getLogger(String s)
    {
        return LogManager.getLogger(s);
    }

    public static Logger getLogger(String s, LoggerFactory loggerfactory)
    {
        return LogManager.getLogger(s, loggerfactory);
    }

    public static Logger getRootLogger()
    {
        return LogManager.getRootLogger();
    }

    public boolean isTraceEnabled()
    {
        if (repository.isDisabled(5000))
            return false;
        else
            return Level.TRACE.isGreaterOrEqual(getEffectiveLevel());
    }

    public void trace(Object obj)
    {
        if (!repository.isDisabled(5000) && Level.TRACE.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.TRACE, obj, null);
            return;
        } else
        {
            return;
        }
    }

    public void trace(Object obj, Throwable throwable)
    {
        if (!repository.isDisabled(5000) && Level.TRACE.isGreaterOrEqual(getEffectiveLevel()))
        {
            forcedLog(FQCN, Level.TRACE, obj, throwable);
            return;
        } else
        {
            return;
        }
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$Logger == null)
        {
            class1 = _mthclass$("org.apache.log4j.Logger");
            class$org$apache$log4j$Logger = class1;
        } else
        {
            class1 = class$org$apache$log4j$Logger;
        }
        FQCN = class1.getName();
    }
}
