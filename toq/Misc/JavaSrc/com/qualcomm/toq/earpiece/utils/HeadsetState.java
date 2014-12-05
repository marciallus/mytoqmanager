// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.earpiece.utils;


// Referenced classes of package com.qualcomm.toq.earpiece.utils:
//            IHeadsetState

public class HeadsetState
    implements IHeadsetState
{

    private int responseCode;
    private int state;
    private int subState;

    public HeadsetState(int i, int j, int k)
    {
        state = i;
        subState = j;
        responseCode = k;
    }

    public int getResponseCode()
    {
        return responseCode;
    }

    public int getState()
    {
        return state;
    }

    public int getSubState()
    {
        return subState;
    }

    public void setResponseCode(int i)
    {
        responseCode = i;
    }

    public void setState(int i)
    {
        state = i;
    }

    public void setSubState(int i)
    {
        subState = i;
    }

    public void updateState(int i, int j, int k)
    {
        state = i;
        subState = j;
        responseCode = k;
    }
}
