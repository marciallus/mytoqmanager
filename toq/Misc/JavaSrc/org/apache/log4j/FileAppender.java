// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.helpers.QuietWriter;
import org.apache.log4j.spi.ErrorHandler;

// Referenced classes of package org.apache.log4j:
//            WriterAppender, Layout

public class FileAppender extends WriterAppender
{

    protected int bufferSize;
    protected boolean bufferedIO;
    protected boolean fileAppend;
    protected String fileName;

    public FileAppender()
    {
        fileAppend = true;
        fileName = null;
        bufferedIO = false;
        bufferSize = 8192;
    }

    public FileAppender(Layout layout, String s)
        throws IOException
    {
        this(layout, s, true);
    }

    public FileAppender(Layout layout, String s, boolean flag)
        throws IOException
    {
        fileAppend = true;
        fileName = null;
        bufferedIO = false;
        bufferSize = 8192;
        this.layout = layout;
        setFile(s, flag, false, bufferSize);
    }

    public FileAppender(Layout layout, String s, boolean flag, boolean flag1, int i)
        throws IOException
    {
        fileAppend = true;
        fileName = null;
        bufferedIO = false;
        bufferSize = 8192;
        this.layout = layout;
        setFile(s, flag, flag1, i);
    }

    public void activateOptions()
    {
        if (fileName != null)
        {
            try
            {
                setFile(fileName, fileAppend, bufferedIO, bufferSize);
                return;
            }
            catch (IOException ioexception)
            {
                errorHandler.error("setFile(" + fileName + "," + fileAppend + ") call failed.", ioexception, 4);
            }
            return;
        } else
        {
            LogLog.warn("File option not set for appender [" + name + "].");
            LogLog.warn("Are you using FileAppender instead of ConsoleAppender?");
            return;
        }
    }

    protected void closeFile()
    {
        if (qw == null)
            break MISSING_BLOCK_LABEL_14;
        qw.close();
        return;
        IOException ioexception;
        ioexception;
        if (ioexception instanceof InterruptedIOException)
            Thread.currentThread().interrupt();
        LogLog.error("Could not close " + qw, ioexception);
        return;
    }

    public boolean getAppend()
    {
        return fileAppend;
    }

    public int getBufferSize()
    {
        return bufferSize;
    }

    public boolean getBufferedIO()
    {
        return bufferedIO;
    }

    public String getFile()
    {
        return fileName;
    }

    protected void reset()
    {
        closeFile();
        fileName = null;
        super.reset();
    }

    public void setAppend(boolean flag)
    {
        fileAppend = flag;
    }

    public void setBufferSize(int i)
    {
        bufferSize = i;
    }

    public void setBufferedIO(boolean flag)
    {
        bufferedIO = flag;
        if (flag)
            immediateFlush = false;
    }

    public void setFile(String s)
    {
        fileName = s.trim();
    }

    public void setFile(String s, boolean flag, boolean flag1, int i)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        LogLog.debug("setFile called: " + s + ", " + flag);
        if (!flag1)
            break MISSING_BLOCK_LABEL_42;
        setImmediateFlush(false);
        reset();
        FileOutputStream fileoutputstream = new FileOutputStream(s, flag);
_L1:
        Object obj = createWriter(fileoutputstream);
        if (!flag1)
            break MISSING_BLOCK_LABEL_82;
        obj = new BufferedWriter(((Writer) (obj)), i);
        setQWForFiles(((Writer) (obj)));
        fileName = s;
        fileAppend = flag;
        bufferedIO = flag1;
        bufferSize = i;
        writeHeader();
        LogLog.debug("setFile ended");
        this;
        JVM INSTR monitorexit ;
        return;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        String s1 = (new File(s)).getParent();
        if (s1 == null)
            break MISSING_BLOCK_LABEL_192;
label0:
        {
            File file = new File(s1);
            if (file.exists() || !file.mkdirs())
                break label0;
            fileoutputstream = new FileOutputStream(s, flag);
        }
          goto _L1
        throw filenotfoundexception;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        throw filenotfoundexception;
    }

    protected void setQWForFiles(Writer writer)
    {
        qw = new QuietWriter(writer, errorHandler);
    }
}
