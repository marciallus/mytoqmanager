// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.utils;

import java.io.Serializable;

public class AppletInfo
    implements Serializable
{

    private boolean isHomeTitle;
    private int tagIndex;


    public int getTagIndex()
    {
        return tagIndex;
    }

    public boolean isHomeTitle()
    {
        return isHomeTitle;
    }

    public void setHomeTitle(boolean flag)
    {
        isHomeTitle = flag;
    }

    public void setTagIndex(int i)
    {
        tagIndex = i;
    }

    public String toString()
    {
        return (new StringBuilder()).append(Integer.toString(tagIndex)).append(isHomeTitle).toString();
    }
}
