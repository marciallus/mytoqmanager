// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;

import java.io.PrintStream;
import org.apache.log4j.lf5.viewer.LogBrokerMonitor;

public class AppenderFinalizer
{

    protected LogBrokerMonitor _defaultMonitor;

    public AppenderFinalizer(LogBrokerMonitor logbrokermonitor)
    {
        _defaultMonitor = null;
        _defaultMonitor = logbrokermonitor;
    }

    protected void finalize()
        throws Throwable
    {
        System.out.println("Disposing of the default LogBrokerMonitor instance");
        _defaultMonitor.dispose();
    }
}
