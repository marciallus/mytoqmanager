// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.util.NoSuchElementException;

class UtilsStringTokenizer
{

    private int currentPosition;
    private String delimiter;
    private int newPosition;
    private String str;

    public UtilsStringTokenizer(String s, String s1)
    {
        str = s;
        delimiter = s1;
        currentPosition = 0;
        nextPosition();
    }

    private void nextPosition()
    {
        newPosition = str.indexOf(delimiter, currentPosition);
        if (newPosition == -1)
            newPosition = str.length();
        else
        if (newPosition == currentPosition)
        {
            currentPosition = 1 + currentPosition;
            nextPosition();
            return;
        }
    }

    public boolean hasMoreTokens()
    {
        return newPosition != -1 && currentPosition < newPosition;
    }

    public String nextToken()
        throws NoSuchElementException
    {
        if (!hasMoreTokens())
        {
            throw new NoSuchElementException();
        } else
        {
            String s = str.substring(currentPosition, newPosition);
            currentPosition = 1 + newPosition;
            nextPosition();
            return s;
        }
    }
}
