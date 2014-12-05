// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.InputStream;
import java.io.InterruptedIOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URL;
import java.util.Properties;
import org.apache.log4j.Level;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.spi.Configurator;
import org.apache.log4j.spi.LoggerRepository;

// Referenced classes of package org.apache.log4j.helpers:
//            LogLog, Loader

public class OptionConverter
{

    static String DELIM_START = "${";
    static int DELIM_START_LEN = 2;
    static char DELIM_STOP = '}';
    static int DELIM_STOP_LEN = 1;
    static Class class$java$lang$String;
    static Class class$org$apache$log4j$Level;
    static Class class$org$apache$log4j$spi$Configurator;

    private OptionConverter()
    {
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

    public static String[] concatanateArrays(String as[], String as1[])
    {
        String as2[] = new String[as.length + as1.length];
        System.arraycopy(as, 0, as2, 0, as.length);
        System.arraycopy(as1, 0, as2, as.length, as1.length);
        return as2;
    }

    public static String convertSpecialChars(String s)
    {
        int i = s.length();
        StringBuffer stringbuffer = new StringBuffer(i);
        int k;
        for (int j = 0; j < i; j = k)
        {
            k = j + 1;
            char c = s.charAt(j);
            if (c == '\\')
            {
                int l = k + 1;
                c = s.charAt(k);
                if (c == 'n')
                {
                    c = '\n';
                    k = l;
                } else
                if (c == 'r')
                {
                    c = '\r';
                    k = l;
                } else
                if (c == 't')
                {
                    c = '\t';
                    k = l;
                } else
                if (c == 'f')
                {
                    c = '\f';
                    k = l;
                } else
                if (c == '\b')
                {
                    c = '\b';
                    k = l;
                } else
                if (c == '"')
                {
                    c = '"';
                    k = l;
                } else
                if (c == '\'')
                {
                    c = '\'';
                    k = l;
                } else
                if (c == '\\')
                {
                    c = '\\';
                    k = l;
                } else
                {
                    k = l;
                }
            }
            stringbuffer.append(c);
        }

        return stringbuffer.toString();
    }

    public static String findAndSubst(String s, Properties properties)
    {
        String s1 = properties.getProperty(s);
        if (s1 == null)
            return null;
        String s2;
        try
        {
            s2 = substVars(s1, properties);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            LogLog.error("Bad option value [" + s1 + "].", illegalargumentexception);
            return s1;
        }
        return s2;
    }

    public static String getSystemProperty(String s, String s1)
    {
        String s2;
        try
        {
            s2 = System.getProperty(s, s1);
        }
        catch (Throwable throwable)
        {
            LogLog.debug("Was not allowed to read system property \"" + s + "\".");
            return s1;
        }
        return s2;
    }

    public static Object instantiateByClassName(String s, Class class1, Object obj)
    {
        if (s == null)
            break MISSING_BLOCK_LABEL_302;
        Class class2;
        class2 = Loader.loadClass(s);
        if (class1.isAssignableFrom(class2))
            break MISSING_BLOCK_LABEL_164;
        LogLog.error("A \"" + s + "\" object is not assignable to a \"" + class1.getName() + "\" variable.");
        LogLog.error("The class \"" + class1.getName() + "\" was loaded by ");
        LogLog.error("[" + class1.getClassLoader() + "] whereas object of type ");
        LogLog.error("\"" + class2.getName() + "\" was loaded by [" + class2.getClassLoader() + "].");
        return obj;
        Object obj1 = class2.newInstance();
        return obj1;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        LogLog.error("Could not instantiate class [" + s + "].", classnotfoundexception);
        return obj;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        LogLog.error("Could not instantiate class [" + s + "].", illegalaccessexception);
        return obj;
        InstantiationException instantiationexception;
        instantiationexception;
        LogLog.error("Could not instantiate class [" + s + "].", instantiationexception);
        return obj;
        RuntimeException runtimeexception;
        runtimeexception;
        LogLog.error("Could not instantiate class [" + s + "].", runtimeexception);
        return obj;
    }

    public static Object instantiateByKey(Properties properties, String s, Class class1, Object obj)
    {
        String s1 = findAndSubst(s, properties);
        if (s1 == null)
        {
            LogLog.error("Could not find value for key " + s);
            return obj;
        } else
        {
            return instantiateByClassName(s1.trim(), class1, obj);
        }
    }

    public static void selectAndConfigure(InputStream inputstream, String s, LoggerRepository loggerrepository)
    {
        Object obj;
        if (s != null)
        {
            LogLog.debug("Preferred configurator class: " + s);
            Class class1;
            if (class$org$apache$log4j$spi$Configurator == null)
            {
                class1 = _mthclass$("org.apache.log4j.spi.Configurator");
                class$org$apache$log4j$spi$Configurator = class1;
            } else
            {
                class1 = class$org$apache$log4j$spi$Configurator;
            }
            obj = (Configurator)instantiateByClassName(s, class1, null);
            if (obj == null)
            {
                LogLog.error("Could not instantiate configurator [" + s + "].");
                return;
            }
        } else
        {
            obj = new PropertyConfigurator();
        }
        ((Configurator) (obj)).doConfigure(inputstream, loggerrepository);
    }

    public static void selectAndConfigure(URL url, String s, LoggerRepository loggerrepository)
    {
        String s1 = url.getFile();
        if (s == null && s1 != null && s1.endsWith(".xml"))
            s = "org.apache.log4j.xml.DOMConfigurator";
        Object obj;
        if (s != null)
        {
            LogLog.debug("Preferred configurator class: " + s);
            Class class1;
            if (class$org$apache$log4j$spi$Configurator == null)
            {
                class1 = _mthclass$("org.apache.log4j.spi.Configurator");
                class$org$apache$log4j$spi$Configurator = class1;
            } else
            {
                class1 = class$org$apache$log4j$spi$Configurator;
            }
            obj = (Configurator)instantiateByClassName(s, class1, null);
            if (obj == null)
            {
                LogLog.error("Could not instantiate configurator [" + s + "].");
                return;
            }
        } else
        {
            obj = new PropertyConfigurator();
        }
        ((Configurator) (obj)).doConfigure(url, loggerrepository);
    }

    public static String substVars(String s, Properties properties)
        throws IllegalArgumentException
    {
        StringBuffer stringbuffer = new StringBuffer();
        int i = 0;
        do
        {
            int j = s.indexOf(DELIM_START, i);
            if (j == -1)
                if (i == 0)
                {
                    return s;
                } else
                {
                    stringbuffer.append(s.substring(i, s.length()));
                    return stringbuffer.toString();
                }
            stringbuffer.append(s.substring(i, j));
            int k = s.indexOf(DELIM_STOP, j);
            if (k == -1)
                throw new IllegalArgumentException('"' + s + "\" has no closing brace. Opening brace at position " + j + '.');
            String s1 = s.substring(j + DELIM_START_LEN, k);
            String s2 = getSystemProperty(s1, null);
            if (s2 == null && properties != null)
                s2 = properties.getProperty(s1);
            if (s2 != null)
                stringbuffer.append(substVars(s2, properties));
            i = k + DELIM_STOP_LEN;
        } while (true);
    }

    public static boolean toBoolean(String s, boolean flag)
    {
        if (s != null)
        {
            String s1 = s.trim();
            if ("true".equalsIgnoreCase(s1))
                return true;
            if ("false".equalsIgnoreCase(s1))
                return false;
        }
        return flag;
    }

    public static long toFileSize(String s, long l)
    {
        if (s != null) goto _L2; else goto _L1
_L1:
        return l;
_L2:
        String s1;
        long l1;
        int i;
        s1 = s.trim().toUpperCase();
        l1 = 1L;
        i = s1.indexOf("KB");
        if (i == -1) goto _L4; else goto _L3
_L3:
        l1 = 1024L;
        s1 = s1.substring(0, i);
_L5:
        if (s1 != null)
        {
            int j;
            int k;
            long l2;
            try
            {
                l2 = Long.valueOf(s1).longValue();
            }
            catch (NumberFormatException numberformatexception)
            {
                LogLog.error("[" + s1 + "] is not in proper int form.");
                LogLog.error("[" + s + "] not in expected format.", numberformatexception);
                return l;
            }
            return l2 * l1;
        }
        if (true) goto _L1; else goto _L4
_L4:
        j = s1.indexOf("MB");
        if (j != -1)
        {
            l1 = 0x100000L;
            s1 = s1.substring(0, j);
        } else
        {
            k = s1.indexOf("GB");
            if (k != -1)
            {
                l1 = 0x40000000L;
                s1 = s1.substring(0, k);
            }
        }
          goto _L5
    }

    public static int toInt(String s, int i)
    {
        if (s != null)
        {
            String s1 = s.trim();
            int j;
            try
            {
                j = Integer.valueOf(s1).intValue();
            }
            catch (NumberFormatException numberformatexception)
            {
                LogLog.error("[" + s1 + "] is not in proper int form.");
                numberformatexception.printStackTrace();
                return i;
            }
            i = j;
        }
        return i;
    }

    public static Level toLevel(String s, Level level)
    {
        Level level1;
        String s2;
        String s3;
        if (s == null)
            return level;
        String s1 = s.trim();
        int i = s1.indexOf('#');
        if (i == -1)
            if ("NULL".equalsIgnoreCase(s1))
                return null;
            else
                return Level.toLevel(s1, level);
        level1 = level;
        s2 = s1.substring(i + 1);
        s3 = s1.substring(0, i);
        if ("NULL".equalsIgnoreCase(s3))
            return null;
        LogLog.debug("toLevel:class=[" + s2 + "]" + ":pri=[" + s3 + "]");
        Class class1;
        Class aclass[];
        class1 = Loader.loadClass(s2);
        aclass = new Class[2];
        if (class$java$lang$String != null) goto _L2; else goto _L1
_L1:
        Class class2;
        class2 = _mthclass$("java.lang.String");
        class$java$lang$String = class2;
_L8:
        aclass[0] = class2;
        if (class$org$apache$log4j$Level != null) goto _L4; else goto _L3
_L3:
        Class class3;
        class3 = _mthclass$("org.apache.log4j.Level");
        class$org$apache$log4j$Level = class3;
_L6:
        aclass[1] = class3;
        level1 = (Level)class1.getMethod("toLevel", aclass).invoke(null, new Object[] {
            s3, level
        });
          goto _L5
_L2:
        try
        {
            class2 = class$java$lang$String;
            continue; /* Loop/switch isn't completed */
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            LogLog.warn("custom level class [" + s2 + "] not found.");
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            LogLog.warn("custom level class [" + s2 + "]" + " does not have a class function toLevel(String, Level)", nosuchmethodexception);
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            if ((invocationtargetexception.getTargetException() instanceof InterruptedException) || (invocationtargetexception.getTargetException() instanceof InterruptedIOException))
                Thread.currentThread().interrupt();
            LogLog.warn("custom level class [" + s2 + "]" + " could not be instantiated", invocationtargetexception);
        }
        catch (ClassCastException classcastexception)
        {
            LogLog.warn("class [" + s2 + "] is not a subclass of org.apache.log4j.Level", classcastexception);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            LogLog.warn("class [" + s2 + "] cannot be instantiated due to access restrictions", illegalaccessexception);
        }
        catch (RuntimeException runtimeexception)
        {
            LogLog.warn("class [" + s2 + "], level [" + s3 + "] conversion failed.", runtimeexception);
        }
          goto _L5
_L4:
        class3 = class$org$apache$log4j$Level;
          goto _L6
_L5:
        return level1;
        if (true) goto _L8; else goto _L7
_L7:
    }

}
