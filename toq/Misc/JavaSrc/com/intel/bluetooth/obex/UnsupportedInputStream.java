// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.IOException;
import java.io.InputStream;

class UnsupportedInputStream extends InputStream
{


    public int read()
        throws IOException
    {
        throw new IOException("Input not supported in current operation");
    }
}
