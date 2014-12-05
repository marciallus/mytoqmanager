// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;


// Referenced classes of package org.apache.log4j:
//            Logger, ConsoleAppender, PatternLayout, LogManager, 
//            Appender

public class BasicConfigurator
{


    public static void configure()
    {
        Logger.getRootLogger().addAppender(new ConsoleAppender(new PatternLayout("%r [%t] %p %c %x - %m%n")));
    }

    public static void configure(Appender appender)
    {
        Logger.getRootLogger().addAppender(appender);
    }

    public static void resetConfiguration()
    {
        LogManager.resetConfiguration();
    }
}
