// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;

public class NotImplementedIOException extends IOException
{

    public static final boolean enabled = true;
    private static final long serialVersionUID = 1L;

    public NotImplementedIOException()
    {
        super("Not Implemented");
    }
}