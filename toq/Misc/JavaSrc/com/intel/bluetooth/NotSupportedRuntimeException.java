// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;


public class NotSupportedRuntimeException extends RuntimeException
{

    private static final long serialVersionUID = 1L;

    public NotSupportedRuntimeException()
    {
        super("Not Supported");
    }

    public NotSupportedRuntimeException(String s)
    {
        super((new StringBuilder("Not Supported on ")).append(s).toString());
    }
}
