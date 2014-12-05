// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import org.apache.log4j.spi.LoggingEvent;

public class CyclicBuffer
{

    LoggingEvent ea[];
    int first;
    int last;
    int maxSize;
    int numElems;

    public CyclicBuffer(int i)
        throws IllegalArgumentException
    {
        if (i < 1)
        {
            throw new IllegalArgumentException("The maxSize argument (" + i + ") is not a positive integer.");
        } else
        {
            maxSize = i;
            ea = new LoggingEvent[i];
            first = 0;
            last = 0;
            numElems = 0;
            return;
        }
    }

    public void add(LoggingEvent loggingevent)
    {
        ea[last] = loggingevent;
        int i = 1 + last;
        last = i;
        if (i == maxSize)
            last = 0;
        if (numElems < maxSize)
        {
            numElems = 1 + numElems;
        } else
        {
            int j = 1 + first;
            first = j;
            if (j == maxSize)
            {
                first = 0;
                return;
            }
        }
    }

    public LoggingEvent get()
    {
        int i = numElems;
        LoggingEvent loggingevent = null;
        if (i > 0)
        {
            numElems = -1 + numElems;
            loggingevent = ea[first];
            ea[first] = null;
            int j = 1 + first;
            first = j;
            if (j == maxSize)
                first = 0;
        }
        return loggingevent;
    }

    public LoggingEvent get(int i)
    {
        if (i >= 0 && i < numElems)
            return ea[(i + first) % maxSize];
        else
            return null;
    }

    public int getMaxSize()
    {
        return maxSize;
    }

    public int length()
    {
        return numElems;
    }

    public void resize(int i)
    {
        if (i < 0)
            throw new IllegalArgumentException("Negative array size [" + i + "] not allowed.");
        if (i == numElems)
            return;
        LoggingEvent aloggingevent[] = new LoggingEvent[i];
        int j;
        if (i < numElems)
            j = i;
        else
            j = numElems;
        for (int k = 0; k < j; k++)
        {
            aloggingevent[k] = ea[first];
            ea[first] = null;
            int l = 1 + first;
            first = l;
            if (l == numElems)
                first = 0;
        }

        ea = aloggingevent;
        first = 0;
        numElems = j;
        maxSize = i;
        if (j == i)
        {
            last = 0;
            return;
        } else
        {
            last = j;
            return;
        }
    }
}
