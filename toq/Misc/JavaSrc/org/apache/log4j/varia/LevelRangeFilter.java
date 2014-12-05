// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import org.apache.log4j.Level;
import org.apache.log4j.spi.Filter;
import org.apache.log4j.spi.LoggingEvent;

public class LevelRangeFilter extends Filter
{

    boolean acceptOnMatch;
    Level levelMax;
    Level levelMin;

    public LevelRangeFilter()
    {
        acceptOnMatch = false;
    }

    public int decide(LoggingEvent loggingevent)
    {
        if ((levelMin == null || loggingevent.getLevel().isGreaterOrEqual(levelMin)) && (levelMax == null || loggingevent.getLevel().toInt() <= levelMax.toInt()))
            return !acceptOnMatch ? 0 : 1;
        else
            return -1;
    }

    public boolean getAcceptOnMatch()
    {
        return acceptOnMatch;
    }

    public Level getLevelMax()
    {
        return levelMax;
    }

    public Level getLevelMin()
    {
        return levelMin;
    }

    public void setAcceptOnMatch(boolean flag)
    {
        acceptOnMatch = flag;
    }

    public void setLevelMax(Level level)
    {
        levelMax = level;
    }

    public void setLevelMin(Level level)
    {
        levelMin = level;
    }
}
