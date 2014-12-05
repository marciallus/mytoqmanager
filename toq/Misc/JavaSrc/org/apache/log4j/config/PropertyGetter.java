// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.config;

import java.beans.*;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.log4j.helpers.LogLog;

public class PropertyGetter
{
    public static interface PropertyCallback
    {

        public abstract void foundProperty(Object obj1, String s, String s1, Object obj2);
    }


    protected static final Object NULL_ARG[] = new Object[0];
    static Class class$java$lang$String;
    static Class class$org$apache$log4j$Priority;
    protected Object obj;
    protected PropertyDescriptor props[];

    public PropertyGetter(Object obj1)
        throws IntrospectionException
    {
        props = Introspector.getBeanInfo(obj1.getClass()).getPropertyDescriptors();
        obj = obj1;
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

    public static void getProperties(Object obj1, PropertyCallback propertycallback, String s)
    {
        try
        {
            (new PropertyGetter(obj1)).getProperties(propertycallback, s);
            return;
        }
        catch (IntrospectionException introspectionexception)
        {
            LogLog.error("Failed to introspect object " + obj1, introspectionexception);
        }
    }

    public void getProperties(PropertyCallback propertycallback, String s)
    {
        int i = 0;
_L3:
        Method method;
        if (i >= props.length)
            break; /* Loop/switch isn't completed */
        method = props[i].getReadMethod();
          goto _L1
_L5:
        i++;
        if (true) goto _L3; else goto _L2
_L1:
        if (method == null || !isHandledType(method.getReturnType())) goto _L5; else goto _L4
_L4:
        String s1 = props[i].getName();
        Object obj1 = method.invoke(obj, NULL_ARG);
        if (obj1 != null)
            try
            {
                propertycallback.foundProperty(obj, s, s1, obj1);
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                LogLog.warn("Failed to get value of property " + s1);
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
                    Thread.currentThread().interrupt();
                LogLog.warn("Failed to get value of property " + s1);
            }
            catch (RuntimeException runtimeexception)
            {
                LogLog.warn("Failed to get value of property " + s1);
            }
          goto _L5
_L2:
    }

    protected boolean isHandledType(Class class1)
    {
        Class class2;
        if (class$java$lang$String == null)
        {
            class2 = _mthclass$("java.lang.String");
            class$java$lang$String = class2;
        } else
        {
            class2 = class$java$lang$String;
        }
        if (!class2.isAssignableFrom(class1) && !Integer.TYPE.isAssignableFrom(class1) && !Long.TYPE.isAssignableFrom(class1) && !Boolean.TYPE.isAssignableFrom(class1))
        {
            Class class3;
            if (class$org$apache$log4j$Priority == null)
            {
                class3 = _mthclass$("org.apache.log4j.Priority");
                class$org$apache$log4j$Priority = class3;
            } else
            {
                class3 = class$org$apache$log4j$Priority;
            }
            if (!class3.isAssignableFrom(class1))
                return false;
        }
        return true;
    }

}
