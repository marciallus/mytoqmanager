// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.varia;

import org.apache.log4j.RollingFileAppender;

// Referenced classes of package org.apache.log4j.varia:
//            HUP

public class ExternallyRolledFileAppender extends RollingFileAppender
{

    public static final String OK = "OK";
    public static final String ROLL_OVER = "RollOver";
    HUP hup;
    int port;

    public ExternallyRolledFileAppender()
    {
        port = 0;
    }

    public void activateOptions()
    {
        super.activateOptions();
        if (port != 0)
        {
            if (hup != null)
                hup.interrupt();
            hup = new HUP(this, port);
            hup.setDaemon(true);
            hup.start();
        }
    }

    public int getPort()
    {
        return port;
    }

    public void setPort(int i)
    {
        port = i;
    }
}
