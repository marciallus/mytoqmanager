// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.util;

import java.io.*;

public abstract class StreamUtils
{

    public static final int DEFAULT_BUFFER_SIZE = 2048;


    public static void copy(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        copy(inputstream, outputstream, 2048);
    }

    public static void copy(InputStream inputstream, OutputStream outputstream, int i)
        throws IOException
    {
        byte abyte0[] = new byte[i];
        for (int j = inputstream.read(abyte0); j != -1; j = inputstream.read(abyte0))
            outputstream.write(abyte0, 0, j);

        outputstream.flush();
    }

    public static void copyThenClose(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        copy(inputstream, outputstream);
        inputstream.close();
        outputstream.close();
    }

    public static byte[] getBytes(InputStream inputstream)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        copy(inputstream, bytearrayoutputstream);
        bytearrayoutputstream.close();
        return bytearrayoutputstream.toByteArray();
    }
}
