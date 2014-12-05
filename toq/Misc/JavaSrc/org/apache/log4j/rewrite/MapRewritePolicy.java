// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.rewrite;

import java.util.*;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.rewrite:
//            RewritePolicy

public class MapRewritePolicy
    implements RewritePolicy
{


    public LoggingEvent rewrite(LoggingEvent loggingevent)
    {
        Object obj = loggingevent.getMessage();
        if (obj instanceof Map)
        {
            HashMap hashmap = new HashMap(loggingevent.getProperties());
            Map map = (Map)obj;
            Object obj1 = map.get("message");
            if (obj1 == null)
                obj1 = obj;
            Iterator iterator = map.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (!"message".equals(entry.getKey()))
                    hashmap.put(entry.getKey(), entry.getValue());
            } while (true);
            String s = loggingevent.getFQNOfLoggerClass();
            Object obj2;
            if (loggingevent.getLogger() != null)
                obj2 = loggingevent.getLogger();
            else
                obj2 = Logger.getLogger(loggingevent.getLoggerName());
            return new LoggingEvent(s, ((org.apache.log4j.Category) (obj2)), loggingevent.getTimeStamp(), loggingevent.getLevel(), obj1, loggingevent.getThreadName(), loggingevent.getThrowableInformation(), loggingevent.getNDC(), loggingevent.getLocationInformation(), hashmap);
        } else
        {
            return loggingevent;
        }
    }
}
