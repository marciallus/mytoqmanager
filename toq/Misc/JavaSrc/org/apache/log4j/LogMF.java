// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.text.*;
import java.util.*;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            LogXF, Logger, Level

public final class LogMF extends LogXF
{

    private static final String FQCN;
    static Class class$org$apache$log4j$LogMF;
    private static DateFormat dateFormat = null;
    private static Locale dateLocale = null;
    private static NumberFormat numberFormat = null;
    private static Locale numberLocale = null;

    private LogMF()
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

    public static void debug(Logger logger, String s, byte byte0)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(byte0)));
    }

    public static void debug(Logger logger, String s, char c)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(c)));
    }

    public static void debug(Logger logger, String s, double d)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(d)));
    }

    public static void debug(Logger logger, String s, float f)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(f)));
    }

    public static void debug(Logger logger, String s, int i)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(i)));
    }

    public static void debug(Logger logger, String s, long l)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(l)));
    }

    public static void debug(Logger logger, String s, Object obj)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, obj));
    }

    public static void debug(Logger logger, String s, Object obj, Object obj1)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, toArray(obj, obj1)));
    }

    public static void debug(Logger logger, String s, Object obj, Object obj1, Object obj2)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, toArray(obj, obj1, obj2)));
    }

    public static void debug(Logger logger, String s, Object obj, Object obj1, Object obj2, Object obj3)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, toArray(obj, obj1, obj2, obj3)));
    }

    public static void debug(Logger logger, String s, short word0)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(word0)));
    }

    public static void debug(Logger logger, String s, boolean flag)
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, valueOf(flag)));
    }

    public static void debug(Logger logger, String s, Object aobj[])
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, aobj));
    }

    public static void debug(Logger logger, Throwable throwable, String s, Object aobj[])
    {
        if (logger.isDebugEnabled())
            forcedLog(logger, Level.DEBUG, format(s, aobj), throwable);
    }

    public static void error(Logger logger, String s, Object aobj[])
    {
        if (logger.isEnabledFor(Level.ERROR))
            forcedLog(logger, Level.ERROR, format(s, aobj));
    }

    public static void error(Logger logger, Throwable throwable, String s, Object aobj[])
    {
        if (logger.isEnabledFor(Level.ERROR))
            forcedLog(logger, Level.ERROR, format(s, aobj), throwable);
    }

    public static void fatal(Logger logger, String s, Object aobj[])
    {
        if (logger.isEnabledFor(Level.FATAL))
            forcedLog(logger, Level.FATAL, format(s, aobj));
    }

    public static void fatal(Logger logger, Throwable throwable, String s, Object aobj[])
    {
        if (logger.isEnabledFor(Level.FATAL))
            forcedLog(logger, Level.FATAL, format(s, aobj), throwable);
    }

    private static void forcedLog(Logger logger, Level level, String s)
    {
        logger.callAppenders(new LoggingEvent(FQCN, logger, level, s, null));
    }

    private static void forcedLog(Logger logger, Level level, String s, Throwable throwable)
    {
        logger.callAppenders(new LoggingEvent(FQCN, logger, level, s, throwable));
    }

    private static String format(String s, Object obj)
    {
        if (s == null)
            return null;
        if (isSimple(s))
        {
            String s2 = null;
            int i = 0;
            String s3 = "";
            for (int j = s.indexOf('{'); j >= 0;)
                if (j + 2 < s.length() && s.charAt(j + 2) == '}' && s.charAt(j + 1) >= '0' && s.charAt(j + 1) <= '9')
                {
                    int k = -48 + s.charAt(j + 1);
                    String s4 = s3 + s.substring(i, j);
                    if (k != 0)
                    {
                        s3 = s4 + s.substring(j, j + 3);
                    } else
                    {
                        if (s2 == null)
                            s2 = formatObject(obj);
                        s3 = s4 + s2;
                    }
                    i = j + 3;
                    j = s.indexOf('{', i);
                } else
                {
                    j = s.indexOf('{', j + 1);
                }

            return s3 + s.substring(i);
        }
        String s1;
        try
        {
            s1 = MessageFormat.format(s, new Object[] {
                obj
            });
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return s;
        }
        return s1;
    }

    private static String format(String s, String s1, Object aobj[])
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        String s2;
        String s3;
        try
        {
            s3 = ResourceBundle.getBundle(s).getString(s1);
        }
        catch (Exception exception)
        {
            s2 = s1;
            continue; /* Loop/switch isn't completed */
        }
        s2 = s3;
_L4:
        return format(s2, aobj);
