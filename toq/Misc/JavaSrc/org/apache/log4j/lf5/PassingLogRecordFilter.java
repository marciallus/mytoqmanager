// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;


// Referenced classes of package org.apache.log4j.lf5:
//            LogRecordFilter, LogRecord

public class PassingLogRecordFilter
    implements LogRecordFilter
{


    public boolean passes(LogRecord logrecord)
    {
        return true;
    }

    public void reset()
    {
    }
}
