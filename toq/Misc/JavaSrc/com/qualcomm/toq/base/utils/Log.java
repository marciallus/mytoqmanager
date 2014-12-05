// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.utils;

import java.io.PrintWriter;
import java.io.StringWriter;
import org.apache.log4j.Logger;

// Referenced classes of package com.qualcomm.toq.base.utils:
//            ProjectConfig

public class Log
{

    public static final boolean enableLog = true;
    public static final boolean enableUsageLog = true;


    public static void d(String s, String s1)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).debug(s1);
    }

    public static void d(String s, String s1, Throwable throwable)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).debug(s1, throwable);
    }

    public static void e(String s, String s1)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).error(s1);
    }

    public static void e(String s, String s1, Throwable throwable)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).error(s1, throwable);
    }

    public static void i(String s, String s1)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).info(s1);
    }

    public static void i(String s, String s1, Throwable throwable)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).info(s1, throwable);
    }

    public static void logException(String s, Exception exception)
    {
        printStackTrace(exception);
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            exception.printStackTrace(printwriter);
            printwriter.close();
            Logger.getLogger(s).error(stringwriter.toString());
        }
    }

    public static void logException(String s, Exception exception, String s1)
    {
        printStackTrace(exception);
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
        {
            StringWriter stringwriter = new StringWriter();
            PrintWriter printwriter = new PrintWriter(stringwriter);
            exception.printStackTrace(printwriter);
            printwriter.close();
            Logger logger = Logger.getLogger(s);
            Object aobj[] = new Object[2];
            aobj[0] = s1;
            aobj[1] = stringwriter.toString();
            logger.error(String.format("%s\n%s", aobj));
        }
    }

    public static void printDeveloperLog(String s, String s1)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
        {
            Logger.getLogger(s).debug(s1);
            (new Exception()).printStackTrace();
        }
    }

    public static void printStackTrace(Exception exception)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            exception.printStackTrace();
    }

    public static void printUsageLog(String s, String s1)
    {
        boolean flag;
        if (s != null)
            flag = true;
        else
            flag = false;
        boolean flag1;
        if (s1 != null)
            flag1 = true;
        else
            flag1 = false;
        if (flag1 & flag)
            Logger.getLogger("ToqUsageLog").fatal(String.format("%s: %s", new Object[] {
                s, s1
            }));
        else
        if (s1 != null)
        {
            Logger.getLogger("ToqUsageLog").fatal(s1);
            return;
        }
    }

    public static void v(String s, String s1)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).trace(s1);
    }

    public static void v(String s, String s1, Throwable throwable)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).trace(s1, throwable);
    }

    public static void w(String s, String s1)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).warn(s1);
    }

    public static void w(String s, String s1, Throwable throwable)
    {
        if (ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("developer"))
            Logger.getLogger(s).warn(s1, throwable);
    }
}
