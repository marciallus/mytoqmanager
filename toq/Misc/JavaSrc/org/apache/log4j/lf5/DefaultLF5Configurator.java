// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;

import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.spi.Configurator;
import org.apache.log4j.spi.LoggerRepository;

public class DefaultLF5Configurator
    implements Configurator
{

    static Class class$org$apache$log4j$lf5$DefaultLF5Configurator;

    private DefaultLF5Configurator()
    {
    }

    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public static void configure()
        throws IOException
    {
        Class class1;
        if (class$org$apache$log4j$lf5$DefaultLF5Configurator == null)
        {
            class1 = _mthclass$("org.apache.log4j.lf5.DefaultLF5Configurator");
            class$org$apache$log4j$lf5$DefaultLF5Configurator = class1;
        } else
        {
            class1 = class$org$apache$log4j$lf5$DefaultLF5Configurator;
        }
        URL url = class1.getResource("/org/apache/log4j/lf5/config/defaultconfig.properties");
        if (url != null)
        {
            PropertyConfigurator.configure(url);
            return;
        } else
        {
            throw new IOException("Error: Unable to open the resource" + "/org/apache/log4j/lf5/config/defaultconfig.properties");
        }
    }

    public void doConfigure(InputStream inputstream, LoggerRepository loggerrepository)
    {
        throw new IllegalStateException("This class should NOT be instantiated!");
    }

    public void doConfigure(URL url, LoggerRepository loggerrepository)
    {
        throw new IllegalStateException("This class should NOT be instantiated!");
    }
}
