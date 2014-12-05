// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice;


public class ControlPanelException extends Exception
{

    private static final long serialVersionUID = 0xcaa3d09f517ea6e8L;


    public ControlPanelException(String s)
    {
        super(s);
    }

    public ControlPanelException(String s, Throwable throwable)
    {
        super(s, throwable);
    }

    public ControlPanelException(Throwable throwable)
    {
        super(throwable);
    }
}
