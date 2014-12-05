// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.util.ResourceBundle;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            LogXF, Logger, Level

public final class LogSF extends LogXF
{

    private static final String FQCN;
    static Class class$org$apache$log4j$LogSF;

    private LogSF()
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
        if (s != null)
            if (s.indexOf("\\{") >= 0)
            {
                s = format(s, new Object[] {
                    obj
                });
            } else
            {
                int i = s.indexOf("{}");
                if (i >= 0)
                    return s.substring(0, i) + obj + s.substring(i + 2);
            }
        return s;
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
        if (s != null)
        {
            String s1 = "";
            int i = 0;
            int j = s.indexOf("{");
            int l;
            for (int k = 0; j >= 0; k = l)
            {
                if (j != 0 && s.charAt(j - 1) == '\\')
                {
                    s1 = s1 + s.substring(i, j - 1) + "{";
                    i = j + 1;
                    l = k;
                } else
                {
                    String s2 = s1 + s.substring(i, j);
                    if (j + 1 < s.length() && s.charAt(j + 1) == '}')
                    {
                        if (aobj != null && k < aobj.length)
                        {
                            StringBuffer stringbuffer = (new StringBuffer()).append(s2);
                            l = k + 1;
                            s1 = stringbuffer.append(aobj[k]).toString();
                        } else
                        {
                            s1 = s2 + "{}";
                            l = k;
                        }
                        i = j + 2;
                    } else
                    {
                        s1 = s2 + "{";
                        i = j + 1;
                        l = k;
                    }
                }
                j = s.indexOf("{", i);
            }

            return s1 + s.substring(i);
        } else
        {
            return null;
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
        if (class$org$apache$log4j$LogSF == null)
        {
            class1 = _mthclass$("org.apache.log4j.LogSF");
            class$org$apache$log4j$LogSF = class1;
        } else
        {
            class1 = class$org$apache$log4j$LogSF;
        }
        FQCN = class1.getName();
    }
}
