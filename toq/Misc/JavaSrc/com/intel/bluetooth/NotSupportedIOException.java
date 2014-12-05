// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;

public class NotSupportedIOException extends IOException
{

    private static final long serialVersionUID = 1L;

    public NotSupportedIOException()
    {
        super("Not Supported");
    }

    public NotSupportedIOException(String s)
    {
        super((new StringBuilder("Not Supported on ")).append(s).toString());
    }
}
