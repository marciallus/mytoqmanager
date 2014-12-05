// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import org.apache.log4j.Level;
import org.apache.log4j.spi.LoggingEvent;
import org.apache.log4j.spi.TriggeringEventEvaluator;

class DefaultEvaluator
    implements TriggeringEventEvaluator
{


    public boolean isTriggeringEvent(LoggingEvent loggingevent)
    {
        return loggingevent.getLevel().isGreaterOrEqual(Level.ERROR);
    }
}
