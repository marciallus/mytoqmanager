// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;

import java.awt.Color;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package org.apache.log4j.lf5:
//            LogLevelFormatException

public class LogLevel
    implements Serializable
{

    public static final LogLevel CONFIG;
    public static final LogLevel DEBUG;
    public static final LogLevel ERROR;
    public static final LogLevel FATAL;
    public static final LogLevel FINE;
    public static final LogLevel FINER;
    public static final LogLevel FINEST;
    public static final LogLevel INFO;
    public static final LogLevel SEVERE;
    public static final LogLevel WARN;
    public static final LogLevel WARNING;
    private static LogLevel _allDefaultLevels[];
    private static LogLevel _jdk14Levels[];
    private static LogLevel _log4JLevels[];
    private static Map _logLevelColorMap;
    private static Map _logLevelMap;
    private static Map _registeredLogLevelMap = new HashMap();
    protected String _label;
    protected int _precedence;

    public LogLevel(String s, int i)
    {
        _label = s;
        _precedence = i;
    }

    public static java.util.List getAllDefaultLevels()
    {
        return Arrays.asList(_allDefaultLevels);
    }

    public static java.util.List getJdk14Levels()
    {
        return Arrays.asList(_jdk14Levels);
    }

    public static java.util.List getLog4JLevels()
    {
        return Arrays.asList(_log4JLevels);
    }

    public static Map getLogLevelColorMap()
    {
        return _logLevelColorMap;
    }

    public static LogLevel register(LogLevel loglevel)
    {
        if (loglevel != null && _logLevelMap.get(loglevel.getLabel()) == null)
            return (LogLevel)_registeredLogLevelMap.put(loglevel.getLabel(), loglevel);
        else
            return null;
    }

    public static void register(java.util.List list)
    {
        if (list != null)
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext(); register((LogLevel)iterator.next()));
        }
    }

    public static void register(LogLevel aloglevel[])
    {
        if (aloglevel != null)
        {
            for (int i = 0; i < aloglevel.length; i++)
                register(aloglevel[i]);

        }
    }

    public static void resetLogLevelColorMap()
    {
        _logLevelColorMap.clear();
        for (int i = 0; i < _allDefaultLevels.length; i++)
            _logLevelColorMap.put(_allDefaultLevels[i], Color.black);

    }

    public static LogLevel valueOf(String s)
        throws LogLevelFormatException
    {
        LogLevel loglevel = null;
        if (s != null)
        {
            s = s.trim().toUpperCase();
            loglevel = (LogLevel)_logLevelMap.get(s);
        }
        if (loglevel == null && _registeredLogLevelMap.size() > 0)
            loglevel = (LogLevel)_registeredLogLevelMap.get(s);
        if (loglevel == null)
        {
            StringBuffer stringbuffer = new StringBuffer();
            stringbuffer.append("Error while trying to parse (" + s + ") into");
            stringbuffer.append(" a LogLevel.");
            throw new LogLevelFormatException(stringbuffer.toString());
        } else
        {
            return loglevel;
        }
    }

    public boolean encompasses(LogLevel loglevel)
    {
        return loglevel.getPrecedence() <= getPrecedence();
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof LogLevel;
        boolean flag1 = false;
        if (flag)
        {
            int i = getPrecedence();
            int j = ((LogLevel)obj).getPrecedence();
            flag1 = false;
            if (i == j)
                flag1 = true;
        }
        return flag1;
    }

    public String getLabel()
    {
        return _label;
    }

    protected int getPrecedence()
    {
        return _precedence;
    }

    public int hashCode()
    {
        return _label.hashCode();
    }

    public void setLogLevelColorMap(LogLevel loglevel, Color color)
    {
        _logLevelColorMap.remove(loglevel);
        if (color == null)
            color = Color.black;
        _logLevelColorMap.put(loglevel, color);
    }

    public String toString()
    {
        return _label;
    }

    static 
    {
        FATAL = new LogLevel("FATAL", 0);
        ERROR = new LogLevel("ERROR", 1);
        WARN = new LogLevel("WARN", 2);
        INFO = new LogLevel("INFO", 3);
        DEBUG = new LogLevel("DEBUG", 4);
        SEVERE = new LogLevel("SEVERE", 1);
        WARNING = new LogLevel("WARNING", 2);
        CONFIG = new LogLevel("CONFIG", 4);
        FINE = new LogLevel("FINE", 5);
        FINER = new LogLevel("FINER", 6);
        FINEST = new LogLevel("FINEST", 7);
        LogLevel aloglevel[] = new LogLevel[5];
        aloglevel[0] = FATAL;
        aloglevel[1] = ERROR;
        aloglevel[2] = WARN;
        aloglevel[3] = INFO;
        aloglevel[4] = DEBUG;
        _log4JLevels = aloglevel;
        LogLevel aloglevel1[] = new LogLevel[7];
        aloglevel1[0] = SEVERE;
        aloglevel1[1] = WARNING;
        aloglevel1[2] = INFO;
        aloglevel1[3] = CONFIG;
        aloglevel1[4] = FINE;
        aloglevel1[5] = FINER;
        aloglevel1[6] = FINEST;
        _jdk14Levels = aloglevel1;
        LogLevel aloglevel2[] = new LogLevel[11];
        aloglevel2[0] = FATAL;
        aloglevel2[1] = ERROR;
        aloglevel2[2] = WARN;
        aloglevel2[3] = INFO;
        aloglevel2[4] = DEBUG;
        aloglevel2[5] = SEVERE;
        aloglevel2[6] = WARNING;
        aloglevel2[7] = CONFIG;
        aloglevel2[8] = FINE;
        aloglevel2[9] = FINER;
        aloglevel2[10] = FINEST;
        _allDefaultLevels = aloglevel2;
        _logLevelMap = new HashMap();
        for (int i = 0; i < _allDefaultLevels.length; i++)
            _logLevelMap.put(_allDefaultLevels[i].getLabel(), _allDefaultLevels[i]);

        _logLevelColorMap = new HashMap();
        for (int j = 0; j < _allDefaultLevels.length; j++)
            _logLevelColorMap.put(_allDefaultLevels[j], Color.black);

    }
}
