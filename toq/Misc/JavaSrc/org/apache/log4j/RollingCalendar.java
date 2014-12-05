// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.util.*;

class RollingCalendar extends GregorianCalendar
{

    private static final long serialVersionUID = 0xce97291e3abdc75fL;
    int type;

    RollingCalendar()
    {
        type = -1;
    }

    RollingCalendar(TimeZone timezone, Locale locale)
    {
        super(timezone, locale);
        type = -1;
    }

    public Date getNextCheckDate(Date date)
    {
label0:
        {
            setTime(date);
            switch (type)
            {
            default:
                break label0;

            case 5: // '\005'
                set(5, 1);
                set(11, 0);
                set(12, 0);
                set(13, 0);
                set(14, 0);
                add(2, 1);
                break;

            case 4: // '\004'
                set(7, getFirstDayOfWeek());
                set(11, 0);
                set(12, 0);
                set(13, 0);
                set(14, 0);
                add(3, 1);
                break;

            case 3: // '\003'
                set(11, 0);
                set(12, 0);
                set(13, 0);
                set(14, 0);
                add(5, 1);
                break;

            case 2: // '\002'
                set(12, 0);
                set(13, 0);
                set(14, 0);
                if (get(11) < 12)
                {
                    set(11, 12);
                } else
                {
                    set(11, 0);
                    add(5, 1);
                }
                break;

            case 1: // '\001'
                set(12, 0);
                set(13, 0);
                set(14, 0);
                add(11, 1);
                break;

            case 0: // '\0'
                set(13, 0);
                set(14, 0);
                add(12, 1);
                break;
            }
            return getTime();
        }
        throw new IllegalStateException("Unknown periodicity type.");
    }

    public long getNextCheckMillis(Date date)
    {
        return getNextCheckDate(date).getTime();
    }

    void setType(int i)
    {
        type = i;
    }
}
