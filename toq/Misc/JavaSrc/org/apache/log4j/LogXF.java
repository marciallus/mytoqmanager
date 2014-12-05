// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            Level, Logger

public abstract class LogXF
{

    private static final String FQCN;
    protected static final Level TRACE = new Level(5000, "TRACE", 7);
    static Class class$org$apache$log4j$LogXF;


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

    public static void entering(Logger logger, String s, String s1)
    {
        if (logger.isDebugEnabled())
            logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s + "." + s1 + " ENTRY", null));
    }

    public static void entering(Logger logger, String s, String s1, Object obj)
    {
        if (!logger.isDebugEnabled()) goto _L2; else goto _L1
_L1:
        String s2 = s + "." + s1 + " ENTRY ";
        if (obj != null) goto _L4; else goto _L3
_L3:
        String s3 = s2 + "null";
_L6:
        logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s3, null));
_L2:
        return;
_L4:
        String s4 = s2 + obj;
        s3 = s4;
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        s3 = s2 + "?";
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void entering(Logger logger, String s, String s1, String s2)
    {
        if (logger.isDebugEnabled())
        {
            String s3 = s + "." + s1 + " ENTRY " + s2;
            logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s3, null));
        }
    }

    public static void entering(Logger logger, String s, String s1, Object aobj[])
    {
        if (!logger.isDebugEnabled()) goto _L2; else goto _L1
_L1:
        String s2 = s + "." + s1 + " ENTRY ";
        if (aobj == null || aobj.length <= 0) goto _L4; else goto _L3
_L3:
        String s4;
        int i;
        s4 = "{";
        i = 0;
_L6:
        if (i >= aobj.length)
            break; /* Loop/switch isn't completed */
        String s5 = s2 + s4 + aobj[i];
        s2 = s5;
_L7:
        s4 = ",";
        i++;
        if (true) goto _L6; else goto _L5
        Throwable throwable;
        throwable;
        s2 = s2 + s4 + "?";
          goto _L7
_L5:
        String s3 = s2 + "}";
_L9:
        logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s3, null));
_L2:
        return;
_L4:
        s3 = s2 + "{}";
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static void exiting(Logger logger, String s, String s1)
    {
        if (logger.isDebugEnabled())
            logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s + "." + s1 + " RETURN", null));
    }

    public static void exiting(Logger logger, String s, String s1, Object obj)
    {
        if (!logger.isDebugEnabled()) goto _L2; else goto _L1
_L1:
        String s2 = s + "." + s1 + " RETURN ";
        if (obj != null) goto _L4; else goto _L3
_L3:
        String s3 = s2 + "null";
_L6:
        logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s3, null));
_L2:
        return;
_L4:
        String s4 = s2 + obj;
        s3 = s4;
        continue; /* Loop/switch isn't completed */
        Throwable throwable;
        throwable;
        s3 = s2 + "?";
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static void exiting(Logger logger, String s, String s1, String s2)
    {
        if (logger.isDebugEnabled())
            logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s + "." + s1 + " RETURN " + s2, null));
    }

    public static void throwing(Logger logger, String s, String s1, Throwable throwable)
    {
        if (logger.isDebugEnabled())
            logger.callAppenders(new LoggingEvent(FQCN, logger, Level.DEBUG, s + "." + s1 + " THROW", throwable));
    }

    protected static Object[] toArray(Object obj)
    {
        return (new Object[] {
            obj
        });
    }

    protected static Object[] toArray(Object obj, Object obj1)
    {
        return (new Object[] {
            obj, obj1
        });
    }

    protected static Object[] toArray(Object obj, Object obj1, Object obj2)
    {
        return (new Object[] {
            obj, obj1, obj2
        });
    }

    protected static Object[] toArray(Object obj, Object obj1, Object obj2, Object obj3)
    {
        return (new Object[] {
            obj, obj1, obj2, obj3
        });
    }

    protected static Boolean valueOf(boolean flag)
    {
        if (flag)
            return Boolean.TRUE;
        else
            return Boolean.FALSE;
    }

    protected static Byte valueOf(byte byte0)
    {
        return new Byte(byte0);
    }

    protected static Character valueOf(char c)
    {
        return new Character(c);
    }

    protected static Double valueOf(double d)
    {
        return new Double(d);
    }

    protected static Float valueOf(float f)
    {
        return new Float(f);
    }

    protected static Integer valueOf(int i)
    {
        return new Integer(i);
    }

    protected static Long valueOf(long l)
    {
        return new Long(l);
    }

    protected static Short valueOf(short word0)
    {
        return new Short(word0);
    }

    static 
    {
        Class class1;
        if (class$org$apache$log4j$LogXF == null)
        {
            class1 = _mthclass$("org.apache.log4j.LogXF");
            class$org$apache$log4j$LogXF = class1;
        } else
        {
            class1 = class$org$apache$log4j$LogXF;
        }
        FQCN = class1.getName();
    }
}
