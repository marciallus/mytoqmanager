// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.spi;

import org.apache.log4j.Appender;
import org.apache.log4j.Logger;

// Referenced classes of package org.apache.log4j.spi:
//            OptionHandler, LoggingEvent

public interface ErrorHandler
    extends OptionHandler
{

    public abstract void error(String s);

    public abstract void error(String s, Exception exception, int i);

    public abstract void error(String s, Exception exception, int i, LoggingEvent loggingevent);

    public abstract void setAppender(Appender appender);

    public abstract void setBackupAppender(Appender appender);

    public abstract void setLogger(Logger logger);
}
