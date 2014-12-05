// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.pattern;

import java.util.Iterator;
import java.util.Set;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.helpers.MDCKeySetExtractor;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.pattern:
//            LoggingEventPatternConverter

public final class PropertiesPatternConverter extends LoggingEventPatternConverter
{

    private final String option;

    private PropertiesPatternConverter(String as[])
    {
        String s;
        if (as != null && as.length > 0)
            s = "Property{" + as[0] + "}";
        else
            s = "Properties";
        super(s, "property");
        if (as != null && as.length > 0)
        {
            option = as[0];
            return;
        } else
        {
            option = null;
            return;
        }
    }

    public static PropertiesPatternConverter newInstance(String as[])
    {
        return new PropertiesPatternConverter(as);
    }

    public void format(LoggingEvent loggingevent, StringBuffer stringbuffer)
    {
        if (option != null) goto _L2; else goto _L1
_L1:
        stringbuffer.append("{");
        Set set = MDCKeySetExtractor.INSTANCE.getPropertyKeySet(loggingevent);
        if (set != null)
            try
            {
                Object obj1;
                Object obj2;
                for (Iterator iterator = set.iterator(); iterator.hasNext(); stringbuffer.append("{").append(obj1).append(",").append(obj2).append("}"))
                {
                    obj1 = iterator.next();
                    obj2 = loggingevent.getMDC(obj1.toString());
                }

            }
            catch (Exception exception)
            {
                LogLog.error("Unexpected exception while extracting MDC keys", exception);
            }
        stringbuffer.append("}");
_L4:
        return;
_L2:
        Object obj = loggingevent.getMDC(option);
        if (obj != null)
        {
            stringbuffer.append(obj);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
