// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;


class ThreadLocalWrapper
{

    static boolean java11 = false;
    private Object java11Object;
    private Object threadLocal;

    ThreadLocalWrapper()
    {
        if (java11)
            return;
        try
        {
            threadLocal = new ThreadLocal();
            return;
        }
        catch (Throwable throwable)
        {
            java11 = true;
        }
    }

    public Object get()
    {
        if (java11)
            return java11Object;
        else
            return ((ThreadLocal)threadLocal).get();
    }

    public void set(Object obj)
    {
        if (java11)
        {
            java11Object = obj;
            return;
        } else
        {
            ((ThreadLocal)threadLocal).set(obj);
            return;
        }
    }

}
