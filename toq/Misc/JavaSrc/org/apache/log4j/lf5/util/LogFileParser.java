// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.util;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.swing.SwingUtilities;
import org.apache.log4j.lf5.*;
import org.apache.log4j.lf5.viewer.*;

public class LogFileParser
    implements Runnable
{

    public static final String ATTRIBUTE_DELIMITER = "[slf5s.";
    public static final String CATEGORY_DELIMITER = "[slf5s.CATEGORY]";
    public static final String DATE_DELIMITER = "[slf5s.DATE]";
    public static final String LOCATION_DELIMITER = "[slf5s.LOCATION]";
    public static final String MESSAGE_DELIMITER = "[slf5s.MESSAGE]";
    public static final String NDC_DELIMITER = "[slf5s.NDC]";
    public static final String PRIORITY_DELIMITER = "[slf5s.PRIORITY]";
    public static final String RECORD_DELIMITER = "[slf5s.start]";
    public static final String THREAD_DELIMITER = "[slf5s.THREAD]";
    private static SimpleDateFormat _sdf = new SimpleDateFormat("dd MMM yyyy HH:mm:ss,S");
    private InputStream _in;
    LogFactor5LoadingDialog _loadDialog;
    private LogBrokerMonitor _monitor;

    public LogFileParser(File file)
        throws IOException, FileNotFoundException
    {
        this(((InputStream) (new FileInputStream(file))));
    }

    public LogFileParser(InputStream inputstream)
        throws IOException
    {
        _in = null;
        _in = inputstream;
    }

    private LogRecord createLogRecord(String s)
    {
        if (s != null && s.trim().length() != 0)
        {
            Log4JLogRecord log4jlogrecord = new Log4JLogRecord();
            log4jlogrecord.setMillis(parseDate(s));
            log4jlogrecord.setLevel(parsePriority(s));
            log4jlogrecord.setCategory(parseCategory(s));
            log4jlogrecord.setLocation(parseLocation(s));
            log4jlogrecord.setThreadDescription(parseThread(s));
            log4jlogrecord.setNDC(parseNDC(s));
            log4jlogrecord.setMessage(parseMessage(s));
            log4jlogrecord.setThrownStackTrace(parseThrowable(s));
            return log4jlogrecord;
        } else
        {
            return null;
        }
    }

    private void destroyDialog()
    {
        _loadDialog.hide();
        _loadDialog.dispose();
    }

    private String getAttribute(int i, String s)
    {
        int j = s.lastIndexOf("[slf5s.", i - 1);
        if (j == -1)
            return s.substring(0, i);
        else
            return s.substring(1 + s.indexOf("]", j), i).trim();
    }

    private String loadLogFile(InputStream inputstream)
        throws IOException
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(inputstream);
        int i = bufferedinputstream.available();
        StringBuffer stringbuffer;
        if (i > 0)
            stringbuffer = new StringBuffer(i);
        else
            stringbuffer = new StringBuffer(1024);
        do
        {
            int j = bufferedinputstream.read();
            if (j != -1)
            {
                stringbuffer.append((char)j);
            } else
            {
                bufferedinputstream.close();
                return stringbuffer.toString();
            }
        } while (true);
    }

    private String parseAttribute(String s, String s1)
    {
        int i = s1.indexOf(s);
        if (i == -1)
            return null;
        else
            return getAttribute(i, s1);
    }

    private String parseCategory(String s)
    {
        return parseAttribute("[slf5s.CATEGORY]", s);
    }

    private long parseDate(String s)
    {
        String s1;
        long l;
        try
        {
            s1 = parseAttribute("[slf5s.DATE]", s);
        }
        catch (ParseException parseexception)
        {
            return 0L;
        }
        if (s1 == null)
            return 0L;
        l = _sdf.parse(s1).getTime();
        return l;
    }

    private String parseLocation(String s)
    {
        return parseAttribute("[slf5s.LOCATION]", s);
    }

    private String parseMessage(String s)
    {
        return parseAttribute("[slf5s.MESSAGE]", s);
    }

    private String parseNDC(String s)
    {
        return parseAttribute("[slf5s.NDC]", s);
    }

    private LogLevel parsePriority(String s)
    {
        String s1 = parseAttribute("[slf5s.PRIORITY]", s);
        if (s1 != null)
        {
            LogLevel loglevel;
            try
            {
                loglevel = LogLevel.valueOf(s1);
            }
            catch (LogLevelFormatException loglevelformatexception)
            {
                return LogLevel.DEBUG;
            }
            return loglevel;
        } else
        {
            return LogLevel.DEBUG;
        }
    }

    private String parseThread(String s)
    {
        return parseAttribute("[slf5s.THREAD]", s);
    }

    private String parseThrowable(String s)
    {
        return getAttribute(s.length(), s);
    }

    protected void displayError(String s)
    {
        new LogFactor5ErrorDialog(_monitor.getBaseFrame(), s);
    }

    public void parse(LogBrokerMonitor logbrokermonitor)
        throws RuntimeException
    {
        _monitor = logbrokermonitor;
        (new Thread(this)).start();
    }

    public void run()
    {
        int i;
        boolean flag;
        i = 0;
        flag = false;
        _loadDialog = new LogFactor5LoadingDialog(_monitor.getBaseFrame(), "Loading file...");
        String s = loadLogFile(_in);
_L1:
        int j = s.indexOf("[slf5s.start]", i);
        if (j == -1)
            break MISSING_BLOCK_LABEL_93;
        LogRecord logrecord = createLogRecord(s.substring(i, j));
        flag = true;
        if (logrecord == null)
            break MISSING_BLOCK_LABEL_81;
        _monitor.addMessage(logrecord);
        i = j + "[slf5s.start]".length();
          goto _L1
        if (i >= s.length() || !flag)
            break MISSING_BLOCK_LABEL_132;
        LogRecord logrecord1 = createLogRecord(s.substring(i));
        if (logrecord1 == null)
            break MISSING_BLOCK_LABEL_132;
        _monitor.addMessage(logrecord1);
        if (flag)
            break MISSING_BLOCK_LABEL_166;
        try
        {
            throw new RuntimeException("Invalid log file format");
        }
        catch (RuntimeException runtimeexception)
        {
            destroyDialog();
            displayError("Error - Invalid log file format.\nPlease see documentation on how to load log files.");
        }
        catch (IOException ioexception)
        {
            destroyDialog();
            displayError("Error - Unable to load log file!");
        }
        _in = null;
        return;
        SwingUtilities.invokeLater(new _cls1());
        break MISSING_BLOCK_LABEL_160;
    }



    private class _cls1
        implements Runnable
    {

        private final LogFileParser this$0;

        public void run()
        {
            destroyDialog();
        }

        _cls1()
        {
            this$0 = LogFileParser.this;
            super();
        }
    }

}
