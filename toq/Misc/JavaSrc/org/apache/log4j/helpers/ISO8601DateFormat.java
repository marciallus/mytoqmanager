// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.text.FieldPosition;
import java.text.ParsePosition;
import java.util.*;

// Referenced classes of package org.apache.log4j.helpers:
//            AbsoluteTimeDateFormat

public class ISO8601DateFormat extends AbsoluteTimeDateFormat
{

    private static long lastTime = 0L;
    private static char lastTimeString[] = new char[20];
    private static final long serialVersionUID = 0xf57480de32998120L;


    public ISO8601DateFormat(TimeZone timezone)
    {
        super(timezone);
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        long l = date.getTime();
        int i = (int)(l % 1000L);
        if (l - (long)i == lastTime && lastTimeString[0] != 0)
        {
            stringbuffer.append(lastTimeString);
        } else
        {
            calendar.setTime(date);
            int j = stringbuffer.length();
            stringbuffer.append(calendar.get(1));
            String s;
            switch (calendar.get(2))
            {
            case 11: // '\013'
                s = "-12-";
                break;

            case 10: // '\n'
                s = "-11-";
                break;

            case 9: // '\t'
                s = "-10-";
                break;

            case 8: // '\b'
                s = "-09-";
                break;

            case 7: // '\007'
                s = "-08-";
                break;

            case 6: // '\006'
                s = "-07-";
                break;

            case 5: // '\005'
                s = "-06-";
                break;

            case 4: // '\004'
                s = "-05-";
                break;

            case 3: // '\003'
                s = "-04-";
                break;

            case 2: // '\002'
                s = "-03-";
                break;

            case 1: // '\001'
                s = "-02-";
                break;

            case 0: // '\0'
                s = "-01-";
                break;

            default:
                s = "-NA-";
                break;
            }
            stringbuffer.append(s);
            int k = calendar.get(5);
            if (k < 10)
                stringbuffer.append('0');
            stringbuffer.append(k);
            stringbuffer.append(' ');
            int i1 = calendar.get(11);
            if (i1 < 10)
                stringbuffer.append('0');
            stringbuffer.append(i1);
            stringbuffer.append(':');
            int j1 = calendar.get(12);
            if (j1 < 10)
                stringbuffer.append('0');
            stringbuffer.append(j1);
            stringbuffer.append(':');
            int k1 = calendar.get(13);
            if (k1 < 10)
                stringbuffer.append('0');
            stringbuffer.append(k1);
            stringbuffer.append(',');
            stringbuffer.getChars(j, stringbuffer.length(), lastTimeString, 0);
            lastTime = l - (long)i;
        }
        if (i < 100)
            stringbuffer.append('0');
        if (i < 10)
            stringbuffer.append('0');
        stringbuffer.append(i);
        return stringbuffer;
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        return null;
    }

}
