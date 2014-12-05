// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;


// Referenced classes of package org.apache.log4j.helpers:
//            LogLog

public class FormattingInfo
{

    boolean leftAlign;
    int max;
    int min;

    public FormattingInfo()
    {
        min = -1;
        max = 0x7fffffff;
        leftAlign = false;
    }

    void dump()
    {
        LogLog.debug("min=" + min + ", max=" + max + ", leftAlign=" + leftAlign);
    }

    void reset()
    {
        min = -1;
        max = 0x7fffffff;
        leftAlign = false;
    }
}
