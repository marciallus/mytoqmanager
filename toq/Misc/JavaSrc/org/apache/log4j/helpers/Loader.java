// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;

// Referenced classes of package org.apache.log4j.helpers:
//            OptionConverter, LogLog

public class Loader
{

    static final String TSTR = "Caught Exception while in Loader.getResource. This may be innocuous.";
    static Class class$java$lang$Thread;
    static Class class$org$apache$log4j$helpers$Loader;
    private static boolean ignoreTCL = false;
    private static boolean java1 = true;


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

    public static URL getResource(String s)
    {
        ClassLoader classloader1;
        if (java1 || ignoreTCL)
            break MISSING_BLOCK_LABEL_75;
        classloader1 = getTCL();
        if (classloader1 == null)
            break MISSING_BLOCK_LABEL_75;
        URL url1;
        LogLog.debug("Trying to find [" + s + "] using context classloader " + classloader1 + ".");
        url1 = classloader1.getResource(s);
        if (url1 != null)
            return url1;
        Class class1;
        if (class$org$apache$log4j$helpers$Loader != null)
            break MISSING_BLOCK_LABEL_158;
        class1 = _mthclass$("org.apache.log4j.helpers.Loader");
        class$org$apache$log4j$helpers$Loader = class1;
_L1:
        ClassLoader classloader = class1.getClassLoader();
        if (classloader == null)
            break MISSING_BLOCK_LABEL_173;
        URL url;
        LogLog.debug("Trying to find [" + s + "] using " + classloader + " class loader.");
        url = classloader.getResource(s);
        if (url != null)
            return url;
        break MISSING_BLOCK_LABEL_173;
        class1 = class$org$apache$log4j$helpers$Loader;
          goto _L1
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        LogLog.warn("Caught Exception while in Loader.getResource. This may be innocuous.", illegalaccessexception);
_L3:
        LogLog.debug("Trying to find [" + s + "] using ClassLoader.getSystemResource().");
        return ClassLoader.getSystemResource(s);
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
            Thread.currentThread().interrupt();
        LogLog.warn("Caught Exception while in Loader.getResource. This may be innocuous.", invocationtargetexception);
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        LogLog.warn("Caught Exception while in Loader.getResource. This may be innocuous.", throwable);
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static URL getResource(String s, Class class1)
    {
        return getResource(s);
    }

    private static ClassLoader getTCL()
        throws IllegalAccessException, InvocationTargetException
    {
        Class class1;
        if (class$java$lang$Thread != null)
            break MISSING_BLOCK_LABEL_36;
        class1 = _mthclass$("java.lang.Thread");
        class$java$lang$Thread = class1;
_L1:
        Method method = class1.getMethod("getContextClassLoader", null);
        return (ClassLoader)method.invoke(Thread.currentThread(), null);
        try
        {
            class1 = class$java$lang$Thread;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return null;
        }
          goto _L1
    }

    public static boolean isJava1()
    {
        return java1;
    }

    public static Class loadClass(String s)
        throws ClassNotFoundException
    {
        if (java1 || ignoreTCL)
            return Class.forName(s);
        Class class1 = getTCL().loadClass(s);
        return class1;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
            Thread.currentThread().interrupt();
_L2:
        return Class.forName(s);
        Throwable throwable;
        throwable;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        String s = OptionConverter.getSystemProperty("java.version", null);
        if (s != null)
        {
            int i = s.indexOf('.');
            if (i != -1 && s.charAt(i + 1) != '1')
                java1 = false;
        }
        String s1 = OptionConverter.getSystemProperty("log4j.ignoreTCL", null);
        if (s1 != null)
            ignoreTCL = OptionConverter.toBoolean(s1, true);
    }
}
