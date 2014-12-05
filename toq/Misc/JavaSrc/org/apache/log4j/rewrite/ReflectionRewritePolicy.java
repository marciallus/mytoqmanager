// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.rewrite;

import java.beans.*;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.apache.log4j.Logger;
import org.apache.log4j.helpers.LogLog;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j.rewrite:
//            RewritePolicy

public class ReflectionRewritePolicy
    implements RewritePolicy
{

    static Class class$java$lang$Object;


    static Class _mthclass$(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw (new NoClassDefFoundError()).initCause(classnotfoundexception);
        }
        return class1;
    }

    public LoggingEvent rewrite(LoggingEvent loggingevent)
    {
        Object obj;
        Object obj1;
        HashMap hashmap;
        obj = loggingevent.getMessage();
        if (obj instanceof String)
            break MISSING_BLOCK_LABEL_207;
        obj1 = obj;
        hashmap = new HashMap(loggingevent.getProperties());
        Class class1 = obj.getClass();
        if (class$java$lang$Object != null) goto _L2; else goto _L1
_L1:
        Class class2;
        class2 = _mthclass$("java.lang.Object");
        class$java$lang$Object = class2;
_L5:
        PropertyDescriptor apropertydescriptor[];
        apropertydescriptor = Introspector.getBeanInfo(class1, class2).getPropertyDescriptors();
        if (apropertydescriptor.length <= 0)
            break MISSING_BLOCK_LABEL_207;
        int i = 0;
_L4:
        int j = apropertydescriptor.length;
        if (i >= j)
            break MISSING_BLOCK_LABEL_209;
        Object obj3;
        boolean flag;
        obj3 = apropertydescriptor[i].getReadMethod().invoke(obj, (Object[])null);
        flag = "message".equalsIgnoreCase(apropertydescriptor[i].getName());
        if (!flag)
            break; /* Loop/switch isn't completed */
        obj1 = obj3;
_L6:
        i++;
        if (true) goto _L4; else goto _L3
_L2:
        class2 = class$java$lang$Object;
          goto _L5
_L3:
        hashmap.put(apropertydescriptor[i].getName(), obj3);
          goto _L6
        Exception exception1;
        exception1;
        LogLog.warn("Unable to evaluate property " + apropertydescriptor[i].getName(), exception1);
          goto _L6
        Exception exception;
        exception;
        LogLog.warn("Unable to get property descriptors", exception);
        return loggingevent;
        String s = loggingevent.getFQNOfLoggerClass();
        if (loggingevent.getLogger() == null) goto _L8; else goto _L7
_L7:
        Object obj2 = loggingevent.getLogger();
_L9:
        return new LoggingEvent(s, ((org.apache.log4j.Category) (obj2)), loggingevent.getTimeStamp(), loggingevent.getLevel(), obj1, loggingevent.getThreadName(), loggingevent.getThrowableInformation(), loggingevent.getNDC(), loggingevent.getLocationInformation(), hashmap);
_L8:
        Logger logger = Logger.getLogger(loggingevent.getLoggerName());
        obj2 = logger;
          goto _L9
    }
}
