// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package de.mindpipe.android.logging.log4j;

import android.util.Log;
import org.apache.log4j.*;
import org.apache.log4j.spi.LoggingEvent;
import org.apache.log4j.spi.ThrowableInformation;

public class LogCatAppender extends AppenderSkeleton
{

    protected Layout tagLayout;

    public LogCatAppender()
    {
        this(((Layout) (new PatternLayout("%m%n"))));
    }

    public LogCatAppender(Layout layout)
    {
        this(layout, ((Layout) (new PatternLayout("%c"))));
    }

    public LogCatAppender(Layout layout, Layout layout1)
    {
        tagLayout = layout1;
        setLayout(layout);
    }

    protected void append(LoggingEvent loggingevent)
    {
        switch (loggingevent.getLevel().toInt())
        {
        case 50000: 
            if (loggingevent.getThrowableInformation() != null)
            {
                Log.wtf(getTagLayout().format(loggingevent), getLayout().format(loggingevent), loggingevent.getThrowableInformation().getThrowable());
                return;
            } else
            {
                Log.wtf(getTagLayout().format(loggingevent), getLayout().format(loggingevent));
                return;
            }

        case 40000: 
            if (loggingevent.getThrowableInformation() != null)
            {
                Log.e(getTagLayout().format(loggingevent), getLayout().format(loggingevent), loggingevent.getThrowableInformation().getThrowable());
                return;
            } else
            {
                Log.e(getTagLayout().format(loggingevent), getLayout().format(loggingevent));
                return;
            }

        case 30000: 
            if (loggingevent.getThrowableInformation() != null)
            {
                Log.w(getTagLayout().format(loggingevent), getLayout().format(loggingevent), loggingevent.getThrowableInformation().getThrowable());
                return;
            } else
            {
                Log.w(getTagLayout().format(loggingevent), getLayout().format(loggingevent));
                return;
            }

        case 20000: 
            if (loggingevent.getThrowableInformation() != null)
            {
                Log.i(getTagLayout().format(loggingevent), getLayout().format(loggingevent), loggingevent.getThrowableInformation().getThrowable());
                return;
            } else
            {
                Log.i(getTagLayout().format(loggingevent), getLayout().format(loggingevent));
                return;
            }

        case 10000: 
            if (loggingevent.getThrowableInformation() != null)
            {
                Log.d(getTagLayout().format(loggingevent), getLayout().format(loggingevent), loggingevent.getThrowableInformation().getThrowable());
                return;
            } else
            {
                Log.d(getTagLayout().format(loggingevent), getLayout().format(loggingevent));
                return;
            }

        case 5000: 
            if (loggingevent.getThrowableInformation() != null)
            {
                Log.v(getTagLayout().format(loggingevent), getLayout().format(loggingevent), loggingevent.getThrowableInformation().getThrowable());
                return;
            } else
            {
                Log.v(getTagLayout().format(loggingevent), getLayout().format(loggingevent));
                return;
            }
        }
    }

    public void close()
    {
    }

    public Layout getTagLayout()
    {
        return tagLayout;
    }

    public boolean requiresLayout()
    {
        return true;
    }

    public void setTagLayout(Layout layout)
    {
        tagLayout = layout;
    }
}
