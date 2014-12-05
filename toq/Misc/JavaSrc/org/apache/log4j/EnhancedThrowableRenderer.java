// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.io.File;
import java.lang.reflect.Method;
import java.net.URL;
import java.security.CodeSource;
import java.security.ProtectionDomain;
import java.util.HashMap;
import java.util.Map;
import org.apache.log4j.spi.ThrowableRenderer;

// Referenced classes of package org.apache.log4j:
//            DefaultThrowableRenderer

public final class EnhancedThrowableRenderer
    implements ThrowableRenderer
{

    static Class class$java$lang$Throwable;
    private Method getClassNameMethod;
    private Method getStackTraceMethod;

    public EnhancedThrowableRenderer()
    {
        Class class1;
        if (class$java$lang$Throwable != null)
            break MISSING_BLOCK_LABEL_47;
        class1 = _mthclass$("java.lang.Throwable");
        class$java$lang$Throwable = class1;
_L1:
        getStackTraceMethod = class1.getMethod("getStackTrace", null);
        getClassNameMethod = Class.forName("java.lang.StackTraceElement").getMethod("getClassName", null);
        return;
        try
        {
            class1 = class$java$lang$Throwable;
        }
        catch (Exception exception)
        {
            return;
        }
          goto _L1
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

    private Class findClass(String s)
        throws ClassNotFoundException
    {
        Class class2;
        try
        {
            class2 = Thread.currentThread().getContextClassLoader().loadClass(s);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            Class class1;
            try
            {
                class1 = Class.forName(s);
            }
            catch (ClassNotFoundException classnotfoundexception1)
            {
                return getClass().getClassLoader().loadClass(s);
            }
            return class1;
        }
        return class2;
    }

    private String formatElement(Object obj, Map map)
    {
        StringBuffer stringbuffer;
        stringbuffer = new StringBuffer("\tat ");
        stringbuffer.append(obj);
        String s;
        Object obj1;
        s = getClassNameMethod.invoke(obj, (Object[])null).toString();
        obj1 = map.get(s);
        URL url;
        String s2;
        int j;
label0:
        {
            {
                if (obj1 == null)
                    break label0;
                Class class1;
                int i;
                Package package1;
                String s1;
                CodeSource codesource;
                int k;
                try
                {
                    stringbuffer.append(obj1);
                }
                catch (Exception exception) { }
            }
            return stringbuffer.toString();
        }
        class1 = findClass(s);
        i = stringbuffer.length();
        stringbuffer.append('[');
        codesource = class1.getProtectionDomain().getCodeSource();
        if (codesource == null) goto _L2; else goto _L1
_L1:
        url = codesource.getLocation();
        if (url == null) goto _L2; else goto _L3
_L3:
        if (!"file".equals(url.getProtocol())) goto _L5; else goto _L4
_L4:
        s2 = url.getPath();
        if (s2 == null) goto _L2; else goto _L6
_L6:
        j = s2.lastIndexOf('/');
        k = s2.lastIndexOf(File.separatorChar);
        if (k > j)
            j = k;
        if (j <= 0) goto _L8; else goto _L7
_L7:
        if (j != -1 + s2.length()) goto _L9; else goto _L8
_L8:
        stringbuffer.append(url);
_L2:
        stringbuffer.append(':');
        package1 = class1.getPackage();
        if (package1 == null)
            break MISSING_BLOCK_LABEL_225;
        s1 = package1.getImplementationVersion();
        if (s1 == null)
            break MISSING_BLOCK_LABEL_225;
        stringbuffer.append(s1);
        stringbuffer.append(']');
        map.put(s, stringbuffer.substring(i));
        break MISSING_BLOCK_LABEL_55;
_L9:
        int l = j + 1;
        stringbuffer.append(s2.substring(l));
        continue; /* Loop/switch isn't completed */
_L5:
        stringbuffer.append(url);
        continue; /* Loop/switch isn't completed */
        SecurityException securityexception;
        securityexception;
        if (true) goto _L2; else goto _L10
_L10:
    }

    public String[] doRender(Throwable throwable)
    {
        if (getStackTraceMethod == null) goto _L2; else goto _L1
_L1:
        String as[];
        Object aobj[];
        HashMap hashmap;
        aobj = (Object[])(Object[])getStackTraceMethod.invoke(throwable, null);
        as = new String[1 + aobj.length];
        as[0] = throwable.toString();
        hashmap = new HashMap();
        int i = 0;
_L4:
        if (i >= aobj.length)
            break; /* Loop/switch isn't completed */
        as[i + 1] = formatElement(aobj[i], hashmap);
        i++;
        if (true) goto _L4; else goto _L3
        Exception exception;
        exception;
_L2:
        as = DefaultThrowableRenderer.render(throwable);
_L3:
        return as;
    }
}
