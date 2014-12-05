// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.jmx;

import java.beans.IntrospectionException;
import java.util.Enumeration;
import java.util.Vector;
import javax.management.*;
import org.apache.log4j.*;
import org.apache.log4j.helpers.OptionConverter;

// Referenced classes of package org.apache.log4j.jmx:
//            AbstractDynamicMBean, AppenderDynamicMBean

public class LoggerDynamicMBean extends AbstractDynamicMBean
    implements NotificationListener
{

    private static Logger cat;
    static Class class$org$apache$log4j$Appender;
    static Class class$org$apache$log4j$jmx$LoggerDynamicMBean;
    private Vector dAttributes;
    private String dClassName;
    private MBeanConstructorInfo dConstructors[];
    private String dDescription;
    private MBeanOperationInfo dOperations[];
    private Logger logger;

    public LoggerDynamicMBean(Logger logger1)
    {
        dConstructors = new MBeanConstructorInfo[1];
        dOperations = new MBeanOperationInfo[1];
        dAttributes = new Vector();
        dClassName = getClass().getName();
        dDescription = "This MBean acts as a management facade for a org.apache.log4j.Logger instance.";
        logger = logger1;
        buildDynamicMBeanInfo();
    }

    private void buildDynamicMBeanInfo()
    {
        java.lang.reflect.Constructor aconstructor[] = getClass().getConstructors();
        dConstructors[0] = new MBeanConstructorInfo("HierarchyDynamicMBean(): Constructs a HierarchyDynamicMBean instance", aconstructor[0]);
        dAttributes.add(new MBeanAttributeInfo("name", "java.lang.String", "The name of this Logger.", true, false, false));
        dAttributes.add(new MBeanAttributeInfo("priority", "java.lang.String", "The priority of this logger.", true, true, false));
        MBeanParameterInfo ambeanparameterinfo[] = new MBeanParameterInfo[2];
        ambeanparameterinfo[0] = new MBeanParameterInfo("class name", "java.lang.String", "add an appender to this logger");
        ambeanparameterinfo[1] = new MBeanParameterInfo("appender name", "java.lang.String", "name of the appender");
        dOperations[0] = new MBeanOperationInfo("addAppender", "addAppender(): add an appender", ambeanparameterinfo, "void", 1);
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

    void addAppender(String s, String s1)
    {
        cat.debug("addAppender called with " + s + ", " + s1);
        Class class1;
        if (class$org$apache$log4j$Appender == null)
        {
            class1 = _mthclass$("org.apache.log4j.Appender");
            class$org$apache$log4j$Appender = class1;
        } else
        {
            class1 = class$org$apache$log4j$Appender;
        }
        Appender appender = (Appender)OptionConverter.instantiateByClassName(s, class1, null);
        appender.setName(s1);
        logger.addAppender(appender);
    }

    void appenderMBeanRegistration()
    {
        for (Enumeration enumeration = logger.getAllAppenders(); enumeration.hasMoreElements(); registerAppenderMBean((Appender)enumeration.nextElement()));
    }

    public Object getAttribute(String s)
        throws AttributeNotFoundException, MBeanException, ReflectionException
    {
        if (s == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute name cannot be null"), "Cannot invoke a getter of " + dClassName + " with null attribute name");
        if (s.equals("name"))
            return logger.getName();
        if (s.equals("priority"))
        {
            Level level = logger.getLevel();
            if (level == null)
                return null;
            else
                return level.toString();
        }
        if (!s.startsWith("appender="))
            break MISSING_BLOCK_LABEL_161;
        ObjectName objectname = new ObjectName("log4j:" + s);
        return objectname;
        MalformedObjectNameException malformedobjectnameexception;
        malformedobjectnameexception;
        cat.error("Could not create ObjectName" + s);
_L2:
        throw new AttributeNotFoundException("Cannot find " + s + " attribute in " + dClassName);
        RuntimeException runtimeexception;
        runtimeexception;
        cat.error("Could not create ObjectName" + s);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected Logger getLogger()
    {
        return logger;
    }

    public MBeanInfo getMBeanInfo()
    {
        MBeanAttributeInfo ambeanattributeinfo[] = new MBeanAttributeInfo[dAttributes.size()];
        dAttributes.toArray(ambeanattributeinfo);
        return new MBeanInfo(dClassName, dDescription, ambeanattributeinfo, dConstructors, dOperations, new MBeanNotificationInfo[0]);
    }

    public void handleNotification(Notification notification, Object obj)
    {
        cat.debug("Received notification: " + notification.getType());
        registerAppenderMBean((Appender)notification.getUserData());
    }

    public Object invoke(String s, Object aobj[], String as[])
        throws MBeanException, ReflectionException
    {
        if (s.equals("addAppender"))
        {
            addAppender((String)aobj[0], (String)aobj[1]);
            return "Hello world.";
        } else
        {
            return null;
        }
    }

    public void postRegister(Boolean boolean1)
    {
        appenderMBeanRegistration();
    }

    void registerAppenderMBean(Appender appender)
    {
        String s;
        s = getAppenderName(appender);
        cat.debug("Adding AppenderMBean for appender named " + s);
        AppenderDynamicMBean appenderdynamicmbean;
        ObjectName objectname;
        appenderdynamicmbean = new AppenderDynamicMBean(appender);
        objectname = new ObjectName("log4j", "appender", s);
        if (!server.isRegistered(objectname))
        {
            registerMBean(appenderdynamicmbean, objectname);
            dAttributes.add(new MBeanAttributeInfo("appender=" + s, "javax.management.ObjectName", "The " + s + " appender.", true, true, false));
        }
        return;
        JMException jmexception;
        jmexception;
_L6:
        cat.error("Could not add appenderMBean for [" + s + "].", jmexception);
        return;
        IntrospectionException introspectionexception;
        introspectionexception;
_L4:
        cat.error("Could not add appenderMBean for [" + s + "].", introspectionexception);
        return;
        RuntimeException runtimeexception;
        runtimeexception;
_L2:
        cat.error("Could not add appenderMBean for [" + s + "].", runtimeexception);
        return;
        runtimeexception;
        if (true) goto _L2; else goto _L1
_L1:
        introspectionexception;
        if (true) goto _L4; else goto _L3
_L3:
        jmexception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setAttribute(Attribute attribute)
        throws AttributeNotFoundException, InvalidAttributeValueException, MBeanException, ReflectionException
    {
        if (attribute == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute cannot be null"), "Cannot invoke a setter of " + dClassName + " with null attribute");
        String s = attribute.getName();
        Object obj = attribute.getValue();
        if (s == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute name cannot be null"), "Cannot invoke the setter of " + dClassName + " with null attribute name");
        if (s.equals("priority"))
        {
            if (obj instanceof String)
            {
                String s1 = (String)obj;
                Level level = logger.getLevel();
                Level level1;
                if (s1.equalsIgnoreCase("NULL"))
                    level1 = null;
                else
                    level1 = OptionConverter.toLevel(s1, level);
                logger.setLevel(level1);
            }
            return;
        } else
        {
            throw new AttributeNotFoundException("Attribute " + s + " not found in " + getClass().getName());
        }
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$jmx$LoggerDynamicMBean == null)
        {
            class1 = _mthclass$("org.apache.log4j.jmx.LoggerDynamicMBean");
            class$org$apache$log4j$jmx$LoggerDynamicMBean = class1;
        } else
        {
            class1 = class$org$apache$log4j$jmx$LoggerDynamicMBean;
        }
        cat = Logger.getLogger(class1);
    }
}
