// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.IOException;
import java.io.Writer;
import org.apache.log4j.spi.ErrorHandler;

// Referenced classes of package org.apache.log4j.helpers:
//            QuietWriter

public class CountingQuietWriter extends QuietWriter
{

    protected long count;

    public CountingQuietWriter(Writer writer, ErrorHandler errorhandler)
    {
        super(writer, errorhandler);
    }

    public long getCount()
    {
        return count;
    }

    public void setCount(long l)
    {
        count = l;
    }

    public void write(String s)
    {
        try
        {
            out.write(s);
            count = count + (long)s.length();
            return;
        }
        catch (IOException ioexception)
        {
            errorHandler.error("Write failure.", ioexception, 1);
        }
    }
}
