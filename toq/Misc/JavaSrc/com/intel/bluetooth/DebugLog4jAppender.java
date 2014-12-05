// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;


// Referenced classes of package com.intel.bluetooth:
//            DebugLog

class DebugLog4jAppender
    implements DebugLog.LoggerAppenderExt
{

    private static final String FQCN = com/intel/bluetooth/DebugLog.getName();


    public void appendLog(int i, String s, Throwable throwable)
    {
        switch (i)
        {
        case 1: // '\001'
        default:
            return;
        }
    }

    public boolean isLogEnabled(int i)
    {
        switch (i)
        {
        case 1: // '\001'
        case 4: // '\004'
            return true;

        case 2: // '\002'
        case 3: // '\003'
        default:
            return false;
        }
    }

}
