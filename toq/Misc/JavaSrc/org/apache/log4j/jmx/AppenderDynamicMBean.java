// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.jmx;

import java.beans.*;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.Vector;
import javax.management.*;
import org.apache.log4j.*;
import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.spi.OptionHandler;

// Referenced classes of package org.apache.log4j.jmx:
//            AbstractDynamicMBean, MethodUnion, LayoutDynamicMBean

public class AppenderDynamicMBean extends AbstractDynamicMBean
{

    private static Logger cat;
    static Class class$java$lang$String;
    static Class class$org$apache$log4j$Layout;
    static Class class$org$apache$log4j$Priority;
    static Class class$org$apache$log4j$jmx$AppenderDynamicMBean;
    private Appender appender;
    private Vector dAttributes;
    private String dClassName;
    private MBeanConstructorInfo dConstructors[];
    private String dDescription;
    private MBeanOperationInfo dOperations[];
    private Hashtable dynamicProps;

    public AppenderDynamicMBean(Appender appender1)
        throws IntrospectionException
    {
        dConstructors = new MBeanConstructorInfo[1];
        dAttributes = new Vector();
        dClassName = getClass().getName();
        dynamicProps = new Hashtable(5);
        dOperations = new MBeanOperationInfo[2];
        dDescription = "This MBean acts as a management facade for log4j appenders.";
        appender = appender1;
        buildDynamicMBeanInfo();
    }

