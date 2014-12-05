// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.config;


public class PropertySetterException extends Exception
{

    private static final long serialVersionUID = 0xed3a8cf9a3762f2bL;
    protected Throwable rootCause;

    public PropertySetterException(String s)
    {
        super(s);
    }

    public PropertySetterException(Throwable throwable)
    {
        rootCause = throwable;
    }

    public String getMessage()
    {
        String s = super.getMessage();
        if (s == null && rootCause != null)
            s = rootCause.getMessage();
        return s;
    }
}
