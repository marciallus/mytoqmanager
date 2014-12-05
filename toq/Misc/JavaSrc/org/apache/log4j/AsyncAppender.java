// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.text.MessageFormat;
import java.util.*;
import org.apache.log4j.helpers.AppenderAttachableImpl;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.AppenderAttachable;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            AppenderSkeleton, Appender, Level, Logger

public class AsyncAppender extends AppenderSkeleton
    implements AppenderAttachable
{
    private static final class DiscardSummary
    {

        private int count;
        private LoggingEvent maxEvent;

        public void add(LoggingEvent loggingevent)
        {
            if (loggingevent.getLevel().toInt() > maxEvent.getLevel().toInt())
                maxEvent = loggingevent;
            count = 1 + count;
        }

        public LoggingEvent createEvent()
        {
            Object aobj[] = new Object[2];
            aobj[0] = new Integer(count);
            aobj[1] = maxEvent.getMessage();
            String s = MessageFormat.format("Discarded {0} messages due to full event buffer including: {1}", aobj);
            return new LoggingEvent("org.apache.log4j.AsyncAppender.DONT_REPORT_LOCATION", Logger.getLogger(maxEvent.getLoggerName()), maxEvent.getLevel(), s, null);
        }

        public DiscardSummary(LoggingEvent loggingevent)
        {
            maxEvent = loggingevent;
            count = 1;
        }
    }

    private static class Dispatcher
        implements Runnable
    {

        private final AppenderAttachableImpl appenders;
        private final List buffer;
        private final Map discardMap;
        private final AsyncAppender parent;

        public void run()
        {
            boolean flag = true;
_L7:
            if (!flag)
                break; /* Loop/switch isn't completed */
            List list = buffer;
            list;
            JVM INSTR monitorenter ;
            int i = buffer.size();
            Exception exception;
            LoggingEvent aloggingevent[];
            int j;
            Iterator iterator;
            int k;
            int l;
            int i1;
            if (!parent.closed)
                flag = true;
            else
                flag = false;
_L3:
            if (i != 0 || !flag) goto _L2; else goto _L1
_L1:
            buffer.wait();
            i = buffer.size();
            if (!parent.closed)
                flag = true;
            else
                flag = false;
            if (true) goto _L3; else goto _L2
_L2:
            aloggingevent = null;
            if (i <= 0)
                break MISSING_BLOCK_LABEL_205;
            aloggingevent = new LoggingEvent[i + discardMap.size()];
            buffer.toArray(aloggingevent);
            j = i;
            iterator = discardMap.values().iterator();
            k = j;
_L5:
            if (!iterator.hasNext())
                break; /* Loop/switch isn't completed */
            l = k + 1;
            aloggingevent[k] = ((DiscardSummary)iterator.next()).createEvent();
            k = l;
            if (true) goto _L5; else goto _L4
_L4:
            buffer.clear();
            discardMap.clear();
            buffer.notifyAll();
            list;
            JVM INSTR monitorexit ;
            if (aloggingevent == null)
                continue; /* Loop/switch isn't completed */
            i1 = 0;
            while (i1 < aloggingevent.length) 
            {
                synchronized (appenders)
                {
                    appenders.appendLoopOnAppenders(aloggingevent[i1]);
                }
                i1++;
            }
            if (true) goto _L7; else goto _L6
            exception;
            list;
            JVM INSTR monitorexit ;
            try
            {
                throw exception;
            }
            catch (InterruptedException interruptedexception)
            {
                Thread.currentThread().interrupt();
            }
_L6:
            return;
            exception1;
            appenderattachableimpl;
            JVM INSTR monitorexit ;
            throw exception1;
        }

        public Dispatcher(AsyncAppender asyncappender, List list, Map map, AppenderAttachableImpl appenderattachableimpl)
        {
            parent = asyncappender;
            buffer = list;
            appenders = appenderattachableimpl;
            discardMap = map;
        }
    }


    public static final int DEFAULT_BUFFER_SIZE = 128;
    AppenderAttachableImpl aai;
    private final AppenderAttachableImpl appenders = new AppenderAttachableImpl();
    private boolean blocking;
    private final List buffer = new ArrayList();
    private int bufferSize;
    private final Map discardMap = new HashMap();
    private final Thread dispatcher;
    private boolean locationInfo;

    public AsyncAppender()
    {
        bufferSize = 128;
        locationInfo = false;
        blocking = true;
        aai = appenders;
        dispatcher = new Thread(new Dispatcher(this, buffer, discardMap, appenders));
        dispatcher.setDaemon(true);
        dispatcher.setName("AsyncAppender-Dispatcher-" + dispatcher.getName());
        dispatcher.start();
    }

    public void addAppender(Appender appender)
    {
        synchronized (appenders)
        {
            appenders.addAppender(appender);
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void append(LoggingEvent loggingevent)
    {
        if (dispatcher == null || !dispatcher.isAlive() || bufferSize <= 0)
        {
            synchronized (appenders)
            {
                appenders.appendLoopOnAppenders(loggingevent);
            }
            return;
        }
        break MISSING_BLOCK_LABEL_48;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
        loggingevent.getNDC();
        loggingevent.getThreadName();
        loggingevent.getMDCCopy();
        if (locationInfo)
            loggingevent.getLocationInformation();
        loggingevent.getRenderedMessage();
        loggingevent.getThrowableStrRep();
        List list = buffer;
        list;
        JVM INSTR monitorenter ;
_L7:
        int i = buffer.size();
        if (i >= bufferSize) goto _L2; else goto _L1
_L1:
        buffer.add(loggingevent);
        if (i != 0)
            break MISSING_BLOCK_LABEL_136;
        buffer.notifyAll();
_L8:
        list;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        list;
        JVM INSTR monitorexit ;
        throw exception1;
_L2:
        boolean flag = true;
        if (!blocking || Thread.interrupted()) goto _L4; else goto _L3
_L3:
        Thread thread;
        Thread thread1;
        thread = Thread.currentThread();
        thread1 = dispatcher;
        if (thread == thread1) goto _L4; else goto _L5
_L5:
        buffer.wait();
        flag = false;
_L4:
        if (!flag) goto _L7; else goto _L6
_L6:
        String s;
        DiscardSummary discardsummary;
        s = loggingevent.getLoggerName();
        discardsummary = (DiscardSummary)discardMap.get(s);
        if (discardsummary != null)
            break MISSING_BLOCK_LABEL_262;
        DiscardSummary discardsummary1 = new DiscardSummary(loggingevent);
        discardMap.put(s, discardsummary1);
          goto _L8
        InterruptedException interruptedexception;
        interruptedexception;
        Thread.currentThread().interrupt();
          goto _L4
        discardsummary.add(loggingevent);
          goto _L8
    }

    public void close()
    {
        AppenderAttachableImpl appenderattachableimpl;
        synchronized (buffer)
        {
            closed = true;
            buffer.notifyAll();
        }
        Exception exception1;
        Enumeration enumeration;
        Object obj;
        try
        {
            dispatcher.join();
        }
        catch (InterruptedException interruptedexception)
        {
            Thread.currentThread().interrupt();
            LogLog.error("Got an InterruptedException while waiting for the dispatcher to finish.", interruptedexception);
        }
        appenderattachableimpl = appenders;
        appenderattachableimpl;
        JVM INSTR monitorenter ;
        enumeration = appenders.getAllAppenders();
        if (enumeration == null)
            break MISSING_BLOCK_LABEL_120;
        do
        {
            if (!enumeration.hasMoreElements())
                break;
            obj = enumeration.nextElement();
            if (obj instanceof Appender)
                ((Appender)obj).close();
        } while (true);
        break MISSING_BLOCK_LABEL_120;
        exception1;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
    }

    public Enumeration getAllAppenders()
    {
        Enumeration enumeration;
        synchronized (appenders)
        {
            enumeration = appenders.getAllAppenders();
        }
        return enumeration;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Appender getAppender(String s)
    {
        Appender appender;
        synchronized (appenders)
        {
            appender = appenders.getAppender(s);
        }
        return appender;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean getBlocking()
    {
        return blocking;
    }

    public int getBufferSize()
    {
        return bufferSize;
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    public boolean isAttached(Appender appender)
    {
        boolean flag;
        synchronized (appenders)
        {
            flag = appenders.isAttached(appender);
        }
        return flag;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void removeAllAppenders()
    {
        synchronized (appenders)
        {
            appenders.removeAllAppenders();
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void removeAppender(String s)
    {
        synchronized (appenders)
        {
            appenders.removeAppender(s);
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void removeAppender(Appender appender)
    {
        synchronized (appenders)
        {
            appenders.removeAppender(appender);
        }
        return;
        exception;
        appenderattachableimpl;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean requiresLayout()
    {
        return false;
    }

    public void setBlocking(boolean flag)
    {
        synchronized (buffer)
        {
            blocking = flag;
            buffer.notifyAll();
        }
        return;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setBufferSize(int i)
    {
        if (i < 0)
            throw new NegativeArraySizeException("size");
        List list = buffer;
        list;
        JVM INSTR monitorenter ;
        if (i < 1)
            i = 1;
        bufferSize = i;
        buffer.notifyAll();
        list;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        list;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }
}
