// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.handler;

import com.qualcomm.toq.base.controller.IController;
import com.qualcomm.toq.base.endpoint.IEndPoint;

public interface IConnectionHandler
{

    public abstract IController getController(int i, int j);

    public abstract int getState(int i);

    public abstract void handleControllerData(int i, int j, int k, Object obj, int l, int i1);

    public abstract void handleMessage(byte abyte0[], IEndPoint iendpoint);

    public abstract void updateState(int i, int j);
}
