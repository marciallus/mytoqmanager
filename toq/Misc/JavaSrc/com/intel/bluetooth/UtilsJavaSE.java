// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.security.PrivilegedActionException;
import java.util.Properties;
import java.util.Vector;

// Referenced classes of package com.intel.bluetooth:
//            DebugLog, IBMJ9Helper

public class UtilsJavaSE
{
    static interface JavaSE5Features
    {

        public abstract void clearProperty(String s);
    }

    static class StackTraceLocation
    {

        public String className;
        public String fileName;
        public int lineNumber;
        public String methodName;

    }


    static final boolean canCallNotLoadedNativeMethod;
    static boolean detectJava5Helper = true;
    static final boolean ibmJ9midp;
    static boolean java13 = false;
    static boolean java14 = false;
    static JavaSE5Features java5Helper;
    static final boolean javaSECompiledOut;
    static final int javaSpecificationVersion = getJavaSpecificationVersion();

    private UtilsJavaSE()
    {
    }

    private static boolean detectJ9midp()
    {
        String s;
        boolean flag;
        try
        {
            s = System.getProperty("com.ibm.oti.configuration");
        }
        catch (SecurityException securityexception)
        {
            return false;
        }
        flag = false;
        if (s != null)
        {
            int i = s.indexOf("midp");
            flag = false;
            if (i != -1)
                flag = true;
        }
        return flag;
    }

    private static void detectJava5Helper()
    {
        if (java13 || ibmJ9midp || !detectJava5Helper || javaSpecificationVersion < 5)
            return;
        detectJava5Helper = false;
        try
        {
            java5Helper = (JavaSE5Features)Class.forName("com.intel.bluetooth.UtilsJavaSE5").newInstance();
            DebugLog.debug("Use java 1.5+ features:", vmInfo());
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    static Throwable getCause(PrivilegedActionException privilegedactionexception)
    {
        Throwable throwable2;
        try
        {
            throwable2 = privilegedactionexception.getCause();
        }
        catch (Throwable throwable)
        {
            Exception exception;
            try
            {
                exception = privilegedactionexception.getException();
            }
            catch (Throwable throwable1)
            {
                return null;
            }
            return exception;
        }
        return throwable2;
    }

    private static int getJavaSpecificationVersion()
    {
        String s = System.getProperty("java.specification.version");
        if (s == null)
            break MISSING_BLOCK_LABEL_36;
        if (s.length() < 3)
            return 0;
        int i = Integer.valueOf(s.substring(2, 3)).intValue();
        return i;
        Throwable throwable;
        throwable;
        return 0;
    }

    static StackTraceLocation getLocation(Vector vector)
    {
        if (java13 || ibmJ9midp)
            return null;
        StackTraceLocation stacktracelocation;
        if (!java14)
            try
            {
                Class.forName("java.lang.StackTraceElement");
                java14 = true;
                DebugLog.debug("Java 1.4+ detected:", vmInfo());
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                java13 = true;
                return null;
            }
        try
        {
            stacktracelocation = getLocationJava14(vector);
        }
        catch (Throwable throwable)
        {
            java13 = true;
            return null;
        }
        return stacktracelocation;
    }

    private static StackTraceLocation getLocationJava14(Vector vector)
    {
        StackTraceElement astacktraceelement[] = (new Throwable()).getStackTrace();
        int i = 0;
        do
        {
            if (i >= -1 + astacktraceelement.length)
                return null;
            if (vector.contains(astacktraceelement[i].getClassName()))
            {
                String s = astacktraceelement[i + 1].getClassName();
                if (!s.startsWith("java.") && !s.startsWith("sun.") && !vector.contains(s))
                {
                    StackTraceElement stacktraceelement = astacktraceelement[i + 1];
                    StackTraceLocation stacktracelocation = new StackTraceLocation();
                    stacktracelocation.className = stacktraceelement.getClassName();
                    stacktracelocation.methodName = stacktraceelement.getMethodName();
                    stacktracelocation.fileName = stacktraceelement.getFileName();
                    stacktracelocation.lineNumber = stacktraceelement.getLineNumber();
                    return stacktracelocation;
                }
            }
            i++;
        } while (true);
    }

    public static Throwable initCause(Throwable throwable, Throwable throwable1)
    {
        if (!java14 || throwable1 == null)
            return throwable;
        Throwable throwable3;
        try
        {
            throwable3 = throwable.initCause(throwable1);
        }
        catch (Throwable throwable2)
        {
            return throwable;
        }
        return throwable3;
    }

    static boolean isCurrentThreadInterrupted()
    {
        if (ibmJ9midp)
            return false;
        else
            return Thread.interrupted();
    }

    static boolean runtimeAddShutdownHook(Thread thread)
    {
        if (!ibmJ9midp)
            break MISSING_BLOCK_LABEL_12;
        IBMJ9Helper.addShutdownClass(thread);
        return true;
        try
        {
            Runtime.getRuntime().addShutdownHook(thread);
        }
        catch (Throwable throwable)
        {
            return false;
        }
        return true;
    }

    static void runtimeRemoveShutdownHook(Thread thread)
    {
        try
        {
            if (!ibmJ9midp)
                Runtime.getRuntime().removeShutdownHook(thread);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    static void setSystemProperty(String s, String s1)
    {
        if (!ibmJ9midp) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Properties properties = System.getProperties();
        if (s1 == null) goto _L4; else goto _L3
_L3:
        boolean flag1;
        properties.put(s, s1);
        flag1 = s1.equals(System.getProperty(s));
        boolean flag = flag1;
_L7:
        if (flag) goto _L1; else goto _L5
_L5:
        if (s1 != null)
            try
            {
                System.setProperty(s, s1);
                return;
            }
            catch (Throwable throwable)
            {
                return;
            }
          goto _L6
_L4:
        String s2;
        properties.remove(s);
        s2 = System.getProperty(s);
        if (s2 == null)
            flag = true;
        else
            flag = false;
          goto _L7
_L6:
        detectJava5Helper();
        if (java5Helper != null)
        {
            java5Helper.clearProperty(s);
            return;
        }
          goto _L1
        SecurityException securityexception;
        securityexception;
        flag = false;
          goto _L7
    }

    public static void threadSetDaemon(Thread thread)
    {
        try
        {
            if (!ibmJ9midp)
                thread.setDaemon(true);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    static String vmInfo()
    {
        String s;
        try
        {
            s = (new StringBuilder(String.valueOf(System.getProperty("java.version")))).append("; ").append(System.getProperty("java.vm.name")).append("; ").append(System.getProperty("java.vendor")).toString();
        }
        catch (SecurityException securityexception)
        {
            return "";
        }
        return s;
    }

    static 
    {
        ibmJ9midp = detectJ9midp();
        boolean flag = ibmJ9midp;
        boolean flag1 = false;
        if (!flag)
            flag1 = true;
        canCallNotLoadedNativeMethod = flag1;
    }
}
