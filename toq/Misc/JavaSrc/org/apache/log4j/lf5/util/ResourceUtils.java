// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.util;

import java.io.InputStream;
import java.net.URL;

// Referenced classes of package org.apache.log4j.lf5.util:
//            Resource

public class ResourceUtils
{


    public static InputStream getResourceAsStream(Object obj, Resource resource)
    {
        ClassLoader classloader = obj.getClass().getClassLoader();
        if (classloader != null)
            return classloader.getResourceAsStream(resource.getName());
        else
            return ClassLoader.getSystemResourceAsStream(resource.getName());
    }

    public static URL getResourceAsURL(Object obj, Resource resource)
    {
        ClassLoader classloader = obj.getClass().getClassLoader();
        if (classloader != null)
            return classloader.getResource(resource.getName());
        else
            return ClassLoader.getSystemResource(resource.getName());
    }
}
