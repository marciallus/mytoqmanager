// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.util.ArrayList;
import java.util.List;
import org.apache.log4j.Level;

public class UtilLoggingLevel extends Level
{

    public static final UtilLoggingLevel CONFIG = new UtilLoggingLevel(14000, "CONFIG", 6);
    public static final int CONFIG_INT = 14000;
    public static final UtilLoggingLevel FINE = new UtilLoggingLevel(13000, "FINE", 7);
    public static final UtilLoggingLevel FINER = new UtilLoggingLevel(12000, "FINER", 8);
    public static final int FINER_INT = 12000;
    public static final UtilLoggingLevel FINEST = new UtilLoggingLevel(11000, "FINEST", 9);
    public static final int FINEST_INT = 11000;
    public static final int FINE_INT = 13000;
    public static final UtilLoggingLevel INFO = new UtilLoggingLevel(20000, "INFO", 5);
    public static final UtilLoggingLevel SEVERE = new UtilLoggingLevel(22000, "SEVERE", 0);
    public static final int SEVERE_INT = 22000;
    public static final int UNKNOWN_INT = 10000;
    public static final UtilLoggingLevel WARNING = new UtilLoggingLevel(21000, "WARNING", 4);
    public static final int WARNING_INT = 21000;
    private static final long serialVersionUID = 0xc9e7c96f753c6b3L;

    protected UtilLoggingLevel(int i, String s, int j)
    {
        super(i, s, j);
    }

    public static List getAllPossibleLevels()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(FINE);
        arraylist.add(FINER);
        arraylist.add(FINEST);
        arraylist.add(INFO);
        arraylist.add(CONFIG);
        arraylist.add(WARNING);
        arraylist.add(SEVERE);
        return arraylist;
    }

    public static Level toLevel(int i)
    {
        return toLevel(i, FINEST);
    }

    public static Level toLevel(String s)
    {
        return toLevel(s, Level.DEBUG);
    }

    public static Level toLevel(String s, Level level)
    {
        if (s != null)
        {
            String s1 = s.toUpperCase();
            if (s1.equals("SEVERE"))
                return SEVERE;
            if (s1.equals("WARNING"))
                return WARNING;
            if (s1.equals("INFO"))
                return INFO;
            if (s1.equals("CONFI"))
                return CONFIG;
            if (s1.equals("FINE"))
                return FINE;
            if (s1.equals("FINER"))
                return FINER;
            if (s1.equals("FINEST"))
                return FINEST;
        }
        return level;
    }

    public static UtilLoggingLevel toLevel(int i, UtilLoggingLevel utillogginglevel)
    {
        switch (i)
        {
        case 11000: 
            return FINEST;

        case 12000: 
            return FINER;

        case 13000: 
            return FINE;

        case 14000: 
            return CONFIG;

        case 20000: 
            return INFO;

        case 21000: 
            return WARNING;

        case 22000: 
            return SEVERE;
        }
        return utillogginglevel;
    }

}
