// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.controller;


public interface IController
{

    public abstract void handleConnHandlerMessage(int i, int j, Object obj, int k, int l);

    public abstract void sendControllerMessageData(int i, int j, int k, Object obj, int l, int i1);
}
