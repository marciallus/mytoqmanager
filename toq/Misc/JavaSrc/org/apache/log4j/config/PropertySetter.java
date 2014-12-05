// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.config;

import java.beans.*;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Enumeration;
import java.util.Properties;
import org.apache.log4j.Appender;
import org.apache.log4j.Level;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.spi.OptionHandler;

// Referenced classes of package org.apache.log4j.config:
//            PropertySetterException

public class PropertySetter
{

    static Class class$java$lang$String;
    static Class class$org$apache$log4j$Priority;
    static Class class$org$apache$log4j$spi$ErrorHandler;
    static Class class$org$apache$log4j$spi$OptionHandler;
    protected Object obj;
    protected PropertyDescriptor props[];

    public PropertySetter(Object obj1)
    {
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

    public static void setProperties(Object obj1, Properties properties, String s)
    {
        (new PropertySetter(obj1)).setProperties(properties, s);
    }

    public void activate()
    {
        if (obj instanceof OptionHandler)
            ((OptionHandler)obj).activateOptions();
    }

    protected Object convertArg(String s, Class class1)
    {
        if (s == null)
        {
            s = null;
        } else
        {
            String s1 = s.trim();
            Class class2;
            if (class$java$lang$String == null)
            {
                class2 = _mthclass$("java.lang.String");
                class$java$lang$String = class2;
            } else
            {
                class2 = class$java$lang$String;
            }
            if (!class2.isAssignableFrom(class1))
            {
                if (Integer.TYPE.isAssignableFrom(class1))
                    return new Integer(s1);
                if (Long.TYPE.isAssignableFrom(class1))
                    return new Long(s1);
                if (Boolean.TYPE.isAssignableFrom(class1))
                {
                    if ("true".equalsIgnoreCase(s1))
                        return Boolean.TRUE;
                    if ("false".equalsIgnoreCase(s1))
                        return Boolean.FALSE;
                } else
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
                    if (class3.isAssignableFrom(class1))
                        return OptionConverter.toLevel(s1, Level.DEBUG);
                    Class class4;
                    if (class$org$apache$log4j$spi$ErrorHandler == null)
                    {
                        class4 = _mthclass$("org.apache.log4j.spi.ErrorHandler");
                        class$org$apache$log4j$spi$ErrorHandler = class4;
                    } else
                    {
                        class4 = class$org$apache$log4j$spi$ErrorHandler;
                    }
                    if (class4.isAssignableFrom(class1))
                    {
                        Class class5;
                        if (class$org$apache$log4j$spi$ErrorHandler == null)
                        {
                            class5 = _mthclass$("org.apache.log4j.spi.ErrorHandler");
                            class$org$apache$log4j$spi$ErrorHandler = class5;
                        } else
                        {
                            class5 = class$org$apache$log4j$spi$ErrorHandler;
                        }
                        return OptionConverter.instantiateByClassName(s1, class5, null);
                    }
                }
                return null;
            }
        }
        return s;
    }

    protected PropertyDescriptor getPropertyDescriptor(String s)
    {
        if (props == null)
            introspect();
        for (int i = 0; i < props.length; i++)
            if (s.equals(props[i].getName()))
                return props[i];

        return null;
    }

    protected void introspect()
    {
        try
        {
            props = Introspector.getBeanInfo(obj.getClass()).getPropertyDescriptors();
            return;
        }
        catch (IntrospectionException introspectionexception)
        {
            LogLog.error("Failed to introspect " + obj + ": " + introspectionexception.getMessage());
        }
        props = new PropertyDescriptor[0];
    }

    public void setProperties(Properties properties, String s)
    {
        int i = s.length();
        Enumeration enumeration = properties.propertyNames();
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            String s1 = (String)enumeration.nextElement();
            if (!s1.startsWith(s) || s1.indexOf('.', i + 1) > 0)
                continue;
            String s2 = OptionConverter.findAndSubst(s1, properties);
            String s3 = s1.substring(i);
            if (("layout".equals(s3) || "errorhandler".equals(s3)) && (obj instanceof Appender))
                continue;
            PropertyDescriptor propertydescriptor = getPropertyDescriptor(Introspector.decapitalize(s3));
            if (propertydescriptor != null)
            {
                Class class1;
                if (class$org$apache$log4j$spi$OptionHandler == null)
                {
                    class1 = _mthclass$("org.apache.log4j.spi.OptionHandler");
                    class$org$apache$log4j$spi$OptionHandler = class1;
                } else
                {
                    class1 = class$org$apache$log4j$spi$OptionHandler;
                }
                if (class1.isAssignableFrom(propertydescriptor.getPropertyType()) && propertydescriptor.getWriteMethod() != null)
                {
                    OptionHandler optionhandler = (OptionHandler)OptionConverter.instantiateByKey(properties, s + s3, propertydescriptor.getPropertyType(), null);
                    (new PropertySetter(optionhandler)).setProperties(properties, s + s3 + ".");
                    try
                    {
                        propertydescriptor.getWriteMethod().invoke(obj, new Object[] {
                            optionhandler
                        });
                    }
                    catch (IllegalAccessException illegalaccessexception)
                    {
                        LogLog.warn("Failed to set property [" + s3 + "] to value \"" + s2 + "\". ", illegalaccessexception);
                    }
                    catch (InvocationTargetException invocationtargetexception)
                    {
                        if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
                            Thread.currentThread().interrupt();
                        LogLog.warn("Failed to set property [" + s3 + "] to value \"" + s2 + "\". ", invocationtargetexception);
                    }
                    catch (RuntimeException runtimeexception)
                    {
                        LogLog.warn("Failed to set property [" + s3 + "] to value \"" + s2 + "\". ", runtimeexception);
                    }
                    continue;
                }
            }
            setProperty(s3, s2);
        } while (true);
        activate();
    }

    public void setProperty(PropertyDescriptor propertydescriptor, String s, String s1)
        throws PropertySetterException
    {
        Method method = propertydescriptor.getWriteMethod();
        if (method == null)
            throw new PropertySetterException("No setter for property [" + s + "].");
        Class aclass[] = method.getParameterTypes();
        if (aclass.length != 1)
            throw new PropertySetterException("#params for setter != 1");
        Object obj1;
        try
        {
            obj1 = convertArg(s1, aclass[0]);
        }
        catch (Throwable throwable)
        {
            throw new PropertySetterException("Conversion to type [" + aclass[0] + "] failed. Reason: " + throwable);
        }
        if (obj1 == null)
            throw new PropertySetterException("Conversion to type [" + aclass[0] + "] failed.");
        LogLog.debug("Setting property [" + s + "] to [" + obj1 + "].");
        try
        {
            method.invoke(obj, new Object[] {
                obj1
            });
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            throw new PropertySetterException(illegalaccessexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            throw new PropertySetterException(invocationtargetexception);
        }
        catch (RuntimeException runtimeexception)
        {
            throw new PropertySetterException(runtimeexception);
        }
    }

    public void setProperty(String s, String s1)
    {
        if (s1 == null)
            return;
        String s2 = Introspector.decapitalize(s);
        PropertyDescriptor propertydescriptor = getPropertyDescriptor(s2);
        if (propertydescriptor == null)
        {
            LogLog.warn("No such property [" + s2 + "] in " + obj.getClass().getName() + ".");
            return;
        }
        try
        {
            setProperty(propertydescriptor, s2, s1);
            return;
        }
        catch (PropertySetterException propertysetterexception)
        {
            LogLog.warn("Failed to set property [" + s2 + "] to value \"" + s1 + "\". ", propertysetterexception.rootCause);
        }
    }
}
