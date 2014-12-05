// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about;


public class AboutServiceException extends RuntimeException
{

    private static final long serialVersionUID = 0xa714321aebea127fL;


    public AboutServiceException(String s)
    {
        super(s);
    }

    public AboutServiceException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public AboutServiceException(Throwable throwable)
    {
        super(throwable);
    }
}
