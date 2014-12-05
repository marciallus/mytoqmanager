// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.Writer;
import org.apache.log4j.spi.ErrorHandler;

// Referenced classes of package org.apache.log4j.helpers:
//            QuietWriter

public class SyslogQuietWriter extends QuietWriter
{

    int level;
    int syslogFacility;

    public SyslogQuietWriter(Writer writer, int i, ErrorHandler errorhandler)
    {
        super(writer, errorhandler);
        syslogFacility = i;
    }

    public void setLevel(int i)
    {
        level = i;
    }

    public void setSyslogFacility(int i)
    {
        syslogFacility = i;
    }

    public void write(String s)
    {
        super.write("<" + (syslogFacility | level) + ">" + s);
    }
}
