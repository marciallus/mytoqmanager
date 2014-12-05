// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.helpers.QuietWriter;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            AppenderSkeleton, Layout

public class WriterAppender extends AppenderSkeleton
{

    protected String encoding;
    protected boolean immediateFlush;
    protected QuietWriter qw;

    public WriterAppender()
    {
        immediateFlush = true;
    }

    public WriterAppender(Layout layout, OutputStream outputstream)
    {
        this(layout, ((Writer) (new OutputStreamWriter(outputstream))));
    }

    public WriterAppender(Layout layout, Writer writer)
    {
        immediateFlush = true;
        this.layout = layout;
        setWriter(writer);
    }

    public void activateOptions()
    {
    }

    public void append(LoggingEvent loggingevent)
    {
        if (!checkEntryConditions())
        {
            return;
        } else
        {
            subAppend(loggingevent);
            return;
        }
    }

    protected boolean checkEntryConditions()
    {
        if (closed)
        {
            LogLog.warn("Not allowed to write to a closed appender.");
            return false;
        }
        if (qw == null)
        {
            errorHandler.error("No output stream or file set for the appender named [" + name + "].");
            return false;
        }
        if (layout == null)
        {
            errorHandler.error("No layout set for the appender named [" + name + "].");
            return false;
        } else
        {
            return true;
        }
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = closed;
        if (!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        closed = true;
        writeFooter();
        reset();
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected void closeWriter()
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

    protected OutputStreamWriter createWriter(OutputStream outputstream)
    {
        String s;
        OutputStreamWriter outputstreamwriter;
        s = getEncoding();
        outputstreamwriter = null;
        if (s == null)
            break MISSING_BLOCK_LABEL_25;
        OutputStreamWriter outputstreamwriter1 = new OutputStreamWriter(outputstream, s);
        outputstreamwriter = outputstreamwriter1;
_L2:
        if (outputstreamwriter == null)
            outputstreamwriter = new OutputStreamWriter(outputstream);
        return outputstreamwriter;
        IOException ioexception;
        ioexception;
        if (ioexception instanceof InterruptedIOException)
            Thread.currentThread().interrupt();
        LogLog.warn("Error initializing output writer.");
        LogLog.warn("Unsupported encoding?");
        outputstreamwriter = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public String getEncoding()
    {
        return encoding;
    }

    public boolean getImmediateFlush()
    {
        return immediateFlush;
    }

    public boolean requiresLayout()
    {
        return true;
    }

    protected void reset()
    {
        closeWriter();
        qw = null;
    }

    public void setEncoding(String s)
    {
        encoding = s;
    }

    public void setErrorHandler(ErrorHandler errorhandler)
    {
        this;
        JVM INSTR monitorenter ;
        if (errorhandler != null)
            break MISSING_BLOCK_LABEL_14;
        LogLog.warn("You have tried to set a null error-handler.");
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        errorHandler = errorhandler;
        if (qw != null)
            qw.setErrorHandler(errorhandler);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void setImmediateFlush(boolean flag)
    {
        immediateFlush = flag;
    }

    public void setWriter(Writer writer)
    {
        this;
        JVM INSTR monitorenter ;
        reset();
        qw = new QuietWriter(writer, errorHandler);
        writeHeader();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    protected boolean shouldFlush(LoggingEvent loggingevent)
    {
        return immediateFlush;
    }

    protected void subAppend(LoggingEvent loggingevent)
    {
        qw.write(layout.format(loggingevent));
        if (layout.ignoresThrowable())
        {
            String as[] = loggingevent.getThrowableStrRep();
            if (as != null)
            {
                int i = as.length;
                for (int j = 0; j < i; j++)
                {
                    qw.write(as[j]);
                    qw.write(Layout.LINE_SEP);
                }

            }
        }
        if (shouldFlush(loggingevent))
            qw.flush();
    }

    protected void writeFooter()
    {
        if (layout != null)
        {
            String s = layout.getFooter();
            if (s != null && qw != null)
            {
                qw.write(s);
                qw.flush();
            }
        }
    }

    protected void writeHeader()
    {
        if (layout != null)
        {
            String s = layout.getHeader();
            if (s != null && qw != null)
                qw.write(s);
        }
    }
}
