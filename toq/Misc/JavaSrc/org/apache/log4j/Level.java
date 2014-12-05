// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;

// Referenced classes of package org.apache.log4j:
//            Priority

public class Level extends Priority
    implements Serializable
{

    public static final Level ALL = new Level(0x80000000, "ALL", 7);
    public static final Level DEBUG = new Level(10000, "DEBUG", 7);
    public static final Level ERROR = new Level(40000, "ERROR", 3);
    public static final Level FATAL = new Level(50000, "FATAL", 0);
    public static final Level INFO = new Level(20000, "INFO", 6);
    public static final Level OFF = new Level(0x7fffffff, "OFF", 0);
    public static final Level TRACE = new Level(5000, "TRACE", 7);
    public static final int TRACE_INT = 5000;
    public static final Level WARN = new Level(30000, "WARN", 4);
    static Class class$org$apache$log4j$Level;
    static final long serialVersionUID = 0x3073071f1f02c436L;

    protected Level(int i, String s, int j)
    {
        super(i, s, j);
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

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        level = objectinputstream.readInt();
        syslogEquivalent = objectinputstream.readInt();
        levelStr = objectinputstream.readUTF();
        if (levelStr == null)
            levelStr = "";
    }

    private Object readResolve()
        throws ObjectStreamException
    {
        Class class1 = getClass();
        Class class2;
        if (class$org$apache$log4j$Level == null)
        {
            class2 = _mthclass$("org.apache.log4j.Level");
            class$org$apache$log4j$Level = class2;
        } else
        {
            class2 = class$org$apache$log4j$Level;
        }
        if (class1 == class2)
            this = toLevel(level);
        return this;
    }

    public static Level toLevel(int i)
    {
        return toLevel(i, DEBUG);
    }

    public static Level toLevel(int i, Level level)
    {
        switch (i)
        {
        case 5000: 
            return TRACE;

        case 2147483647: 
            return OFF;

        case 50000: 
            return FATAL;

        case 40000: 
            return ERROR;

        case 30000: 
            return WARN;

        case 20000: 
            return INFO;

        case 10000: 
            return DEBUG;

        case -2147483648: 
            return ALL;
        }
        return level;
    }

    public static Level toLevel(String s)
    {
        return toLevel(s, DEBUG);
    }

    public static Level toLevel(String s, Level level)
    {
        if (s != null)
        {
            String s1 = s.toUpperCase();
            if (s1.equals("ALL"))
                return ALL;
            if (s1.equals("DEBUG"))
                return DEBUG;
            if (s1.equals("INFO"))
                return INFO;
            if (s1.equals("WARN"))
                return WARN;
            if (s1.equals("ERROR"))
                return ERROR;
            if (s1.equals("FATAL"))
                return FATAL;
            if (s1.equals("OFF"))
                return OFF;
            if (s1.equals("TRACE"))
                return TRACE;
            if (s1.equals("\u0130NFO"))
                return INFO;
        }
        return level;
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.defaultWriteObject();
        objectoutputstream.writeInt(level);
        objectoutputstream.writeInt(syslogEquivalent);
        objectoutputstream.writeUTF(levelStr);
    }

}
