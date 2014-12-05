// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Hashtable;
import org.apache.log4j.helpers.Loader;
import org.apache.log4j.helpers.ThreadLocalMap;

public class MDC
{

    static final int HT_SIZE = 7;
    static Class class$java$lang$ThreadLocal;
    static final MDC mdc = new MDC();
    boolean java1;
    private Method removeMethod;
    Object tlm;

    private MDC()
    {
        java1 = Loader.isJava1();
        if (!java1)
            tlm = new ThreadLocalMap();
        Class class1;
        if (class$java$lang$ThreadLocal != null)
            break MISSING_BLOCK_LABEL_57;
        class1 = _mthclass$("java.lang.ThreadLocal");
        class$java$lang$ThreadLocal = class1;
_L1:
        removeMethod = class1.getMethod("remove", null);
        return;
        try
        {
            class1 = class$java$lang$ThreadLocal;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return;
        }
          goto _L1
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

    public static void clear()
    {
        if (mdc != null)
            mdc.clear0();
    }

    private void clear0()
    {
        if (java1 || tlm == null)
            break MISSING_BLOCK_LABEL_56;
        Hashtable hashtable = (Hashtable)((ThreadLocalMap)tlm).get();
        if (hashtable != null)
            hashtable.clear();
        if (removeMethod == null)
            break MISSING_BLOCK_LABEL_56;
        removeMethod.invoke(tlm, null);
        return;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        return;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
    }

    public static Object get(String s)
    {
        if (mdc != null)
            return mdc.get0(s);
        else
            return null;
    }

    private Object get0(String s)
    {
        if (!java1 && tlm != null)
        {
            Hashtable hashtable = (Hashtable)((ThreadLocalMap)tlm).get();
            if (hashtable != null && s != null)
                return hashtable.get(s);
            else
                return null;
        } else
        {
            return null;
        }
    }

    public static Hashtable getContext()
    {
        if (mdc != null)
            return mdc.getContext0();
        else
            return null;
    }

    private Hashtable getContext0()
    {
        if (!java1 && tlm != null)
            return (Hashtable)((ThreadLocalMap)tlm).get();
        else
            return null;
    }

    public static void put(String s, Object obj)
    {
        if (mdc != null)
            mdc.put0(s, obj);
    }

    private void put0(String s, Object obj)
    {
        if (!java1 && tlm != null)
        {
            Hashtable hashtable = (Hashtable)((ThreadLocalMap)tlm).get();
            if (hashtable == null)
            {
                hashtable = new Hashtable(7);
                ((ThreadLocalMap)tlm).set(hashtable);
            }
            hashtable.put(s, obj);
            return;
        } else
        {
            return;
        }
    }

    public static void remove(String s)
    {
        if (mdc != null)
            mdc.remove0(s);
    }

    private void remove0(String s)
    {
        if (!java1 && tlm != null)
        {
            Hashtable hashtable = (Hashtable)((ThreadLocalMap)tlm).get();
            if (hashtable != null)
            {
                hashtable.remove(s);
                if (hashtable.isEmpty())
                    clear0();
            }
        }
    }

}
