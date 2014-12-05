// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;


// Referenced classes of package org.apache.log4j:
//            Level

public class Priority
{

    public static final int ALL_INT = 0x80000000;
    public static final Priority DEBUG = new Level(10000, "DEBUG", 7);
    public static final int DEBUG_INT = 10000;
    public static final Priority ERROR = new Level(40000, "ERROR", 3);
    public static final int ERROR_INT = 40000;
    public static final Priority FATAL = new Level(50000, "FATAL", 0);
    public static final int FATAL_INT = 50000;
    public static final Priority INFO = new Level(20000, "INFO", 6);
    public static final int INFO_INT = 20000;
    public static final int OFF_INT = 0x7fffffff;
    public static final Priority WARN = new Level(30000, "WARN", 4);
    public static final int WARN_INT = 30000;
    transient int level;
    transient String levelStr;
    transient int syslogEquivalent;

    protected Priority()
    {
        level = 10000;
        levelStr = "DEBUG";
        syslogEquivalent = 7;
    }

    protected Priority(int i, String s, int j)
    {
        level = i;
        levelStr = s;
        syslogEquivalent = j;
    }

    public static Priority[] getAllPossiblePriorities()
    {
        Priority apriority[] = new Priority[5];
        apriority[0] = FATAL;
        apriority[1] = ERROR;
        apriority[2] = Level.WARN;
        apriority[3] = INFO;
        apriority[4] = DEBUG;
        return apriority;
    }

    public static Priority toPriority(int i)
    {
        return toPriority(i, DEBUG);
    }

    public static Priority toPriority(int i, Priority priority)
    {
        return Level.toLevel(i, (Level)priority);
    }

    public static Priority toPriority(String s)
    {
        return Level.toLevel(s);
    }

    public static Priority toPriority(String s, Priority priority)
    {
        return Level.toLevel(s, (Level)priority);
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof Priority;
        boolean flag1 = false;
        if (flag)
        {
            Priority priority = (Priority)obj;
            int i = level;
            int j = priority.level;
            flag1 = false;
            if (i == j)
                flag1 = true;
        }
        return flag1;
    }

    public final int getSyslogEquivalent()
    {
        return syslogEquivalent;
    }

    public boolean isGreaterOrEqual(Priority priority)
    {
        return level >= priority.level;
    }

    public final int toInt()
    {
        return level;
    }

    public final String toString()
    {
        return levelStr;
    }

}
