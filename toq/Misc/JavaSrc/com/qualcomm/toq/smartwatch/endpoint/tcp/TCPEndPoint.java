// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.endpoint.tcp;

import com.qualcomm.toq.base.endpoint.IEndPoint;

public class TCPEndPoint
    implements IEndPoint
{

    String address;
    String deviceState;
    String name;
    int type;

    public TCPEndPoint(String s, String s1)
    {
        name = s;
        address = s1;
    }

    public String getAddress()
    {
        return address;
    }

    public String getDeviceState()
    {
        return deviceState;
    }

    public String getName()
    {
        return name;
    }

    public int getType()
    {
        return type;
    }

    public void setAddress(String s)
    {
        address = s;
    }

    public void setDeviceState(String s)
    {
        deviceState = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setType(int i)
    {
        type = i;
    }
}