_L2:
        s2 = s1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static String format(String s, Object aobj[])
    {
        if (s == null)
            return null;
        if (isSimple(s))
        {
            String as[] = new String[10];
            int i = 0;
            String s2 = "";
            for (int j = s.indexOf('{'); j >= 0;)
                if (j + 2 < s.length() && s.charAt(j + 2) == '}' && s.charAt(j + 1) >= '0' && s.charAt(j + 1) <= '9')
                {
                    int k = -48 + s.charAt(j + 1);
                    String s3 = s2 + s.substring(i, j);
                    if (as[k] == null)
                        if (aobj == null || k >= aobj.length)
                            as[k] = s.substring(j, j + 3);
                        else
                            as[k] = formatObject(aobj[k]);
                    s2 = s3 + as[k];
                    i = j + 3;
                    j = s.indexOf('{', i);
                } else
                {
                    j = s.indexOf('{', j + 1);
                }

            return s2 + s.substring(i);
        }
        String s1;
        try
        {
            s1 = MessageFormat.format(s, aobj);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return s;
        }
        return s1;
    }

    private static String formatDate(Object obj)
    {
        org/apache/log4j/LogMF;
        JVM INSTR monitorenter ;
        String s;
        Locale locale = Locale.getDefault();
        if (locale != dateLocale || dateFormat == null)
        {
            dateLocale = locale;
            dateFormat = DateFormat.getDateTimeInstance(3, 3, locale);
        }
        s = dateFormat.format(obj);
        org/apache/log4j/LogMF;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    private static String formatNumber(Object obj)
    {
        org/apache/log4j/LogMF;
        JVM INSTR monitorenter ;
        String s;
        Locale locale = Locale.getDefault();
        if (locale != numberLocale || numberFormat == null)
        {
            numberLocale = locale;
            numberFormat = NumberFormat.getInstance(locale);
        }
        s = numberFormat.format(obj);
        org/apache/log4j/LogMF;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    private static String formatObject(Object obj)
    {
        if (obj instanceof String)
            return obj.toString();
        if (!(obj instanceof Double) && !(obj instanceof Float))
        {
            if (obj instanceof Date)
                return formatDate(obj);
            else
                return String.valueOf(obj);
        } else
        {
            return formatNumber(obj);
        }
    }

    public static void info(Logger logger, String s, byte byte0)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(byte0)));
    }

    public static void info(Logger logger, String s, char c)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(c)));
    }

    public static void info(Logger logger, String s, double d)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(d)));
    }

    public static void info(Logger logger, String s, float f)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(f)));
    }

    public static void info(Logger logger, String s, int i)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(i)));
    }

    public static void info(Logger logger, String s, long l)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(l)));
    }

    public static void info(Logger logger, String s, Object obj)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, obj));
    }

    public static void info(Logger logger, String s, Object obj, Object obj1)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, toArray(obj, obj1)));
    }

    public static void info(Logger logger, String s, Object obj, Object obj1, Object obj2)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, toArray(obj, obj1, obj2)));
    }

    public static void info(Logger logger, String s, Object obj, Object obj1, Object obj2, Object obj3)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, toArray(obj, obj1, obj2, obj3)));
    }

    public static void info(Logger logger, String s, short word0)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(word0)));
    }

    public static void info(Logger logger, String s, boolean flag)
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, valueOf(flag)));
    }

    public static void info(Logger logger, String s, Object aobj[])
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, aobj));
    }

    public static void info(Logger logger, Throwable throwable, String s, Object aobj[])
    {
        if (logger.isInfoEnabled())
            forcedLog(logger, Level.INFO, format(s, aobj), throwable);
    }

    private static boolean isSimple(String s)
    {
label0:
        {
            if (s.indexOf('\'') == -1)
            {
                int i = s.indexOf('{');
                do
                {
                    if (i == -1)
                        break label0;
                    if (i + 2 >= s.length() || s.charAt(i + 2) != '}' || s.charAt(i + 1) < '0' || s.charAt(i + 1) > '9')
                        break;
                    i = s.indexOf('{', i + 1);
                } while (true);
            }
            return false;
        }
        return true;
    }

    public static void log(Logger logger, Level level, String s, byte byte0)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(byte0))));
    }

    public static void log(Logger logger, Level level, String s, char c)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(c))));
    }

    public static void log(Logger logger, Level level, String s, double d)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(d))));
    }

    public static void log(Logger logger, Level level, String s, float f)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(f))));
    }

    public static void log(Logger logger, Level level, String s, int i)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(i))));
    }

    public static void log(Logger logger, Level level, String s, long l)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(l))));
    }

    public static void log(Logger logger, Level level, String s, Object obj)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(obj)));
    }

    public static void log(Logger logger, Level level, String s, Object obj, Object obj1)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(obj, obj1)));
    }

    public static void log(Logger logger, Level level, String s, Object obj, Object obj1, Object obj2)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(obj, obj1, obj2)));
    }

    public static void log(Logger logger, Level level, String s, Object obj, Object obj1, Object obj2, Object obj3)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(obj, obj1, obj2, obj3)));
    }

    public static void log(Logger logger, Level level, String s, short word0)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(word0))));
    }

    public static void log(Logger logger, Level level, String s, boolean flag)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, toArray(valueOf(flag))));
    }

    public static void log(Logger logger, Level level, String s, Object aobj[])
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, aobj));
    }

    public static void log(Logger logger, Level level, Throwable throwable, String s, Object aobj[])
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, aobj), throwable);
    }

    public static void logrb(Logger logger, Level level, String s, String s1, byte byte0)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(byte0))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, char c)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(c))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, double d)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(d))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, float f)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(f))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, int i)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(i))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, long l)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(l))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, Object obj)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(obj)));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, Object obj, Object obj1)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(obj, obj1)));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, Object obj, Object obj1, Object obj2)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(obj, obj1, obj2)));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, Object obj, Object obj1, Object obj2, Object obj3)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(obj, obj1, obj2, obj3)));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, short word0)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(word0))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, boolean flag)
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, toArray(valueOf(flag))));
    }

    public static void logrb(Logger logger, Level level, String s, String s1, Object aobj[])
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, aobj));
    }

    public static void logrb(Logger logger, Level level, Throwable throwable, String s, String s1, Object aobj[])
    {
        if (logger.isEnabledFor(level))
            forcedLog(logger, level, format(s, s1, aobj), throwable);
    }

    public static void trace(Logger logger, String s, byte byte0)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(byte0)));
    }

    public static void trace(Logger logger, String s, char c)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(c)));
    }

    public static void trace(Logger logger, String s, double d)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(d)));
    }

    public static void trace(Logger logger, String s, float f)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(f)));
    }

    public static void trace(Logger logger, String s, int i)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(i)));
    }

    public static void trace(Logger logger, String s, long l)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(l)));
    }

    public static void trace(Logger logger, String s, Object obj)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, obj));
    }

    public static void trace(Logger logger, String s, Object obj, Object obj1)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, toArray(obj, obj1)));
    }

    public static void trace(Logger logger, String s, Object obj, Object obj1, Object obj2)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, toArray(obj, obj1, obj2)));
    }

    public static void trace(Logger logger, String s, Object obj, Object obj1, Object obj2, Object obj3)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, toArray(obj, obj1, obj2, obj3)));
    }

    public static void trace(Logger logger, String s, short word0)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(word0)));
    }

    public static void trace(Logger logger, String s, boolean flag)
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, valueOf(flag)));
    }

    public static void trace(Logger logger, String s, Object aobj[])
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, aobj));
    }

    public static void trace(Logger logger, Throwable throwable, String s, Object aobj[])
    {
        if (logger.isEnabledFor(TRACE))
            forcedLog(logger, TRACE, format(s, aobj), throwable);
    }

    public static void warn(Logger logger, String s, byte byte0)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(byte0)));
    }

    public static void warn(Logger logger, String s, char c)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(c)));
    }

    public static void warn(Logger logger, String s, double d)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(d)));
    }

    public static void warn(Logger logger, String s, float f)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(f)));
    }

    public static void warn(Logger logger, String s, int i)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(i)));
    }

    public static void warn(Logger logger, String s, long l)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(l)));
    }

    public static void warn(Logger logger, String s, Object obj)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, obj));
    }

    public static void warn(Logger logger, String s, Object obj, Object obj1)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, toArray(obj, obj1)));
    }

    public static void warn(Logger logger, String s, Object obj, Object obj1, Object obj2)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, toArray(obj, obj1, obj2)));
    }

    public static void warn(Logger logger, String s, Object obj, Object obj1, Object obj2, Object obj3)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, toArray(obj, obj1, obj2, obj3)));
    }

    public static void warn(Logger logger, String s, short word0)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(word0)));
    }

    public static void warn(Logger logger, String s, boolean flag)
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, valueOf(flag)));
    }

    public static void warn(Logger logger, String s, Object aobj[])
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, aobj));
    }

    public static void warn(Logger logger, Throwable throwable, String s, Object aobj[])
    {
        if (logger.isEnabledFor(Level.WARN))
            forcedLog(logger, Level.WARN, format(s, aobj), throwable);
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$LogMF == null)
        {
            class1 = _mthclass$("org.apache.log4j.LogMF");
            class$org$apache$log4j$LogMF = class1;
        } else
        {
            class1 = class$org$apache$log4j$LogMF;
        }
        FQCN = class1.getName();
    }
}
