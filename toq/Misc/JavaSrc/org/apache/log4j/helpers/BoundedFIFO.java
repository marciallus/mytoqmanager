// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import org.apache.log4j.spi.LoggingEvent;

public class BoundedFIFO
{

    LoggingEvent buf[];
    int first;
    int maxSize;
    int next;
    int numElements;

    public BoundedFIFO(int i)
    {
        numElements = 0;
        first = 0;
        next = 0;
        if (i < 1)
        {
            throw new IllegalArgumentException("The maxSize argument (" + i + ") is not a positive integer.");
        } else
        {
            maxSize = i;
            buf = new LoggingEvent[i];
            return;
        }
    }

    public LoggingEvent get()
    {
        if (numElements == 0)
            return null;
        LoggingEvent loggingevent = buf[first];
        buf[first] = null;
        int i = 1 + first;
        first = i;
        if (i == maxSize)
            first = 0;
        numElements = -1 + numElements;
        return loggingevent;
    }

    public int getMaxSize()
    {
        return maxSize;
    }

    public boolean isFull()
    {
        return numElements == maxSize;
    }

    public int length()
    {
        return numElements;
    }

    int min(int i, int j)
    {
        if (i < j)
            return i;
        else
            return j;
    }

    public void put(LoggingEvent loggingevent)
    {
        if (numElements != maxSize)
        {
            buf[next] = loggingevent;
            int i = 1 + next;
            next = i;
            if (i == maxSize)
                next = 0;
            numElements = 1 + numElements;
        }
    }

    public void resize(int i)
    {
        this;
        JVM INSTR monitorenter ;
        int j = maxSize;
        if (i != j) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        LoggingEvent aloggingevent[];
        int k;
        int l;
        aloggingevent = new LoggingEvent[i];
        k = min(min(maxSize - first, i), numElements);
        System.arraycopy(buf, first, aloggingevent, 0, k);
        l = numElements;
        int i1;
        i1 = 0;
        if (k >= l)
            break MISSING_BLOCK_LABEL_117;
        i1 = 0;
        if (k >= i)
            break MISSING_BLOCK_LABEL_117;
        i1 = min(numElements - k, i - k);
        System.arraycopy(buf, 0, aloggingevent, k, i1);
        buf = aloggingevent;
        maxSize = i;
        first = 0;
        numElements = k + i1;
        next = numElements;
        if (next == maxSize)
            next = 0;
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean wasEmpty()
    {
        return numElements == 1;
    }

    public boolean wasFull()
    {
        return 1 + numElements == maxSize;
    }
}
