// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.connectionmanager;

import com.qualcomm.toq.base.endpoint.IEndPoint;

public interface IConnectionManager
{

    public abstract void associatePhoneEPLeft();

    public abstract void associatePhoneEPRight();

    public abstract void associatePhoneWD();

    public abstract void connect(IEndPoint iendpoint);

    public abstract void connectEndpoint(IEndPoint iendpoint);

    public abstract void connectionStateChange(IEndPoint iendpoint, int i);

    public abstract IEndPoint createEndPoint(String s, String s1, int i);

    public abstract void disassociatePhoneEPLeft();

    public abstract void disassociatePhoneEPRight();

    public abstract void disassociatePhoneWD();

    public abstract void disconnect(IEndPoint iendpoint);

    public abstract void handleConnHandlerData(IEndPoint iendpoint, byte abyte0[]);

    public abstract void handleConnHandlerFileData(IEndPoint iendpoint, Object obj);

    public abstract void receiveData(byte abyte0[], IEndPoint iendpoint);

    public abstract void registerEndPoint(IEndPoint iendpoint);

    public abstract void resetEndPointConnection(int i, boolean flag);

    public abstract void stopConnectionManager();
}