    private void buildDynamicMBeanInfo()
        throws IntrospectionException
    {
        java.lang.reflect.Constructor aconstructor[] = getClass().getConstructors();
        dConstructors[0] = new MBeanConstructorInfo("AppenderDynamicMBean(): Constructs a AppenderDynamicMBean instance", aconstructor[0]);
        PropertyDescriptor apropertydescriptor[] = Introspector.getBeanInfo(appender.getClass()).getPropertyDescriptors();
        int i = apropertydescriptor.length;
        for (int j = 0; j < i; j++)
        {
            String s = apropertydescriptor[j].getName();
            Method method = apropertydescriptor[j].getReadMethod();
            Method method1 = apropertydescriptor[j].getWriteMethod();
            if (method == null)
                continue;
            Class class1 = method.getReturnType();
            if (!isSupportedType(class1))
                continue;
            Class class2;
            if (class$org$apache$log4j$Priority == null)
            {
                class2 = _mthclass$("org.apache.log4j.Priority");
                class$org$apache$log4j$Priority = class2;
            } else
            {
                class2 = class$org$apache$log4j$Priority;
            }
            String s1;
            if (class1.isAssignableFrom(class2))
                s1 = "java.lang.String";
            else
                s1 = class1.getName();
            Vector vector = dAttributes;
            boolean flag;
            if (method1 != null)
                flag = true;
            else
                flag = false;
            vector.add(new MBeanAttributeInfo(s, s1, "Dynamic", true, flag, false));
            dynamicProps.put(s, new MethodUnion(method, method1));
        }

        MBeanParameterInfo ambeanparameterinfo[] = new MBeanParameterInfo[0];
        dOperations[0] = new MBeanOperationInfo("activateOptions", "activateOptions(): add an appender", ambeanparameterinfo, "void", 1);
        MBeanParameterInfo ambeanparameterinfo1[] = new MBeanParameterInfo[1];
        ambeanparameterinfo1[0] = new MBeanParameterInfo("layout class", "java.lang.String", "layout class");
        dOperations[1] = new MBeanOperationInfo("setLayout", "setLayout(): add a layout", ambeanparameterinfo1, "void", 1);
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

    private boolean isSupportedType(Class class1)
    {
        if (class1.isPrimitive())
            return true;
        Class class2;
        if (class$java$lang$String == null)
        {
            class2 = _mthclass$("java.lang.String");
            class$java$lang$String = class2;
        } else
        {
            class2 = class$java$lang$String;
        }
        if (class1 == class2)
            return true;
        Class class3;
        if (class$org$apache$log4j$Priority == null)
        {
            class3 = _mthclass$("org.apache.log4j.Priority");
            class$org$apache$log4j$Priority = class3;
        } else
        {
            class3 = class$org$apache$log4j$Priority;
        }
        return class1.isAssignableFrom(class3);
    }

    public Object getAttribute(String s)
        throws AttributeNotFoundException, MBeanException, ReflectionException
    {
        if (s == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute name cannot be null"), "Cannot invoke a getter of " + dClassName + " with null attribute name");
        cat.debug("getAttribute called with [" + s + "].");
        if (!s.startsWith("appender=" + appender.getName() + ",layout"))
            break MISSING_BLOCK_LABEL_162;
        ObjectName objectname = new ObjectName("log4j:" + s);
        return objectname;
        MalformedObjectNameException malformedobjectnameexception;
        malformedobjectnameexception;
        cat.error("attributeName", malformedobjectnameexception);
_L2:
        MethodUnion methodunion = (MethodUnion)dynamicProps.get(s);
        if (methodunion == null || methodunion.readMethod == null)
            break; /* Loop/switch isn't completed */
        Object obj;
        RuntimeException runtimeexception1;
        try
        {
            obj = methodunion.readMethod.invoke(appender, null);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return null;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            return null;
        }
        catch (RuntimeException runtimeexception)
        {
            return null;
        }
        return obj;
        runtimeexception1;
        cat.error("attributeName", runtimeexception1);
        if (true) goto _L2; else goto _L1
_L1:
        throw new AttributeNotFoundException("Cannot find " + s + " attribute in " + dClassName);
    }

    protected Logger getLogger()
    {
        return cat;
    }

    public MBeanInfo getMBeanInfo()
    {
        cat.debug("getMBeanInfo called.");
        MBeanAttributeInfo ambeanattributeinfo[] = new MBeanAttributeInfo[dAttributes.size()];
        dAttributes.toArray(ambeanattributeinfo);
        return new MBeanInfo(dClassName, dDescription, ambeanattributeinfo, dConstructors, dOperations, new MBeanNotificationInfo[0]);
    }

    public Object invoke(String s, Object aobj[], String as[])
        throws MBeanException, ReflectionException
    {
        if (s.equals("activateOptions") && (appender instanceof OptionHandler))
        {
            ((OptionHandler)appender).activateOptions();
            return "Options activated.";
        }
        if (s.equals("setLayout"))
        {
            String s1 = (String)aobj[0];
            Class class1;
            if (class$org$apache$log4j$Layout == null)
            {
                class1 = _mthclass$("org.apache.log4j.Layout");
                class$org$apache$log4j$Layout = class1;
            } else
            {
                class1 = class$org$apache$log4j$Layout;
            }
            Layout layout = (Layout)OptionConverter.instantiateByClassName(s1, class1, null);
            appender.setLayout(layout);
            registerLayoutMBean(layout);
        }
        return null;
    }

    public ObjectName preRegister(MBeanServer mbeanserver, ObjectName objectname)
    {
        cat.debug("preRegister called. Server=" + mbeanserver + ", name=" + objectname);
        server = mbeanserver;
        registerLayoutMBean(appender.getLayout());
        return objectname;
    }

    void registerLayoutMBean(Layout layout)
    {
        String s;
        if (layout == null)
            return;
        s = getAppenderName(appender) + ",layout=" + layout.getClass().getName();
        cat.debug("Adding LayoutMBean:" + s);
        LayoutDynamicMBean layoutdynamicmbean;
        ObjectName objectname;
        layoutdynamicmbean = new LayoutDynamicMBean(layout);
        objectname = new ObjectName("log4j:appender=" + s);
        if (!server.isRegistered(objectname))
        {
            registerMBean(layoutdynamicmbean, objectname);
            dAttributes.add(new MBeanAttributeInfo("appender=" + s, "javax.management.ObjectName", "The " + s + " layout.", true, true, false));
        }
        return;
        JMException jmexception;
        jmexception;
_L6:
        cat.error("Could not add DynamicLayoutMBean for [" + s + "].", jmexception);
        return;
        IntrospectionException introspectionexception;
        introspectionexception;
_L4:
        cat.error("Could not add DynamicLayoutMBean for [" + s + "].", introspectionexception);
        return;
        RuntimeException runtimeexception;
        runtimeexception;
_L2:
        cat.error("Could not add DynamicLayoutMBean for [" + s + "].", runtimeexception);
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
        String s;
        if (attribute == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute cannot be null"), "Cannot invoke a setter of " + dClassName + " with null attribute");
        s = attribute.getName();
        Object obj = attribute.getValue();
        if (s == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute name cannot be null"), "Cannot invoke the setter of " + dClassName + " with null attribute name");
        MethodUnion methodunion = (MethodUnion)dynamicProps.get(s);
        if (methodunion == null || methodunion.writeMethod == null)
            break MISSING_BLOCK_LABEL_294;
        Object aobj[] = new Object[1];
        Class class1 = methodunion.writeMethod.getParameterTypes()[0];
        Class class2;
        if (class$org$apache$log4j$Priority == null)
        {
            class2 = _mthclass$("org.apache.log4j.Priority");
            class$org$apache$log4j$Priority = class2;
        } else
        {
            class2 = class$org$apache$log4j$Priority;
        }
        if (class1 == class2)
            obj = OptionConverter.toLevel((String)obj, (Level)getAttribute(s));
        aobj[0] = obj;
        methodunion.writeMethod.invoke(appender, aobj);
_L1:
        return;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
            Thread.currentThread().interrupt();
        cat.error("FIXME", invocationtargetexception);
        return;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        cat.error("FIXME", illegalaccessexception);
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        cat.error("FIXME", runtimeexception);
        return;
        if (!s.endsWith(".layout"))
            throw new AttributeNotFoundException("Attribute " + s + " not found in " + getClass().getName());
          goto _L1
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$jmx$AppenderDynamicMBean == null)
        {
            class1 = _mthclass$("org.apache.log4j.jmx.AppenderDynamicMBean");
            class$org$apache$log4j$jmx$AppenderDynamicMBean = class1;
        } else
        {
            class1 = class$org$apache$log4j$jmx$AppenderDynamicMBean;
        }
        cat = Logger.getLogger(class1);
    }
}
