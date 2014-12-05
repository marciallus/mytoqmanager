// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.logger;

import de.mindpipe.android.logging.log4j.LogCatAppender;
import java.util.HashMap;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

// Referenced classes of package com.qualcomm.toq.smartwatch.logger:
//            AbstractToqLoggerImpl, ToqLogger

public class ToqLoggerFactory
{

    private static ToqLoggerFactory inst;
    private HashMap mFactoryRegisteredLoggers;

    private ToqLoggerFactory()
    {
        mFactoryRegisteredLoggers = new HashMap();
    }

    public static ToqLoggerFactory getInstance()
    {
        com/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
        JVM INSTR monitorenter ;
        ToqLoggerFactory toqloggerfactory;
        if (inst == null)
            inst = new ToqLoggerFactory();
        toqloggerfactory = inst;
        com/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
        JVM INSTR monitorexit ;
        return toqloggerfactory;
        Exception exception;
        exception;
        throw exception;
    }

    public void configureLogger(String s)
    {
        if (s != null)
            ((AbstractToqLoggerImpl)mFactoryRegisteredLoggers.get(s)).configure();
    }

    public ToqLogger getLoggerInstance(String s)
    {
        if (mFactoryRegisteredLoggers != null)
            return (ToqLogger)mFactoryRegisteredLoggers.get(s);
        else
            return null;
    }

    public void registerLogger(String s, AbstractToqLoggerImpl abstracttoqloggerimpl)
    {
        if (mFactoryRegisteredLoggers != null)
            mFactoryRegisteredLoggers.put(s, abstracttoqloggerimpl);
    }

    public void resetLoggerConfiguration()
    {
        LogManager.resetConfiguration();
        Logger.getRootLogger().removeAllAppenders();
        Logger.getRootLogger().addAppender(new LogCatAppender());
    }
}
