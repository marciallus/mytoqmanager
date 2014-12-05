// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5;

import org.apache.log4j.spi.ThrowableInformation;

// Referenced classes of package org.apache.log4j.lf5:
//            LogRecord, LogLevel

public class Log4JLogRecord extends LogRecord
{


    public boolean isSevereLevel()
    {
        boolean flag;
label0:
        {
            if (!LogLevel.ERROR.equals(getLevel()))
            {
                boolean flag1 = LogLevel.FATAL.equals(getLevel());
                flag = false;
                if (!flag1)
                    break label0;
            }
            flag = true;
        }
        return flag;
    }

    public void setThrownStackTrace(ThrowableInformation throwableinformation)
    {
        String as[] = throwableinformation.getThrowableStrRep();
        StringBuffer stringbuffer = new StringBuffer();
        for (int i = 0; i < as.length; i++)
            stringbuffer.append(as[i] + "\n");

        _thrownStackTrace = stringbuffer.toString();
    }
}
