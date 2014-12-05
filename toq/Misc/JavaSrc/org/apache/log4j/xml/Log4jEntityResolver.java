// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.xml;

import java.io.ByteArrayInputStream;
import org.apache.log4j.helpers.LogLog;
import org.xml.sax.EntityResolver;
import org.xml.sax.InputSource;

public class Log4jEntityResolver
    implements EntityResolver
{

    private static final String PUBLIC_ID = "-//APACHE//DTD LOG4J 1.2//EN";


    public InputSource resolveEntity(String s, String s1)
    {
        if (!s1.endsWith("log4j.dtd") && !"-//APACHE//DTD LOG4J 1.2//EN".equals(s))
            return null;
        Class class1 = getClass();
        Object obj = class1.getResourceAsStream("/org/apache/log4j/xml/log4j.dtd");
        if (obj == null)
        {
            LogLog.warn("Could not find [log4j.dtd] using [" + class1.getClassLoader() + "] class loader, parsed without DTD.");
            obj = new ByteArrayInputStream(new byte[0]);
        }
        return new InputSource(((java.io.InputStream) (obj)));
    }
}
