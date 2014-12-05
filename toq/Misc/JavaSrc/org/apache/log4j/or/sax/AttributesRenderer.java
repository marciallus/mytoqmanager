// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.or.sax;

import org.apache.log4j.or.ObjectRenderer;
import org.xml.sax.Attributes;

public class AttributesRenderer
    implements ObjectRenderer
{


    public String doRender(Object obj)
    {
        if (obj instanceof Attributes)
        {
            StringBuffer stringbuffer = new StringBuffer();
            Attributes attributes = (Attributes)obj;
            int i = attributes.getLength();
            boolean flag = true;
            int j = 0;
            while (j < i) 
            {
                if (flag)
                    flag = false;
                else
                    stringbuffer.append(", ");
                stringbuffer.append(attributes.getQName(j));
                stringbuffer.append('=');
                stringbuffer.append(attributes.getValue(j));
                j++;
            }
            return stringbuffer.toString();
        }
        String s;
        try
        {
            s = obj.toString();
        }
        catch (Exception exception)
        {
            return exception.toString();
        }
        return s;
    }
}
