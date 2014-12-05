// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.*;
import java.text.SimpleDateFormat;
import java.util.*;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            FileAppender, RollingCalendar, Layout

public class DailyRollingFileAppender extends FileAppender
{

    static final int HALF_DAY = 2;
    static final int TOP_OF_DAY = 3;
    static final int TOP_OF_HOUR = 1;
    static final int TOP_OF_MINUTE = 0;
    static final int TOP_OF_MONTH = 5;
    static final int TOP_OF_TROUBLE = -1;
    static final int TOP_OF_WEEK = 4;
    static final TimeZone gmtTimeZone = TimeZone.getTimeZone("GMT");
    int checkPeriod;
    private String datePattern;
    private long nextCheck;
    Date now;
    RollingCalendar rc;
    private String scheduledFilename;
    SimpleDateFormat sdf;

    public DailyRollingFileAppender()
    {
        datePattern = "'.'yyyy-MM-dd";
        nextCheck = System.currentTimeMillis() - 1L;
        now = new Date();
        rc = new RollingCalendar();
        checkPeriod = -1;
    }

    public DailyRollingFileAppender(Layout layout, String s, String s1)
        throws IOException
    {
        super(layout, s, true);
        datePattern = "'.'yyyy-MM-dd";
        nextCheck = System.currentTimeMillis() - 1L;
        now = new Date();
        rc = new RollingCalendar();
        checkPeriod = -1;
        datePattern = s1;
        activateOptions();
    }

    public void activateOptions()
    {
        super.activateOptions();
        if (datePattern != null && fileName != null)
        {
            now.setTime(System.currentTimeMillis());
            sdf = new SimpleDateFormat(datePattern);
            int i = computeCheckPeriod();
            printPeriodicity(i);
            rc.setType(i);
            File file = new File(fileName);
            scheduledFilename = fileName + sdf.format(new Date(file.lastModified()));
            return;
        } else
        {
            LogLog.error("Either File or DatePattern options are not set for appender [" + name + "].");
            return;
        }
    }

    int computeCheckPeriod()
    {
        RollingCalendar rollingcalendar = new RollingCalendar(gmtTimeZone, Locale.getDefault());
        Date date = new Date(0L);
        if (datePattern != null)
        {
            for (int i = 0; i <= 5; i++)
            {
                SimpleDateFormat simpledateformat = new SimpleDateFormat(datePattern);
                simpledateformat.setTimeZone(gmtTimeZone);
                String s = simpledateformat.format(date);
                rollingcalendar.setType(i);
                String s1 = simpledateformat.format(new Date(rollingcalendar.getNextCheckMillis(date)));
                if (s != null && s1 != null && !s.equals(s1))
                    return i;
            }

        }
        return -1;
    }

    public String getDatePattern()
    {
        return datePattern;
    }

    void printPeriodicity(int i)
    {
        switch (i)
        {
        case 5: // '\005'
            LogLog.debug("Appender [" + name + "] to be rolled at start of every month.");
            return;

        case 4: // '\004'
            LogLog.debug("Appender [" + name + "] to be rolled at start of week.");
            return;

        case 3: // '\003'
            LogLog.debug("Appender [" + name + "] to be rolled at midnight.");
            return;

        case 2: // '\002'
            LogLog.debug("Appender [" + name + "] to be rolled at midday and midnight.");
            return;

        case 1: // '\001'
            LogLog.debug("Appender [" + name + "] to be rolled on top of every hour.");
            return;

        case 0: // '\0'
            LogLog.debug("Appender [" + name + "] to be rolled every minute.");
            return;
        }
        LogLog.warn("Unknown periodicity for appender [" + name + "].");
    }

    void rollOver()
        throws IOException
    {
        if (datePattern == null)
        {
            errorHandler.error("Missing DatePattern option in rollOver().");
        } else
        {
            String s = fileName + sdf.format(now);
            if (!scheduledFilename.equals(s))
            {
                closeFile();
                File file = new File(scheduledFilename);
                if (file.exists())
                    file.delete();
                if ((new File(fileName)).renameTo(file))
                    LogLog.debug(fileName + " -> " + scheduledFilename);
                else
                    LogLog.error("Failed to rename [" + fileName + "] to [" + scheduledFilename + "].");
                try
                {
                    setFile(fileName, true, bufferedIO, bufferSize);
                }
                catch (IOException ioexception)
                {
                    errorHandler.error("setFile(" + fileName + ", true) call failed.");
                }
                scheduledFilename = s;
                return;
            }
        }
    }

    public void setDatePattern(String s)
    {
        datePattern = s;
    }

    protected void subAppend(LoggingEvent loggingevent)
    {
        long l = System.currentTimeMillis();
        if (l >= nextCheck)
        {
            now.setTime(l);
            nextCheck = rc.getNextCheckMillis(now);
            try
            {
                rollOver();
            }
            catch (IOException ioexception)
            {
                if (ioexception instanceof InterruptedIOException)
                    Thread.currentThread().interrupt();
                LogLog.error("rollOver() failed.", ioexception);
            }
        }
        super.subAppend(loggingevent);
    }

}
