// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;

import org.apache.log4j.lf5.viewer.LogBrokerMonitor;

// Referenced classes of package org.apache.log4j.lf5:
//            LogLevel, LF5Appender

public class StartLogFactor5
{


    public static final void main(String args[])
    {
        LogBrokerMonitor logbrokermonitor = new LogBrokerMonitor(LogLevel.getLog4JLevels());
        logbrokermonitor.setFrameSize(LF5Appender.getDefaultMonitorWidth(), LF5Appender.getDefaultMonitorHeight());
        logbrokermonitor.setFontSize(12);
        logbrokermonitor.show();
    }
}
