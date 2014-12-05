// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import java.io.InputStream;
import java.net.URL;
import org.apache.log4j.PropertyConfigurator;
import org.apache.log4j.spi.Configurator;
import org.apache.log4j.spi.LoggerRepository;

public class ReloadingPropertyConfigurator
    implements Configurator
{

    PropertyConfigurator _flddelegate;

    public ReloadingPropertyConfigurator()
    {
        _flddelegate = new PropertyConfigurator();
    }

    public void doConfigure(InputStream inputstream, LoggerRepository loggerrepository)
    {
    }

    public void doConfigure(URL url, LoggerRepository loggerrepository)
    {
    }
}
