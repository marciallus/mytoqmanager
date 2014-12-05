// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import java.io.InputStream;
import java.net.URL;

// Referenced classes of package org.apache.log4j.spi:
//            LoggerRepository

public interface Configurator
{

    public static final String INHERITED = "inherited";
    public static final String NULL = "null";

    public abstract void doConfigure(InputStream inputstream, LoggerRepository loggerrepository);

    public abstract void doConfigure(URL url, LoggerRepository loggerrepository);
}
