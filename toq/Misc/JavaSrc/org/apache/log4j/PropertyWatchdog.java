// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.helpers.FileWatchdog;

// Referenced classes of package org.apache.log4j:
//            PropertyConfigurator, LogManager

class PropertyWatchdog extends FileWatchdog
{

    PropertyWatchdog(String s)
    {
        super(s);
    }

    public void doOnChange()
    {
        (new PropertyConfigurator()).doConfigure(filename, LogManager.getLoggerRepository());
    }
}
