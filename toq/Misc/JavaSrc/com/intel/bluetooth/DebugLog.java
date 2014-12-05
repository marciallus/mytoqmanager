// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.PrintStream;
import java.util.*;

// Referenced classes of package com.intel.bluetooth:
//            UtilsJavaSE, Utils, BlueCoveImpl

public abstract class DebugLog
{
    public static interface LoggerAppender
    {

        public abstract void appendLog(int i, String s, Throwable throwable);
    }

    public static interface LoggerAppenderExt
        extends LoggerAppender
    {

        public abstract boolean isLogEnabled(int i);
    }


    public static final int DEBUG = 1;
    public static final int ERROR = 4;
    private static final String FQCN = com/intel/bluetooth/DebugLog.getName();
    private static final boolean debugCompiledOut;
    private static boolean debugEnabled = false;
    private static boolean debugInternalEnabled = false;
    private static final Vector fqcnSet;
    private static boolean initialized = false;
    private static boolean java13 = false;
    private static Vector loggerAppenders = new Vector();

    private DebugLog()
    {
    }

    public static void addAppender(LoggerAppender loggerappender)
    {
        loggerAppenders.addElement(loggerappender);
    }

    private static void callAppenders(int i, String s, Throwable throwable)
    {
        Enumeration enumeration = loggerAppenders.elements();
        do
        {
            if (!enumeration.hasMoreElements())
                return;
            ((LoggerAppender)enumeration.nextElement()).appendLog(i, s, throwable);
        } while (true);
    }

    private static String d00(int i)
    {
        if (i > 9)
            return String.valueOf(i);
        else
            return (new StringBuilder("0")).append(String.valueOf(i)).toString();
    }

    private static String d000(int i)
    {
        if (i > 99)
            return String.valueOf(i);
        if (i > 9)
            return (new StringBuilder("0")).append(String.valueOf(i)).toString();
        else
            return (new StringBuilder("00")).append(String.valueOf(i)).toString();
    }

    public static void debug(String s)
    {
        if (isDebugEnabled())
        {
            log(s, null, null);
            printLocation();
            callAppenders(1, s, null);
        }
    }

    public static void debug(String s, long l)
    {
        if (isDebugEnabled())
        {
            log(s, " ", Long.toString(l));
            printLocation();
            callAppenders(1, (new StringBuilder(String.valueOf(s))).append(" ").append(Long.toString(l)).toString(), null);
        }
    }

    public static void debug(String s, Object obj)
    {
        if (isDebugEnabled())
        {
            log(s, " ", obj.toString());
            printLocation();
            callAppenders(1, (new StringBuilder(String.valueOf(s))).append(" ").append(obj.toString()).toString(), null);
        }
    }

    public static void debug(String s, String s1)
    {
        if (isDebugEnabled())
        {
            log(s, " ", s1);
            printLocation();
            callAppenders(1, (new StringBuilder(String.valueOf(s))).append(" ").append(s1).toString(), null);
        }
    }

    public static void debug(String s, String s1, String s2)
    {
        if (isDebugEnabled())
        {
            log(s, " ", (new StringBuilder(String.valueOf(s1))).append(" ").append(s2).toString());
            printLocation();
            callAppenders(1, (new StringBuilder(String.valueOf(s))).append(" ").append(s1).append(" ").append(s2).toString(), null);
        }
    }

    public static void debug(String s, Throwable throwable)
    {
        if (isDebugEnabled())
        {
            log(s, " ", throwable.toString());
            printLocation();
            if (!UtilsJavaSE.ibmJ9midp)
                throwable.printStackTrace(System.out);
            else
            if (debugInternalEnabled)
                throwable.printStackTrace();
            callAppenders(1, s, throwable);
        }
    }

    public static void debug(String s, boolean flag)
    {
        if (isDebugEnabled())
        {
            log(s, " ", String.valueOf(flag));
            printLocation();
            callAppenders(1, (new StringBuilder(String.valueOf(s))).append(" ").append(flag).toString(), null);
        }
    }

    public static void debug(String s, byte abyte0[])
    {
        int i;
        if (abyte0 == null)
            i = 0;
        else
            i = abyte0.length;
        debug(s, abyte0, 0, i);
    }

