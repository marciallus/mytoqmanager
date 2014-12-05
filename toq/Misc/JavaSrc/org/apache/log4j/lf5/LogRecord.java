// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;

import java.io.*;

// Referenced classes of package org.apache.log4j.lf5:
//            LogLevel

public abstract class LogRecord
    implements Serializable
{

    protected static long _seqCount = 0L;
    protected String _category;
    protected LogLevel _level;
    protected String _location;
    protected String _message;
    protected long _millis;
    protected String _ndc;
    protected long _sequenceNumber;
    protected String _thread;
    protected Throwable _thrown;
    protected String _thrownStackTrace;

    public LogRecord()
    {
        _millis = System.currentTimeMillis();
        _category = "Debug";
        _message = "";
        _level = LogLevel.INFO;
        _sequenceNumber = getNextId();
        _thread = Thread.currentThread().toString();
        _ndc = "";
        _location = "";
    }

    protected static long getNextId()
    {
        org/apache/log4j/lf5/LogRecord;
        JVM INSTR monitorenter ;
        long l;
        _seqCount = 1L + _seqCount;
        l = _seqCount;
        org/apache/log4j/lf5/LogRecord;
        JVM INSTR monitorexit ;
        return l;
        Exception exception;
        exception;
        throw exception;
    }

    public static void resetSequenceNumber()
    {
        org/apache/log4j/lf5/LogRecord;
        JVM INSTR monitorenter ;
        _seqCount = 0L;
        org/apache/log4j/lf5/LogRecord;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public String getCategory()
    {
        return _category;
    }

    public LogLevel getLevel()
    {
        return _level;
    }

    public String getLocation()
    {
        return _location;
    }

    public String getMessage()
    {
        return _message;
    }

    public long getMillis()
    {
        return _millis;
    }

    public String getNDC()
    {
        return _ndc;
    }

    public long getSequenceNumber()
    {
        return _sequenceNumber;
    }

    public String getThreadDescription()
    {
        return _thread;
    }

    public Throwable getThrown()
    {
        return _thrown;
    }

    public String getThrownStackTrace()
    {
        return _thrownStackTrace;
    }

    public boolean hasThrown()
    {
        Throwable throwable = getThrown();
        if (throwable != null)
        {
            String s = throwable.toString();
            if (s != null && s.trim().length() != 0)
                return true;
        }
        return false;
    }

    public boolean isFatal()
    {
        return isSevereLevel() || hasThrown();
    }

    public abstract boolean isSevereLevel();

    public void setCategory(String s)
    {
        _category = s;
    }

    public void setLevel(LogLevel loglevel)
    {
        _level = loglevel;
    }

    public void setLocation(String s)
    {
        _location = s;
    }

    public void setMessage(String s)
    {
        _message = s;
    }

    public void setMillis(long l)
    {
        _millis = l;
    }

    public void setNDC(String s)
    {
        _ndc = s;
    }

    public void setSequenceNumber(long l)
    {
        _sequenceNumber = l;
    }

    public void setThreadDescription(String s)
    {
        _thread = s;
    }

    public void setThrown(Throwable throwable)
    {
        StringWriter stringwriter;
        PrintWriter printwriter;
        if (throwable == null)
            return;
        _thrown = throwable;
        stringwriter = new StringWriter();
        printwriter = new PrintWriter(stringwriter);
        throwable.printStackTrace(printwriter);
        printwriter.flush();
        _thrownStackTrace = stringwriter.toString();
        printwriter.close();
        stringwriter.close();
_L2:
        return;
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void setThrownStackTrace(String s)
    {
        _thrownStackTrace = s;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("LogRecord: [" + _level + ", " + _message + "]");
        return stringbuffer.toString();
    }

}
