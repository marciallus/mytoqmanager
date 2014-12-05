// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.spi.LoggerFactory;

// Referenced classes of package org.apache.log4j:
//            Logger

class DefaultCategoryFactory
    implements LoggerFactory
{


    public Logger makeNewLoggerInstance(String s)
    {
        return new Logger(s);
    }
}
