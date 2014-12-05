// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.log4j.Layout;
import org.apache.log4j.helpers.LogLog;

public class LocationInfo
    implements Serializable
{

    public static final String NA = "?";
    public static final LocationInfo NA_LOCATION_INFO;
    static Class class$java$lang$Throwable;
    private static Method getClassNameMethod;
    private static Method getFileNameMethod;
    private static Method getLineNumberMethod;
    private static Method getMethodNameMethod;
    private static Method getStackTraceMethod;
    static boolean inVisualAge = false;
    private static PrintWriter pw;
    static final long serialVersionUID = 0xed99bbe14a91a57cL;
    private static StringWriter sw;
    transient String className;
    transient String fileName;
    public String fullInfo;
    transient String lineNumber;
    transient String methodName;

    public LocationInfo(String s, String s1, String s2, String s3)
    {
        fileName = s;
        className = s1;
        methodName = s2;
        lineNumber = s3;
        StringBuffer stringbuffer = new StringBuffer();
        appendFragment(stringbuffer, s1);
        stringbuffer.append(".");
        appendFragment(stringbuffer, s2);
        stringbuffer.append("(");
        appendFragment(stringbuffer, s);
        stringbuffer.append(":");
        appendFragment(stringbuffer, s3);
        stringbuffer.append(")");
        fullInfo = stringbuffer.toString();
    }

    public LocationInfo(Throwable throwable, String s)
    {
        if (throwable != null && s != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (getLineNumberMethod == null) goto _L4; else goto _L3
_L3:
        Object aobj[] = (Object[])(Object[])getStackTraceMethod.invoke(throwable, null);
        String s2 = "?";
        int k1 = -1 + aobj.length;
_L16:
        if (k1 < 0) goto _L1; else goto _L5
_L5:
        String s3 = (String)getClassNameMethod.invoke(aobj[k1], null);
        if (!s.equals(s3)) goto _L7; else goto _L6
_L6:
        int l1 = k1 + 1;
        if (l1 >= aobj.length) goto _L1; else goto _L8
_L8:
        int i2;
        className = s2;
        methodName = (String)getMethodNameMethod.invoke(aobj[l1], null);
        fileName = (String)getFileNameMethod.invoke(aobj[l1], null);
        if (fileName == null)
            fileName = "?";
        i2 = ((Integer)getLineNumberMethod.invoke(aobj[l1], null)).intValue();
        if (i2 >= 0) goto _L10; else goto _L9
_L9:
        lineNumber = "?";
_L15:
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append(className);
        stringbuffer.append(".");
        stringbuffer.append(methodName);
        stringbuffer.append("(");
        stringbuffer.append(fileName);
        stringbuffer.append(":");
        stringbuffer.append(lineNumber);
        stringbuffer.append(")");
        fullInfo = stringbuffer.toString();
        return;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        LogLog.debug("LocationInfo failed using JDK 1.4 methods", illegalaccessexception);
_L4:
        String s1;
        int i;
        synchronized (sw)
        {
            throwable.printStackTrace(pw);
            s1 = sw.toString();
            sw.getBuffer().setLength(0);
        }
        i = s1.lastIndexOf(s);
        if (i == -1) goto _L1; else goto _L11
_L11:
        int j;
        if (i + s.length() < s1.length() && s1.charAt(i + s.length()) != '.')
        {
            int j1 = s1.lastIndexOf(s + ".");
            if (j1 != -1)
                i = j1;
        }
        j = s1.indexOf(Layout.LINE_SEP, i);
        if (j == -1) goto _L1; else goto _L12
_L12:
        int k;
        int l;
        k = j + Layout.LINE_SEP_LEN;
        l = s1.indexOf(Layout.LINE_SEP, k);
        if (l == -1) goto _L1; else goto _L13
_L13:
        int i1;
        if (inVisualAge)
            break MISSING_BLOCK_LABEL_467;
        i1 = s1.lastIndexOf("at ", l);
        if (i1 == -1) goto _L1; else goto _L14
_L14:
        k = i1 + 3;
        fullInfo = s1.substring(k, l);
        return;
_L10:
        lineNumber = String.valueOf(i2);
          goto _L15
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
            Thread.currentThread().interrupt();
        LogLog.debug("LocationInfo failed using JDK 1.4 methods", invocationtargetexception);
          goto _L4
_L7:
        s2 = s3;
        k1--;
          goto _L16
        RuntimeException runtimeexception;
        runtimeexception;
        LogLog.debug("LocationInfo failed using JDK 1.4 methods", runtimeexception);
          goto _L4
        exception;
        stringwriter;
        JVM INSTR monitorexit ;
        throw exception;
          goto _L16
    }

    private static final void appendFragment(StringBuffer stringbuffer, String s)
    {
        if (s == null)
        {
            stringbuffer.append("?");
            return;
        } else
        {
            stringbuffer.append(s);
            return;
        }
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

    public String getClassName()
    {
        if (fullInfo == null)
            return "?";
        if (className == null)
        {
            int i = fullInfo.lastIndexOf('(');
            if (i == -1)
            {
                className = "?";
            } else
            {
                int j = fullInfo.lastIndexOf('.', i);
                boolean flag = inVisualAge;
                int k = 0;
                if (flag)
                    k = 1 + fullInfo.lastIndexOf(' ', j);
                if (j == -1)
                    className = "?";
                else
                    className = fullInfo.substring(k, j);
            }
        }
        return className;
    }

    public String getFileName()
    {
        if (fullInfo == null)
            return "?";
        if (fileName == null)
        {
            int i = fullInfo.lastIndexOf(':');
            if (i == -1)
            {
                fileName = "?";
            } else
            {
                int j = fullInfo.lastIndexOf('(', i - 1);
                fileName = fullInfo.substring(j + 1, i);
            }
        }
        return fileName;
    }

    public String getLineNumber()
    {
        if (fullInfo == null)
            return "?";
        if (lineNumber == null)
        {
            int i = fullInfo.lastIndexOf(')');
            int j = fullInfo.lastIndexOf(':', i - 1);
            if (j == -1)
                lineNumber = "?";
            else
                lineNumber = fullInfo.substring(j + 1, i);
        }
        return lineNumber;
    }

    public String getMethodName()
    {
        if (fullInfo == null)
            return "?";
        if (methodName == null)
        {
            int i = fullInfo.lastIndexOf('(');
            int j = fullInfo.lastIndexOf('.', i);
            if (j == -1)
                methodName = "?";
            else
                methodName = fullInfo.substring(j + 1, i);
        }
        return methodName;
    }

    static 
    {
        sw = new StringWriter();
        pw = new PrintWriter(sw);
        NA_LOCATION_INFO = new LocationInfo("?", "?", "?", "?");
        inVisualAge = false;
        Class class3 = Class.forName("com.ibm.uvm.tools.DebugSupport");
        boolean flag = false;
        if (class3 != null)
            flag = true;
        NoSuchMethodException nosuchmethodexception;
        ClassNotFoundException classnotfoundexception;
        Class class1;
        Class class2;
        try
        {
            inVisualAge = flag;
            LogLog.debug("Detected IBM VisualAge environment.");
        }
        catch (Throwable throwable) { }
        if (class$java$lang$Throwable != null)
            break MISSING_BLOCK_LABEL_151;
        class1 = _mthclass$("java.lang.Throwable");
        class$java$lang$Throwable = class1;
_L1:
        getStackTraceMethod = class1.getMethod("getStackTrace", null);
        class2 = Class.forName("java.lang.StackTraceElement");
        getClassNameMethod = class2.getMethod("getClassName", null);
        getMethodNameMethod = class2.getMethod("getMethodName", null);
        getFileNameMethod = class2.getMethod("getFileName", null);
        getLineNumberMethod = class2.getMethod("getLineNumber", null);
        return;
        try
        {
            class1 = class$java$lang$Throwable;
        }
        // Misplaced declaration of an exception variable
        catch (ClassNotFoundException classnotfoundexception)
        {
            LogLog.debug("LocationInfo will use pre-JDK 1.4 methods to determine location.");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (NoSuchMethodException nosuchmethodexception)
        {
            LogLog.debug("LocationInfo will use pre-JDK 1.4 methods to determine location.");
            return;
        }
          goto _L1
    }
}
