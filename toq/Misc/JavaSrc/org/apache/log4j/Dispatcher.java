// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import org.apache.log4j.helpers.AppenderAttachableImpl;
import org.apache.log4j.helpers.BoundedFIFO;

// Referenced classes of package org.apache.log4j:
//            AsyncAppender

class Dispatcher extends Thread
{

    private AppenderAttachableImpl aai;
    private BoundedFIFO bf;
    AsyncAppender container;
    private boolean interrupted;

    Dispatcher(BoundedFIFO boundedfifo, AsyncAppender asyncappender)
    {
        interrupted = false;
        bf = boundedfifo;
        container = asyncappender;
        aai = asyncappender.aai;
        setDaemon(true);
        setPriority(1);
        setName("Dispatcher-" + getName());
    }

    void close()
    {
        synchronized (bf)
        {
            interrupted = true;
            if (bf.length() == 0)
                bf.notify();
        }
        return;
        exception;
        boundedfifo;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void run()
    {
_L7:
        BoundedFIFO boundedfifo = bf;
        boundedfifo;
        JVM INSTR monitorenter ;
        if (bf.length() != 0) goto _L2; else goto _L1
_L1:
        if (!interrupted) goto _L4; else goto _L3
_L3:
        aai.removeAllAppenders();
        return;
_L4:
        bf.wait();
_L2:
        org.apache.log4j.spi.LoggingEvent loggingevent;
        loggingevent = bf.get();
        if (bf.wasFull())
            bf.notify();
        boundedfifo;
        JVM INSTR monitorexit ;
        AppenderAttachableImpl appenderattachableimpl = container.aai;
        appenderattachableimpl;
        JVM INSTR monitorenter ;
        if (aai == null || loggingevent == null)
            break MISSING_BLOCK_LABEL_100;
        aai.appendLoopOnAppenders(loggingevent);
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception1;
        InterruptedException interruptedexception;
        interruptedexception;
        boundedfifo;
        JVM INSTR monitorexit ;
        if (true) goto _L3; else goto _L5
_L5:
        Exception exception;
        exception;
        boundedfifo;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L7; else goto _L6
_L6:
    }
}
