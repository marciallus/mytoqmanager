// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.jmx;

import java.util.*;
import javax.management.*;
import org.apache.log4j.Appender;
import org.apache.log4j.Logger;

public abstract class AbstractDynamicMBean
    implements DynamicMBean, MBeanRegistration
{

    String dClassName;
    private final Vector mbeanList = new Vector();
    MBeanServer server;


    protected static String getAppenderName(Appender appender)
    {
        String s = appender.getName();
        if (s == null || s.trim().length() == 0)
            s = appender.toString();
        return s;
    }

    public AttributeList getAttributes(String as[])
    {
        if (as == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("attributeNames[] cannot be null"), "Cannot invoke a getter of " + dClassName);
        AttributeList attributelist = new AttributeList();
        if (as.length != 0)
        {
            int i = 0;
            while (i < as.length) 
            {
                try
                {
                    Object obj = getAttribute(as[i]);
                    attributelist.add(new Attribute(as[i], obj));
                }
                catch (JMException jmexception)
                {
                    jmexception.printStackTrace();
                }
                catch (RuntimeException runtimeexception)
                {
                    runtimeexception.printStackTrace();
                }
                i++;
            }
        }
        return attributelist;
    }

    protected abstract Logger getLogger();

    public void postDeregister()
    {
        getLogger().debug("postDeregister is called.");
    }

    public void postRegister(Boolean boolean1)
    {
    }

    public void preDeregister()
    {
        getLogger().debug("preDeregister called.");
        for (Enumeration enumeration = mbeanList.elements(); enumeration.hasMoreElements();)
        {
            ObjectName objectname = (ObjectName)enumeration.nextElement();
            try
            {
                server.unregisterMBean(objectname);
            }
            catch (InstanceNotFoundException instancenotfoundexception)
            {
                getLogger().warn("Missing MBean " + objectname.getCanonicalName());
            }
            catch (MBeanRegistrationException mbeanregistrationexception)
            {
                getLogger().warn("Failed unregistering " + objectname.getCanonicalName());
            }
        }

    }

    public ObjectName preRegister(MBeanServer mbeanserver, ObjectName objectname)
    {
        getLogger().debug("preRegister called. Server=" + mbeanserver + ", name=" + objectname);
        server = mbeanserver;
        return objectname;
    }

    protected void registerMBean(Object obj, ObjectName objectname)
        throws InstanceAlreadyExistsException, MBeanRegistrationException, NotCompliantMBeanException
    {
        server.registerMBean(obj, objectname);
        mbeanList.add(objectname);
    }

    public AttributeList setAttributes(AttributeList attributelist)
    {
        if (attributelist == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("AttributeList attributes cannot be null"), "Cannot invoke a setter of " + dClassName);
        AttributeList attributelist1 = new AttributeList();
        if (!attributelist.isEmpty())
        {
            Iterator iterator = attributelist.iterator();
            while (iterator.hasNext()) 
            {
                Attribute attribute = (Attribute)iterator.next();
                try
                {
                    setAttribute(attribute);
                    String s = attribute.getName();
                    attributelist1.add(new Attribute(s, getAttribute(s)));
                }
                catch (JMException jmexception)
                {
                    jmexception.printStackTrace();
                }
                catch (RuntimeException runtimeexception)
                {
                    runtimeexception.printStackTrace();
                }
            }
        }
        return attributelist1;
    }
}
