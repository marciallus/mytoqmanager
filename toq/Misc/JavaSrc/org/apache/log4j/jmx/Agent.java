// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.jmx;

import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.management.*;
import org.apache.log4j.Logger;

// Referenced classes of package org.apache.log4j.jmx:
//            HierarchyDynamicMBean

public class Agent
{

    static Class class$org$apache$log4j$jmx$Agent;
    static Logger log;


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

    private static Object createServer()
    {
        Object obj;
        try
        {
            obj = Class.forName("com.sun.jdmk.comm.HtmlAdapterServer").newInstance();
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new RuntimeException(classnotfoundexception.toString());
        }
        catch (InstantiationException instantiationexception)
        {
            throw new RuntimeException(instantiationexception.toString());
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception.toString());
        }
        return obj;
    }

    private static void startServer(Object obj)
    {
        try
        {
            obj.getClass().getMethod("start", new Class[0]).invoke(obj, new Object[0]);
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            Throwable throwable = invocationtargetexception.getTargetException();
            if (throwable instanceof RuntimeException)
                throw (RuntimeException)throwable;
            if (throwable != null)
            {
                if ((throwable instanceof InterruptedException) || (throwable instanceof InterruptedIOException))
                    Thread.currentThread().interrupt();
                throw new RuntimeException(throwable.toString());
            } else
            {
                throw new RuntimeException();
            }
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            throw new RuntimeException(nosuchmethodexception.toString());
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new RuntimeException(illegalaccessexception.toString());
        }
    }

    public void start()
    {
        MBeanServer mbeanserver = MBeanServerFactory.createMBeanServer();
        Object obj = createServer();
        try
        {
            log.info("Registering HtmlAdaptorServer instance.");
            mbeanserver.registerMBean(obj, new ObjectName("Adaptor:name=html,port=8082"));
            log.info("Registering HierarchyDynamicMBean instance.");
            mbeanserver.registerMBean(new HierarchyDynamicMBean(), new ObjectName("log4j:hiearchy=default"));
        }
        catch (JMException jmexception)
        {
            log.error("Problem while registering MBeans instances.", jmexception);
            return;
        }
        catch (RuntimeException runtimeexception)
        {
            log.error("Problem while registering MBeans instances.", runtimeexception);
            return;
        }
        startServer(obj);
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$jmx$Agent == null)
        {
            class1 = _mthclass$("org.apache.log4j.jmx.Agent");
            class$org$apache$log4j$jmx$Agent = class1;
        } else
        {
            class1 = class$org$apache$log4j$jmx$Agent;
        }
        log = Logger.getLogger(class1);
    }
}
