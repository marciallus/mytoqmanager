// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.jmx;

import java.util.Vector;
import javax.management.*;
import org.apache.log4j.*;
import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.spi.HierarchyEventListener;
import org.apache.log4j.spi.LoggerRepository;

// Referenced classes of package org.apache.log4j.jmx:
//            AbstractDynamicMBean, LoggerDynamicMBean

public class HierarchyDynamicMBean extends AbstractDynamicMBean
    implements NotificationBroadcaster, HierarchyEventListener
{

    static final String ADD_APPENDER = "addAppender.";
    static final String THRESHOLD = "threshold";
    static Class class$org$apache$log4j$jmx$HierarchyDynamicMBean;
    private static Logger log;
    private String dClassName;
    private MBeanConstructorInfo dConstructors[];
    private String dDescription;
    private MBeanOperationInfo dOperations[];
    private LoggerRepository hierarchy;
    private NotificationBroadcasterSupport nbs;
    private Vector vAttributes;

    public HierarchyDynamicMBean()
    {
        dConstructors = new MBeanConstructorInfo[1];
        dOperations = new MBeanOperationInfo[1];
        vAttributes = new Vector();
        dClassName = getClass().getName();
        dDescription = "This MBean acts as a management facade for org.apache.log4j.Hierarchy.";
        nbs = new NotificationBroadcasterSupport();
        hierarchy = LogManager.getLoggerRepository();
        buildDynamicMBeanInfo();
    }

    private void buildDynamicMBeanInfo()
    {
        java.lang.reflect.Constructor aconstructor[] = getClass().getConstructors();
        dConstructors[0] = new MBeanConstructorInfo("HierarchyDynamicMBean(): Constructs a HierarchyDynamicMBean instance", aconstructor[0]);
        vAttributes.add(new MBeanAttributeInfo("threshold", "java.lang.String", "The \"threshold\" state of the hiearchy.", true, true, false));
        MBeanParameterInfo ambeanparameterinfo[] = new MBeanParameterInfo[1];
        ambeanparameterinfo[0] = new MBeanParameterInfo("name", "java.lang.String", "Create a logger MBean");
        dOperations[0] = new MBeanOperationInfo("addLoggerMBean", "addLoggerMBean(): add a loggerMBean", ambeanparameterinfo, "javax.management.ObjectName", 1);
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

    public void addAppenderEvent(Category category, Appender appender)
    {
        log.debug("addAppenderEvent called: logger=" + category.getName() + ", appender=" + appender.getName());
        Notification notification = new Notification("addAppender." + category.getName(), this, 0L);
        notification.setUserData(appender);
        log.debug("sending notification.");
        nbs.sendNotification(notification);
    }

    public ObjectName addLoggerMBean(String s)
    {
        Logger logger = LogManager.exists(s);
        if (logger != null)
            return addLoggerMBean(logger);
        else
            return null;
    }

    ObjectName addLoggerMBean(Logger logger)
    {
        String s;
        ObjectName objectname;
        s = logger.getName();
        objectname = null;
        LoggerDynamicMBean loggerdynamicmbean;
        ObjectName objectname1;
        loggerdynamicmbean = new LoggerDynamicMBean(logger);
        objectname1 = new ObjectName("log4j", "logger", s);
        if (!server.isRegistered(objectname1))
        {
            registerMBean(loggerdynamicmbean, objectname1);
            NotificationFilterSupport notificationfiltersupport = new NotificationFilterSupport();
            notificationfiltersupport.enableType("addAppender." + logger.getName());
            log.debug("---Adding logger [" + s + "] as listener.");
            nbs.addNotificationListener(loggerdynamicmbean, notificationfiltersupport, null);
            vAttributes.add(new MBeanAttributeInfo("logger=" + s, "javax.management.ObjectName", "The " + s + " logger.", true, true, false));
        }
        return objectname1;
        JMException jmexception;
        jmexception;
_L4:
        log.error("Could not add loggerMBean for [" + s + "].", jmexception);
        return objectname;
        RuntimeException runtimeexception;
        runtimeexception;
_L2:
        log.error("Could not add loggerMBean for [" + s + "].", runtimeexception);
        return objectname;
        runtimeexception;
        objectname = objectname1;
        if (true) goto _L2; else goto _L1
_L1:
        jmexception;
        objectname = objectname1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void addNotificationListener(NotificationListener notificationlistener, NotificationFilter notificationfilter, Object obj)
    {
        nbs.addNotificationListener(notificationlistener, notificationfilter, obj);
    }

    public Object getAttribute(String s)
        throws AttributeNotFoundException, MBeanException, ReflectionException
    {
        String s1;
        if (s == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute name cannot be null"), "Cannot invoke a getter of " + dClassName + " with null attribute name");
        log.debug("Called getAttribute with [" + s + "].");
        if (s.equals("threshold"))
            return hierarchy.getThreshold();
        if (!s.startsWith("logger"))
            break MISSING_BLOCK_LABEL_219;
        int i = s.indexOf("%3D");
        s1 = s;
        if (i > 0)
            s1 = s.substring(0, i) + '=' + s.substring(i + 3);
        ObjectName objectname = new ObjectName("log4j:" + s1);
        return objectname;
        JMException jmexception;
        jmexception;
        log.error("Could not create ObjectName" + s1);
_L2:
        throw new AttributeNotFoundException("Cannot find " + s + " attribute in " + dClassName);
        RuntimeException runtimeexception;
        runtimeexception;
        log.error("Could not create ObjectName" + s1);
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected Logger getLogger()
    {
        return log;
    }

    public MBeanInfo getMBeanInfo()
    {
        MBeanAttributeInfo ambeanattributeinfo[] = new MBeanAttributeInfo[vAttributes.size()];
        vAttributes.toArray(ambeanattributeinfo);
        return new MBeanInfo(dClassName, dDescription, ambeanattributeinfo, dConstructors, dOperations, new MBeanNotificationInfo[0]);
    }

    public MBeanNotificationInfo[] getNotificationInfo()
    {
        return nbs.getNotificationInfo();
    }

    public Object invoke(String s, Object aobj[], String as[])
        throws MBeanException, ReflectionException
    {
        if (s == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Operation name cannot be null"), "Cannot invoke a null operation in " + dClassName);
        if (s.equals("addLoggerMBean"))
            return addLoggerMBean((String)aobj[0]);
        else
            throw new ReflectionException(new NoSuchMethodException(s), "Cannot find the operation " + s + " in " + dClassName);
    }

    public void postRegister(Boolean boolean1)
    {
        log.debug("postRegister is called.");
        hierarchy.addHierarchyEventListener(this);
        addLoggerMBean(hierarchy.getRootLogger());
    }

    public void removeAppenderEvent(Category category, Appender appender)
    {
        log.debug("removeAppenderCalled: logger=" + category.getName() + ", appender=" + appender.getName());
    }

    public void removeNotificationListener(NotificationListener notificationlistener)
        throws ListenerNotFoundException
    {
        nbs.removeNotificationListener(notificationlistener);
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
        if (s.equals("threshold"))
        {
            org.apache.log4j.Level level = OptionConverter.toLevel((String)obj, hierarchy.getThreshold());
            hierarchy.setThreshold(level);
        }
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$jmx$HierarchyDynamicMBean == null)
        {
            class1 = _mthclass$("org.apache.log4j.jmx.HierarchyDynamicMBean");
            class$org$apache$log4j$jmx$HierarchyDynamicMBean = class1;
        } else
        {
            class1 = class$org$apache$log4j$jmx$HierarchyDynamicMBean;
        }
        log = Logger.getLogger(class1);
    }
}
