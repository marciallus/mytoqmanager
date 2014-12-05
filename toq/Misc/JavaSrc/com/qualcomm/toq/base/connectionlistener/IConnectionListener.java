// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.connectionlistener;


public interface IConnectionListener
{

    public abstract void connect(String s);

    public abstract void disconnect();

    public abstract boolean isWDDeviceAssociated(String s);

    public abstract void read(byte abyte0[]);

    public abstract void startSPPServer();

    public abstract void stopConnectionListener();

    public abstract void write(byte abyte0[]);

    public abstract void writeFile(String s, String s1);
}
