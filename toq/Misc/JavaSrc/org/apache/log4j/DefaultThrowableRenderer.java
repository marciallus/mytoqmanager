// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;
import java.util.ArrayList;
import org.apache.log4j.spi.ThrowableRenderer;

public final class DefaultThrowableRenderer
    implements ThrowableRenderer
{


    public static String[] render(Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        PrintWriter printwriter = new PrintWriter(stringwriter);
        LineNumberReader linenumberreader;
        ArrayList arraylist;
        IOException ioexception;
        String as[];
        String s;
        String s1;
        try
        {
            throwable.printStackTrace(printwriter);
        }
        catch (RuntimeException runtimeexception) { }
        printwriter.flush();
        linenumberreader = new LineNumberReader(new StringReader(stringwriter.toString()));
        arraylist = new ArrayList();
        s = linenumberreader.readLine();
_L2:
        if (s == null)
            break; /* Loop/switch isn't completed */
        arraylist.add(s);
        s1 = linenumberreader.readLine();
        s = s1;
        if (true) goto _L2; else goto _L1
        ioexception;
        if (ioexception instanceof InterruptedIOException)
            Thread.currentThread().interrupt();
        arraylist.add(ioexception.toString());
_L1:
        as = new String[arraylist.size()];
        arraylist.toArray(as);
        return as;
    }

    public String[] doRender(Throwable throwable)
    {
        return render(throwable);
    }
}
