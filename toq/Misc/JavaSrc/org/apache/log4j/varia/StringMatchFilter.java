// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.spi.Filter;
import org.apache.log4j.spi.LoggingEvent;

public class StringMatchFilter extends Filter
{

    public static final String ACCEPT_ON_MATCH_OPTION = "AcceptOnMatch";
    public static final String STRING_TO_MATCH_OPTION = "StringToMatch";
    boolean acceptOnMatch;
    String stringToMatch;

    public StringMatchFilter()
    {
        acceptOnMatch = true;
    }

    public int decide(LoggingEvent loggingevent)
    {
        String s = loggingevent.getRenderedMessage();
        if (s != null && stringToMatch != null && s.indexOf(stringToMatch) != -1)
            return !acceptOnMatch ? -1 : 1;
        else
            return 0;
    }

    public boolean getAcceptOnMatch()
    {
        return acceptOnMatch;
    }

    public String[] getOptionStrings()
    {
        return (new String[] {
            "StringToMatch", "AcceptOnMatch"
        });
    }

    public String getStringToMatch()
    {
        return stringToMatch;
    }

    public void setAcceptOnMatch(boolean flag)
    {
        acceptOnMatch = flag;
    }

    public void setOption(String s, String s1)
    {
        if (s.equalsIgnoreCase("StringToMatch"))
            stringToMatch = s1;
        else
        if (s.equalsIgnoreCase("AcceptOnMatch"))
        {
            acceptOnMatch = OptionConverter.toBoolean(s1, acceptOnMatch);
            return;
        }
    }

    public void setStringToMatch(String s)
    {
        stringToMatch = s;
    }
}
