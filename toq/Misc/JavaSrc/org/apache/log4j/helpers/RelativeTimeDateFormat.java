// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.text.*;
import java.util.Date;

public class RelativeTimeDateFormat extends DateFormat
{

    private static final long serialVersionUID = 0x61eb10b423babbd0L;
    protected final long startTime = System.currentTimeMillis();


    public StringBuffer format(Date date, StringBuffer stringbuffer, FieldPosition fieldposition)
    {
        return stringbuffer.append(date.getTime() - startTime);
    }

    public Date parse(String s, ParsePosition parseposition)
    {
        return null;
    }
}
