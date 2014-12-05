// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import org.apache.log4j.Level;
import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.spi.Filter;
import org.apache.log4j.spi.LoggingEvent;

public class LevelMatchFilter extends Filter
{

    boolean acceptOnMatch;
    Level levelToMatch;

    public LevelMatchFilter()
    {
        acceptOnMatch = true;
    }

    public int decide(LoggingEvent loggingevent)
    {
        if (levelToMatch != null)
        {
            boolean flag = levelToMatch.equals(loggingevent.getLevel());
            boolean flag1 = false;
            if (flag)
                flag1 = true;
            if (flag1)
                return !acceptOnMatch ? -1 : 1;
        }
        return 0;
    }

    public boolean getAcceptOnMatch()
    {
        return acceptOnMatch;
    }

    public String getLevelToMatch()
    {
        if (levelToMatch == null)
            return null;
        else
            return levelToMatch.toString();
    }

    public void setAcceptOnMatch(boolean flag)
    {
        acceptOnMatch = flag;
    }

    public void setLevelToMatch(String s)
    {
        levelToMatch = OptionConverter.toLevel(s, null);
    }
}
