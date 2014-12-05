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
//            AbstractDynamicMBean, MethodUnion

public class LayoutDynamicMBean extends AbstractDynamicMBean
{

    private static Logger cat;
    static Class class$java$lang$String;
    static Class class$org$apache$log4j$Level;
    static Class class$org$apache$log4j$Priority;
    static Class class$org$apache$log4j$jmx$LayoutDynamicMBean;
    private Vector dAttributes;
    private String dClassName;
    private MBeanConstructorInfo dConstructors[];
    private String dDescription;
    private MBeanOperationInfo dOperations[];
    private Hashtable dynamicProps;
    private Layout layout;

    public LayoutDynamicMBean(Layout layout1)
        throws IntrospectionException
    {
        dConstructors = new MBeanConstructorInfo[1];
        dAttributes = new Vector();
        dClassName = getClass().getName();
        dynamicProps = new Hashtable(5);
        dOperations = new MBeanOperationInfo[1];
        dDescription = "This MBean acts as a management facade for log4j layouts.";
        layout = layout1;
        buildDynamicMBeanInfo();
    }

    private void buildDynamicMBeanInfo()
        throws IntrospectionException
    {
        java.lang.reflect.Constructor aconstructor[] = getClass().getConstructors();
        dConstructors[0] = new MBeanConstructorInfo("LayoutDynamicMBean(): Constructs a LayoutDynamicMBean instance", aconstructor[0]);
        PropertyDescriptor apropertydescriptor[] = Introspector.getBeanInfo(layout.getClass()).getPropertyDescriptors();
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
            if (class$org$apache$log4j$Level == null)
            {
                class2 = _mthclass$("org.apache.log4j.Level");
                class$org$apache$log4j$Level = class2;
            } else
            {
                class2 = class$org$apache$log4j$Level;
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
        dOperations[0] = new MBeanOperationInfo("activateOptions", "activateOptions(): add an layout", ambeanparameterinfo, "void", 1);
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
        if (class$org$apache$log4j$Level == null)
        {
            class3 = _mthclass$("org.apache.log4j.Level");
            class$org$apache$log4j$Level = class3;
        } else
        {
            class3 = class$org$apache$log4j$Level;
        }
        return class1.isAssignableFrom(class3);
    }

    public Object getAttribute(String s)
        throws AttributeNotFoundException, MBeanException, ReflectionException
    {
        MethodUnion methodunion;
        if (s == null)
            throw new RuntimeOperationsException(new IllegalArgumentException("Attribute name cannot be null"), "Cannot invoke a getter of " + dClassName + " with null attribute name");
        methodunion = (MethodUnion)dynamicProps.get(s);
        cat.debug("----name=" + s + ", mu=" + methodunion);
        if (methodunion == null || methodunion.readMethod == null)
            break MISSING_BLOCK_LABEL_172;
        Object obj1 = methodunion.readMethod.invoke(layout, null);
        Object obj = obj1;
_L2:
        return obj;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        boolean flag;
        if (invocationtargetexception.getTargetException() instanceof InterruptedException)
            break; /* Loop/switch isn't completed */
        flag = invocationtargetexception.getTargetException() instanceof InterruptedIOException;
        obj = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        Thread.currentThread().interrupt();
        return null;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        return null;
        RuntimeException runtimeexception;
        runtimeexception;
        return null;
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
        if (s.equals("activateOptions") && (layout instanceof OptionHandler))
        {
            layout.activateOptions();
            return "Options activated.";
        } else
        {
            return null;
        }
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
        MethodUnion methodunion = (MethodUnion)dynamicProps.get(s);
        if (methodunion != null && methodunion.writeMethod != null)
        {
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
            try
            {
                methodunion.writeMethod.invoke(layout, aobj);
                return;
            }
            catch (InvocationTargetException invocationtargetexception)
            {
                if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
                    Thread.currentThread().interrupt();
                cat.error("FIXME", invocationtargetexception);
                return;
            }
            catch (IllegalAccessException illegalaccessexception)
            {
                cat.error("FIXME", illegalaccessexception);
                return;
            }
            catch (RuntimeException runtimeexception)
            {
                cat.error("FIXME", runtimeexception);
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
        if (class$org$apache$log4j$jmx$LayoutDynamicMBean == null)
        {
            class1 = _mthclass$("org.apache.log4j.jmx.LayoutDynamicMBean");
            class$org$apache$log4j$jmx$LayoutDynamicMBean = class1;
        } else
        {
            class1 = class$org$apache$log4j$jmx$LayoutDynamicMBean;
        }
        cat = Logger.getLogger(class1);
    }
}