    public static void debug(String s, byte abyte0[], int i, int j)
    {
        if (!isDebugEnabled()) goto _L2; else goto _L1
_L1:
        StringBuffer stringbuffer = new StringBuffer();
        if (abyte0 != null) goto _L4; else goto _L3
_L3:
        stringbuffer.append(" null byte[]");
          goto _L5
_L4:
        int k;
        stringbuffer.append(" [");
        k = i;
_L9:
        if (k < i + j) goto _L7; else goto _L6
_L6:
        stringbuffer.append("]");
        if (j > 4)
            stringbuffer.append(" ").append(j);
_L5:
        log(s, stringbuffer.toString(), null);
        printLocation();
        callAppenders(1, (new StringBuilder(String.valueOf(s))).append(stringbuffer.toString()).toString(), null);
_L2:
        return;
_L7:
        if (k != i)
            stringbuffer.append(", ");
        stringbuffer.append((new Byte(abyte0[k])).toString());
        k++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static void debug(String s, int ai[])
    {
        int i;
        if (ai == null)
            i = 0;
        else
            i = ai.length;
        debug(s, ai, 0, i);
    }

    public static void debug(String s, int ai[], int i, int j)
    {
        if (!isDebugEnabled()) goto _L2; else goto _L1
_L1:
        StringBuffer stringbuffer = new StringBuffer();
        if (ai != null) goto _L4; else goto _L3
_L3:
        stringbuffer.append(" null int[]");
          goto _L5
_L4:
        int k;
        stringbuffer.append(" [");
        k = i;
_L9:
        if (k < i + j) goto _L7; else goto _L6
_L6:
        stringbuffer.append("]");
        if (j > 4)
            stringbuffer.append(" ").append(j);
_L5:
        log(s, stringbuffer.toString(), null);
        printLocation();
        callAppenders(1, (new StringBuilder(String.valueOf(s))).append(stringbuffer.toString()).toString(), null);
_L2:
        return;
_L7:
        if (k != i)
            stringbuffer.append(", ");
        stringbuffer.append(Integer.toString(ai[k]));
        k++;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static void debug0x(String s, long l)
    {
        if (isDebugEnabled())
        {
            log(s, " 0x", Utils.toHexString(l));
            printLocation();
            callAppenders(1, (new StringBuilder(String.valueOf(s))).append(" 0x").append(Utils.toHexString(l)).toString(), null);
        }
    }

    public static void debug0x(String s, String s1, long l)
    {
        if (isDebugEnabled())
        {
            log(s, (new StringBuilder(" ")).append(s1).append(" 0x").toString(), Utils.toHexString(l));
            printLocation();
            callAppenders(1, (new StringBuilder(String.valueOf(s))).append(" ").append(s1).append(" 0x").append(Utils.toHexString(l)).toString(), null);
        }
    }

    public static void debugNative(String s, String s1)
    {
        if (isDebugEnabled())
        {
            log(s1, "\n\t  ", s);
            callAppenders(1, s1, null);
        }
    }

    public static void error(String s)
    {
        if (isDebugEnabled())
        {
            log("error ", s, null);
            printLocation();
            callAppenders(4, s, null);
        }
    }

    public static void error(String s, long l)
    {
        if (isDebugEnabled())
        {
            log("error ", s, (new StringBuilder(" ")).append(l).toString());
            printLocation();
            callAppenders(4, (new StringBuilder(String.valueOf(s))).append(" ").append(l).toString(), null);
        }
    }

    public static void error(String s, String s1)
    {
        if (isDebugEnabled())
        {
            log("error ", s, (new StringBuilder(" ")).append(s1).toString());
            printLocation();
            callAppenders(4, (new StringBuilder(String.valueOf(s))).append(" ").append(s1).toString(), null);
        }
    }

    public static void error(String s, Throwable throwable)
    {
        if (isDebugEnabled())
        {
            log("error ", s, (new StringBuilder(" ")).append(throwable).toString());
            printLocation();
            if (!UtilsJavaSE.ibmJ9midp)
                throwable.printStackTrace(System.out);
            else
            if (debugInternalEnabled)
                throwable.printStackTrace();
            callAppenders(4, s, throwable);
        }
    }

    public static void fatal(String s)
    {
        log("error ", s, null);
        printLocation();
        callAppenders(4, s, null);
    }

    public static void fatal(String s, Throwable throwable)
    {
        log("error ", s, (new StringBuilder(" ")).append(throwable).toString());
        printLocation();
        if (!UtilsJavaSE.ibmJ9midp)
            throwable.printStackTrace(System.out);
        else
        if (debugInternalEnabled)
            throwable.printStackTrace();
        callAppenders(4, s, throwable);
    }

    private static String formatLocation(UtilsJavaSE.StackTraceLocation stacktracelocation)
    {
        if (stacktracelocation == null)
            return "";
        else
            return (new StringBuilder(String.valueOf(stacktracelocation.className))).append(".").append(stacktracelocation.methodName).append("(").append(stacktracelocation.fileName).append(":").append(stacktracelocation.lineNumber).append(")").toString();
    }

    private static void initialize()
    {
        boolean flag = true;
        com/intel/bluetooth/DebugLog;
        JVM INSTR monitorenter ;
        boolean flag1 = initialized;
        if (!flag1) goto _L2; else goto _L1
_L1:
        com/intel/bluetooth/DebugLog;
        JVM INSTR monitorexit ;
        return;
_L2:
        initialized = true;
        debugEnabled = BlueCoveImpl.getConfigProperty("bluecove.debug", false);
        boolean flag2;
        if (!BlueCoveImpl.getConfigProperty("bluecove.debug.stdout", true) || !debugEnabled)
            flag = false;
        debugInternalEnabled = flag;
        flag2 = BlueCoveImpl.getConfigProperty("bluecove.debug.log4j", true);
        if (!flag2)
            continue; /* Loop/switch isn't completed */
        try
        {
            LoggerAppenderExt loggerappenderext = (LoggerAppenderExt)Class.forName("com.intel.bluetooth.DebugLog4jAppender").newInstance();
            System.out.println("BlueCove log redirected to log4j");
            addAppender(loggerappenderext);
            if (loggerappenderext.isLogEnabled(1))
                debugEnabled = true;
        }
        catch (Throwable throwable) { }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static boolean isDebugEnabled()
    {
        if (!initialized)
            initialize();
        return debugEnabled;
    }

    private static void log(String s, String s1, String s2)
    {
        if (!debugInternalEnabled)
            return;
        StringBuffer stringbuffer;
        try
        {
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(new Date(System.currentTimeMillis()));
            stringbuffer = new StringBuffer();
            stringbuffer.append(d00(calendar.get(11))).append(":");
            stringbuffer.append(d00(calendar.get(12))).append(":");
            stringbuffer.append(d00(calendar.get(13))).append(".");
            stringbuffer.append(d000(calendar.get(14))).append(" ");
            stringbuffer.append(s);
        }
        catch (Throwable throwable)
        {
            return;
        }
        if (s1 == null)
            break MISSING_BLOCK_LABEL_138;
        stringbuffer.append(s1);
        if (s2 == null)
            break MISSING_BLOCK_LABEL_149;
        stringbuffer.append(s2);
        System.out.println(stringbuffer.toString());
        return;
    }

    public static void nativeDebugCallback(String s, int i, String s1)
    {
        if (s == null)
            break MISSING_BLOCK_LABEL_20;
        if (s.startsWith(".\\"))
            s = s.substring(2);
        debugNative((new StringBuilder(String.valueOf(s))).append(":").append(i).toString(), s1);
        return;
        Throwable throwable;
        throwable;
        try
        {
            System.out.println((new StringBuilder("Error when calling debug ")).append(throwable).toString());
            return;
        }
        catch (Throwable throwable1)
        {
            return;
        }
    }

    private static void printLocation()
    {
        if (!java13 && debugInternalEnabled) goto _L2; else goto _L1
_L1:
        UtilsJavaSE.StackTraceLocation stacktracelocation;
        return;
_L2:
        if ((stacktracelocation = UtilsJavaSE.getLocation(fqcnSet)) == null) goto _L1; else goto _L3
_L3:
        try
        {
            System.out.println((new StringBuilder("\t  ")).append(formatLocation(stacktracelocation)).toString());
            return;
        }
        catch (Throwable throwable)
        {
            java13 = true;
        }
        return;
    }

    public static void removeAppender(LoggerAppender loggerappender)
    {
        loggerAppenders.removeElement(loggerappender);
    }

    public static void setDebugEnabled(boolean flag)
    {
        if (!initialized)
            initialize();
        BlueCoveImpl.instance().enableNativeDebug(flag);
        debugEnabled = flag;
        debugInternalEnabled = debugEnabled;
    }

    static 
    {
        fqcnSet = new Vector();
        fqcnSet.addElement(FQCN);
    }
}
