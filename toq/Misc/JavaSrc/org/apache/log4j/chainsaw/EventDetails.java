// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.chainsaw;

import org.apache.log4j.Priority;
import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

class EventDetails
{

    private final String mCategoryName;
    private final String mLocationDetails;
    private final String mMessage;
    private final String mNDC;
    private final Priority mPriority;
    private final String mThreadName;
    private final String mThrowableStrRep[];
    private final long mTimeStamp;

    EventDetails(long l, Priority priority, String s, String s1, String s2, String s3, 
            String as[], String s4)
    {
        mTimeStamp = l;
        mPriority = priority;
        mCategoryName = s;
        mNDC = s1;
        mThreadName = s2;
        mMessage = s3;
        mThrowableStrRep = as;
        mLocationDetails = s4;
    }

    EventDetails(LoggingEvent loggingevent)
    {
        long l = loggingevent.timeStamp;
        org.apache.log4j.Level level = loggingevent.getLevel();
        String s = loggingevent.getLoggerName();
        String s1 = loggingevent.getNDC();
        String s2 = loggingevent.getThreadName();
        String s3 = loggingevent.getRenderedMessage();
        String as[] = loggingevent.getThrowableStrRep();
        String s4;
        if (loggingevent.getLocationInformation() == null)
            s4 = null;
        else
            s4 = loggingevent.getLocationInformation().fullInfo;
        this(l, ((Priority) (level)), s, s1, s2, s3, as, s4);
    }

    String getCategoryName()
    {
        return mCategoryName;
    }

    String getLocationDetails()
    {
        return mLocationDetails;
    }

    String getMessage()
    {
        return mMessage;
    }

    String getNDC()
    {
        return mNDC;
    }

    Priority getPriority()
    {
        return mPriority;
    }

    String getThreadName()
    {
        return mThreadName;
    }

    String[] getThrowableStrRep()
    {
        return mThrowableStrRep;
    }

    long getTimeStamp()
    {
        return mTimeStamp;
    }
}
