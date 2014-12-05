// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.lang.reflect.*;
import java.util.*;
import org.apache.log4j.helpers.LogLog;

public class ZeroConfSupport
{

    static Class class$java$lang$String;
    static Class class$java$util$Hashtable;
    static Class class$java$util$Map;
    private static Object jmDNS = initializeJMDNS();
    private static Class jmDNSClass;
    private static Class serviceInfoClass;
    Object serviceInfo;

    public ZeroConfSupport(String s, int i, String s1)
    {
        this(s, i, s1, ((Map) (new HashMap())));
    }

    public ZeroConfSupport(String s, int i, String s1, Map map)
    {
        jmDNSClass.getMethod("create", null);
        boolean flag = true;
_L2:
        if (flag)
        {
            LogLog.debug("using JmDNS version 3 to construct serviceInfo instance");
            serviceInfo = buildServiceInfoVersion3(s, i, s1, map);
            return;
        } else
        {
            LogLog.debug("using JmDNS version 1.0 to construct serviceInfo instance");
            serviceInfo = buildServiceInfoVersion1(s, i, s1, map);
            return;
        }
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private Object buildServiceInfoVersion1(String s, int i, String s1, Map map)
    {
        Hashtable hashtable = new Hashtable(map);
        Class aclass[] = new Class[6];
        if (class$java$lang$String != null) goto _L2; else goto _L1
_L1:
        Class class1;
        class1 = _mthclass$("java.lang.String");
        class$java$lang$String = class1;
_L12:
        aclass[0] = class1;
        if (class$java$lang$String != null) goto _L4; else goto _L3
_L3:
        Class class2;
        class2 = _mthclass$("java.lang.String");
        class$java$lang$String = class2;
_L7:
        aclass[1] = class2;
        aclass[2] = Integer.TYPE;
        aclass[3] = Integer.TYPE;
        aclass[4] = Integer.TYPE;
        if (class$java$util$Hashtable != null) goto _L6; else goto _L5
_L5:
        Class class3;
        class3 = _mthclass$("java.util.Hashtable");
        class$java$util$Hashtable = class3;
_L8:
        Object obj;
        aclass[5] = class3;
        Constructor constructor = serviceInfoClass.getConstructor(aclass);
        Object aobj[] = new Object[6];
        aobj[0] = s;
        aobj[1] = s1;
        aobj[2] = new Integer(i);
        aobj[3] = new Integer(0);
        aobj[4] = new Integer(0);
        aobj[5] = hashtable;
        obj = constructor.newInstance(aobj);
        LogLog.debug("created serviceinfo: " + obj);
        return obj;
_L2:
        class1 = class$java$lang$String;
        continue; /* Loop/switch isn't completed */
_L4:
        class2 = class$java$lang$String;
          goto _L7
_L6:
        class3 = class$java$util$Hashtable;
          goto _L8
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        LogLog.warn("Unable to construct ServiceInfo instance", illegalaccessexception);
_L10:
        return null;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        LogLog.warn("Unable to get ServiceInfo constructor", nosuchmethodexception);
        continue; /* Loop/switch isn't completed */
        InstantiationException instantiationexception;
        instantiationexception;
        LogLog.warn("Unable to construct ServiceInfo instance", instantiationexception);
        continue; /* Loop/switch isn't completed */
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        LogLog.warn("Unable to construct ServiceInfo instance", invocationtargetexception);
        if (true) goto _L10; else goto _L9
_L9:
        if (true) goto _L12; else goto _L11
_L11:
    }

    private Object buildServiceInfoVersion3(String s, int i, String s1, Map map)
    {
        Class aclass[] = new Class[6];
        if (class$java$lang$String != null) goto _L2; else goto _L1
_L1:
        Class class1;
        class1 = _mthclass$("java.lang.String");
        class$java$lang$String = class1;
_L12:
        aclass[0] = class1;
        if (class$java$lang$String != null) goto _L4; else goto _L3
_L3:
        Class class2;
        class2 = _mthclass$("java.lang.String");
        class$java$lang$String = class2;
_L7:
        aclass[1] = class2;
        aclass[2] = Integer.TYPE;
        aclass[3] = Integer.TYPE;
        aclass[4] = Integer.TYPE;
        if (class$java$util$Map != null) goto _L6; else goto _L5
_L5:
        Class class3;
        class3 = _mthclass$("java.util.Map");
        class$java$util$Map = class3;
_L8:
        Object obj;
        aclass[5] = class3;
        Method method = serviceInfoClass.getMethod("create", aclass);
        Object aobj[] = new Object[6];
        aobj[0] = s;
        aobj[1] = s1;
        aobj[2] = new Integer(i);
        aobj[3] = new Integer(0);
        aobj[4] = new Integer(0);
        aobj[5] = map;
        obj = method.invoke(null, aobj);
        LogLog.debug("created serviceinfo: " + obj);
        return obj;
_L2:
        class1 = class$java$lang$String;
        continue; /* Loop/switch isn't completed */
_L4:
        class2 = class$java$lang$String;
          goto _L7
_L6:
        class3 = class$java$util$Map;
          goto _L8
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        LogLog.warn("Unable to invoke create method", illegalaccessexception);
_L10:
        return null;
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        LogLog.warn("Unable to find create method", nosuchmethodexception);
        continue; /* Loop/switch isn't completed */
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        LogLog.warn("Unable to invoke create method", invocationtargetexception);
        if (true) goto _L10; else goto _L9
_L9:
        if (true) goto _L12; else goto _L11
_L11:
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

    private static Object createJmDNSVersion1()
    {
        Object obj = jmDNSClass.newInstance();
        return obj;
        InstantiationException instantiationexception;
        instantiationexception;
        LogLog.warn("Unable to instantiate JMDNS", instantiationexception);
_L2:
        return null;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        LogLog.warn("Unable to instantiate JMDNS", illegalaccessexception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static Object createJmDNSVersion3()
    {
        Object obj;
        try
        {
            obj = jmDNSClass.getMethod("create", null).invoke(null, null);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            LogLog.warn("Unable to instantiate jmdns class", illegalaccessexception);
            return null;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            LogLog.warn("Unable to access constructor", nosuchmethodexception);
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            LogLog.warn("Unable to call constructor", invocationtargetexception);
            return null;
        }
        return obj;
    }

    public static Object getJMDNSInstance()
    {
        return jmDNS;
    }

    private static Object initializeJMDNS()
    {
        boolean flag;
        try
        {
            jmDNSClass = Class.forName("javax.jmdns.JmDNS");
            serviceInfoClass = Class.forName("javax.jmdns.ServiceInfo");
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            LogLog.warn("JmDNS or serviceInfo class not found", classnotfoundexception);
        }
        jmDNSClass.getMethod("create", null);
        flag = true;
_L2:
        if (flag)
            return createJmDNSVersion3();
        else
            return createJmDNSVersion1();
        NoSuchMethodException nosuchmethodexception;
        nosuchmethodexception;
        flag = false;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void advertise()
    {
        try
        {
            Class class1 = jmDNSClass;
            Class aclass[] = new Class[1];
            aclass[0] = serviceInfoClass;
            Method method = class1.getMethod("registerService", aclass);
            Object obj = jmDNS;
            Object aobj[] = new Object[1];
            aobj[0] = serviceInfo;
            method.invoke(obj, aobj);
            LogLog.debug("registered serviceInfo: " + serviceInfo);
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            LogLog.warn("Unable to invoke registerService method", illegalaccessexception);
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            LogLog.warn("No registerService method", nosuchmethodexception);
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            LogLog.warn("Unable to invoke registerService method", invocationtargetexception);
        }
    }

    public void unadvertise()
    {
        try
        {
            Class class1 = jmDNSClass;
            Class aclass[] = new Class[1];
            aclass[0] = serviceInfoClass;
            Method method = class1.getMethod("unregisterService", aclass);
            Object obj = jmDNS;
            Object aobj[] = new Object[1];
            aobj[0] = serviceInfo;
            method.invoke(obj, aobj);
            LogLog.debug("unregistered serviceInfo: " + serviceInfo);
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            LogLog.warn("Unable to invoke unregisterService method", illegalaccessexception);
            return;
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            LogLog.warn("No unregisterService method", nosuchmethodexception);
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            LogLog.warn("Unable to invoke unregisterService method", invocationtargetexception);
        }
    }

}
