// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.rewrite;

import java.util.*;
import org.apache.log4j.Logger;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.rewrite:
//            RewritePolicy

public class PropertyRewritePolicy
    implements RewritePolicy
{

    private Map properties;

    public PropertyRewritePolicy()
    {
        properties = Collections.EMPTY_MAP;
    }

    public LoggingEvent rewrite(LoggingEvent loggingevent)
    {
        if (!properties.isEmpty())
        {
            HashMap hashmap = new HashMap(loggingevent.getProperties());
            Iterator iterator = properties.entrySet().iterator();
            do
            {
                if (!iterator.hasNext())
                    break;
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (!hashmap.containsKey(entry.getKey()))
                    hashmap.put(entry.getKey(), entry.getValue());
            } while (true);
            String s = loggingevent.getFQNOfLoggerClass();
            Object obj;
            if (loggingevent.getLogger() != null)
                obj = loggingevent.getLogger();
            else
                obj = Logger.getLogger(loggingevent.getLoggerName());
            return new LoggingEvent(s, ((org.apache.log4j.Category) (obj)), loggingevent.getTimeStamp(), loggingevent.getLevel(), loggingevent.getMessage(), loggingevent.getThreadName(), loggingevent.getThrowableInformation(), loggingevent.getNDC(), loggingevent.getLocationInformation(), hashmap);
        } else
        {
            return loggingevent;
        }
    }

    public void setProperties(String s)
    {
        HashMap hashmap;
        hashmap = new HashMap();
        StringTokenizer stringtokenizer1;
        for (StringTokenizer stringtokenizer = new StringTokenizer(s, ","); stringtokenizer.hasMoreTokens(); hashmap.put(stringtokenizer1.nextElement().toString().trim(), stringtokenizer1.nextElement().toString().trim()))
            stringtokenizer1 = new StringTokenizer(stringtokenizer.nextToken(), "=");

        this;
        JVM INSTR monitorenter ;
        properties = hashmap;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
