// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.text.*;
import java.util.Date;
import java.util.TimeZone;

public final class CachedDateFormat extends DateFormat
{

    private static final String DIGITS = "0123456789";
    private static final int MAGIC1 = 654;
    private static final int MAGIC2 = 987;
    private static final String MAGICSTRING1 = "654";
    private static final String MAGICSTRING2 = "987";
    public static final int NO_MILLISECONDS = -2;
    public static final int UNRECOGNIZED_MILLISECONDS = -1;
    private static final String ZERO_STRING = "000";
    private static final long serialVersionUID = 1L;
    private StringBuffer cache;
    private final int expiration;
    private final DateFormat formatter;
    private int millisecondStart;
    private long previousTime;
    private long slotBegin;
    private final Date tmpDate = new Date(0L);

    public CachedDateFormat(DateFormat dateformat, int i)
    {
        cache = new StringBuffer(50);
        if (dateformat == null)
            throw new IllegalArgumentException("dateFormat cannot be null");
        if (i < 0)
        {
            throw new IllegalArgumentException("expiration must be non-negative");
        } else
        {
            formatter = dateformat;
            expiration = i;
            millisecondStart = 0;
            previousTime = 0x8000000000000000L;
            slotBegin = 0x8000000000000000L;
            return;
        }
    }

    public static int findMillisecondStart(long l, String s, DateFormat dateformat)
    {
        long l1;
        int i;
        String s1;
        String s2;
        l1 = 1000L * (l / 1000L);
        if (l1 > l)
            l1 -= 1000L;
        i = (int)(l - l1);
        int j = 654;
        s1 = "654";
        if (i == 654)
        {
            j = 987;
            s1 = "987";
        }
        s2 = dateformat.format(new Date(l1 + (long)j));
        if (s2.length() == s.length()) goto _L2; else goto _L1
_L1:
        int k = -1;
          goto _L3
_L2:
        k = 0;
_L7:
        if (k >= s.length())
            break; /* Loop/switch isn't completed */
        if (s.charAt(k) == s2.charAt(k)) goto _L5; else goto _L4
_L4:
        StringBuffer stringbuffer = new StringBuffer("ABC");
        millisecondFormat(i, stringbuffer, 0);
        String s3 = dateformat.format(new Date(l1));
        if (s3.length() != s.length() || !s1.regionMatches(0, s2, k, s1.length()) || !stringbuffer.toString().regionMatches(0, s, k, s1.length()) || !"000".regionMatches(0, s3, k, "000".length()))
            return -1;
_L3:
        return k;
_L5:
        k++;
        if (true) goto _L7; else goto _L6
_L6:
        return -2;
    }

    public static int getMaximumCacheValidity(String s)
    {
        int i = s.indexOf('S');
        return i < 0 || i == s.lastIndexOf("SSS") ? 1000 : 1;
    }

    private static void millisecondFormat(int i, StringBuffer stringbuffer, int j)
    {
        stringbuffer.setCharAt(j, "0123456789".charAt(i / 100));
        stringbuffer.setCharAt(j + 1, "0123456789".charAt((i / 10) % 10));
        stringbuffer.setCharAt(j + 2, "0123456789".charAt(i % 10));
    }

    public StringBuffer format(long l, StringBuffer stringbuffer)
    {
        if (l == previousTime)
        {
            stringbuffer.append(cache);
        } else
        {
            if (millisecondStart != -1 && l < slotBegin + (long)expiration && l >= slotBegin && l < 1000L + slotBegin)
            {
                if (millisecondStart >= 0)
                    millisecondFormat((int)(l - slotBegin), cache, millisecondStart);
                previousTime = l;
                stringbuffer.append(cache);
                return stringbuffer;
            }
            cache.setLength(0);
            tmpDate.setTime(l);
            cache.append(formatter.format(tmpDate));
            stringbuffer.append(cache);
            previousTime = l;
            slotBegin = 1000L * (previousTime / 1000L);
            if (slotBegin > previousTime)
                slotBegin = slotBegin - 1000L;
            if (millisecondStart >= 0)
            {
                millisecondStart = findMillisecondStart(l, cache.toString(), formatter);
                return stringbuffer;
            }
        }
        return stringbuffer;
    }

    public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        format(date.getTime(), stringbuffer);
        return stringbuffer;
    }

    public NumberFormat getNumberFormat()
    {
        return formatter.getNumberFormat();
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        return formatter.parse(s, parseposition);
    }

    public void setTimeZone(TimeZone timezone)
    {
        formatter.setTimeZone(timezone);
        previousTime = 0x8000000000000000L;
        slotBegin = 0x8000000000000000L;
    }
}
