// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.helpers.LogLog;

public final class RootLogger extends Logger
{

    public RootLogger(Level level)
    {
        super("root");
        setLevel(level);
    }

    public final Level getChainedLevel()
    {
        return level;
    }

    public final void setLevel(Level level)
    {
        if (level == null)
        {
            LogLog.error("You have tried to set a null level to root.", new Throwable());
            return;
        } else
        {
            this.level = level;
            return;
        }
    }
}
