// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.*;
import java.lang.reflect.Method;
import java.util.Set;
import org.apache.log4j.pattern.LogEvent;
import org.apache.log4j.spi.LoggingEvent;

public final class MDCKeySetExtractor
{

    public static final MDCKeySetExtractor INSTANCE = new MDCKeySetExtractor();
    static Class class$org$apache$log4j$pattern$LogEvent;
    static Class class$org$apache$log4j$spi$LoggingEvent;
    private final Method getKeySetMethod;

    private MDCKeySetExtractor()
    {
        if (class$org$apache$log4j$spi$LoggingEvent != null) goto _L2; else goto _L1
_L1:
        Class class1;
        class1 = _mthclass$("org.apache.log4j.spi.LoggingEvent");
        class$org$apache$log4j$spi$LoggingEvent = class1;
_L3:
        Method method1 = class1.getMethod("getPropertyKeySet", null);
        Method method = method1;
_L4:
        getKeySetMethod = method;
        return;
_L2:
        class1 = class$org$apache$log4j$spi$LoggingEvent;
          goto _L3
        Exception exception;
        exception;
        method = null;
          goto _L4
    }

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

    public Set getPropertyKeySet(LoggingEvent loggingevent)
        throws Exception
    {
        Set set1;
label0:
        {
            if (getKeySetMethod != null)
            {
                set1 = (Set)getKeySetMethod.invoke(loggingevent, null);
                break label0;
            }
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(bytearrayoutputstream);
            objectoutputstream.writeObject(loggingevent);
            objectoutputstream.close();
            byte abyte0[] = bytearrayoutputstream.toByteArray();
            Class class1;
            if (class$org$apache$log4j$pattern$LogEvent == null)
            {
                class1 = _mthclass$("org.apache.log4j.pattern.LogEvent");
                class$org$apache$log4j$pattern$LogEvent = class1;
            } else
            {
                class1 = class$org$apache$log4j$pattern$LogEvent;
            }
            String s = class1.getName();
            if (abyte0[6] != 0)
            {
                byte byte0 = abyte0[7];
                int j = s.length();
                set1 = null;
                if (byte0 != j)
                    break label0;
            }
            for (int i = 0; i < s.length(); i++)
                abyte0[i + 8] = (byte)s.charAt(i);

            ObjectInputStream objectinputstream = new ObjectInputStream(new ByteArrayInputStream(abyte0));
            Object obj = objectinputstream.readObject();
            boolean flag = obj instanceof LogEvent;
            Set set = null;
            if (flag)
                set = ((LogEvent)obj).getPropertyKeySet();
            objectinputstream.close();
            return set;
        }
        return set1;
    }

}
