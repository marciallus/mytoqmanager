// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;
import org.apache.log4j.helpers.CountingQuietWriter;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.helpers.OptionConverter;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            FileAppender, Layout

public class RollingFileAppender extends FileAppender
{

    protected int maxBackupIndex;
    protected long maxFileSize;
    private long nextRollover;

    public RollingFileAppender()
    {
        maxFileSize = 0xa00000L;
        maxBackupIndex = 1;
        nextRollover = 0L;
    }

    public RollingFileAppender(Layout layout, String s)
        throws IOException
    {
        super(layout, s);
        maxFileSize = 0xa00000L;
        maxBackupIndex = 1;
        nextRollover = 0L;
    }

    public RollingFileAppender(Layout layout, String s, boolean flag)
        throws IOException
    {
        super(layout, s, flag);
        maxFileSize = 0xa00000L;
        maxBackupIndex = 1;
        nextRollover = 0L;
    }

    public int getMaxBackupIndex()
    {
        return maxBackupIndex;
    }

    public long getMaximumFileSize()
    {
        return maxFileSize;
    }

    public void rollOver()
    {
        if (qw != null)
        {
            long l = ((CountingQuietWriter)qw).getCount();
            LogLog.debug("rolling over count=" + l);
            nextRollover = l + maxFileSize;
        }
        LogLog.debug("maxBackupIndex=" + maxBackupIndex);
        boolean flag = true;
        if (maxBackupIndex > 0)
        {
            File file = new File(fileName + '.' + maxBackupIndex);
            if (file.exists())
                flag = file.delete();
            for (int i = -1 + maxBackupIndex; i >= 1 && flag; i--)
            {
                File file3 = new File(fileName + "." + i);
                if (file3.exists())
                {
                    File file4 = new File(fileName + '.' + (i + 1));
                    LogLog.debug("Renaming file " + file3 + " to " + file4);
                    flag = file3.renameTo(file4);
                }
            }

            if (flag)
            {
                File file1 = new File(fileName + "." + 1);
                closeFile();
                File file2 = new File(fileName);
                LogLog.debug("Renaming file " + file2 + " to " + file1);
                flag = file2.renameTo(file1);
                if (!flag)
                    try
                    {
                        setFile(fileName, true, bufferedIO, bufferSize);
                    }
                    catch (IOException ioexception1)
                    {
                        if (ioexception1 instanceof InterruptedIOException)
                            Thread.currentThread().interrupt();
                        LogLog.error("setFile(" + fileName + ", true) call failed.", ioexception1);
                    }
            }
        }
        if (!flag)
            break MISSING_BLOCK_LABEL_423;
        setFile(fileName, false, bufferedIO, bufferSize);
        nextRollover = 0L;
        return;
        IOException ioexception;
        ioexception;
        if (ioexception instanceof InterruptedIOException)
            Thread.currentThread().interrupt();
        LogLog.error("setFile(" + fileName + ", false) call failed.", ioexception);
        return;
    }

    public void setFile(String s, boolean flag, boolean flag1, int i)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        super.setFile(s, flag, bufferedIO, bufferSize);
        if (!flag)
            break MISSING_BLOCK_LABEL_45;
        File file = new File(s);
        ((CountingQuietWriter)qw).setCount(file.length());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setMaxBackupIndex(int i)
    {
        maxBackupIndex = i;
    }

    public void setMaxFileSize(String s)
    {
        maxFileSize = OptionConverter.toFileSize(s, 1L + maxFileSize);
    }

    public void setMaximumFileSize(long l)
    {
        maxFileSize = l;
    }

    protected void setQWForFiles(Writer writer)
    {
        qw = new CountingQuietWriter(writer, errorHandler);
    }

    protected void subAppend(LoggingEvent loggingevent)
    {
        super.subAppend(loggingevent);
        if (fileName != null && qw != null)
        {
            long l = ((CountingQuietWriter)qw).getCount();
            if (l >= maxFileSize && l >= nextRollover)
                rollOver();
        }
    }
}
