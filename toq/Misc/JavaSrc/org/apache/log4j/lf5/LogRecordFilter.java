// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;


// Referenced classes of package org.apache.log4j.lf5:
//            LogRecord

public interface LogRecordFilter
{

    public abstract boolean passes(LogRecord logrecord);
}
