// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.endpoint;


public interface IEndPoint
{

    public abstract String getAddress();

    public abstract String getName();

    public abstract int getType();

    public abstract void setAddress(String s);

    public abstract void setName(String s);

    public abstract void setType(int i);
}
