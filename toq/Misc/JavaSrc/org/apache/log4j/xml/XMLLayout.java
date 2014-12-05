// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.xml;

import java.util.Arrays;
import java.util.Set;
import org.apache.log4j.Layout;
import org.apache.log4j.helpers.Transform;
import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

public class XMLLayout extends Layout
{

    private final int DEFAULT_SIZE = 256;
    private final int UPPER_LIMIT = 2048;
    private StringBuffer buf;
    private boolean locationInfo;
    private boolean properties;

    public XMLLayout()
    {
        buf = new StringBuffer(256);
        locationInfo = false;
        properties = false;
    }

    public void activateOptions()
    {
    }

    public String format(LoggingEvent loggingevent)
    {
        if (buf.capacity() > 2048)
            buf = new StringBuffer(256);
        else
            buf.setLength(0);
        buf.append("<log4j:event logger=\"");
        buf.append(Transform.escapeTags(loggingevent.getLoggerName()));
        buf.append("\" timestamp=\"");
        buf.append(loggingevent.timeStamp);
        buf.append("\" level=\"");
        buf.append(Transform.escapeTags(String.valueOf(loggingevent.getLevel())));
        buf.append("\" thread=\"");
        buf.append(Transform.escapeTags(loggingevent.getThreadName()));
        buf.append("\">\r\n");
        buf.append("<log4j:message><![CDATA[");
        Transform.appendEscapingCDATA(buf, loggingevent.getRenderedMessage());
        buf.append("]]></log4j:message>\r\n");
        String s = loggingevent.getNDC();
        if (s != null)
        {
            buf.append("<log4j:NDC><![CDATA[");
            Transform.appendEscapingCDATA(buf, s);
            buf.append("]]></log4j:NDC>\r\n");
        }
        String as[] = loggingevent.getThrowableStrRep();
        if (as != null)
        {
            buf.append("<log4j:throwable><![CDATA[");
            for (int j = 0; j < as.length; j++)
            {
                Transform.appendEscapingCDATA(buf, as[j]);
                buf.append("\r\n");
            }

            buf.append("]]></log4j:throwable>\r\n");
        }
        if (locationInfo)
        {
            LocationInfo locationinfo = loggingevent.getLocationInformation();
            buf.append("<log4j:locationInfo class=\"");
            buf.append(Transform.escapeTags(locationinfo.getClassName()));
            buf.append("\" method=\"");
            buf.append(Transform.escapeTags(locationinfo.getMethodName()));
            buf.append("\" file=\"");
            buf.append(Transform.escapeTags(locationinfo.getFileName()));
            buf.append("\" line=\"");
            buf.append(locationinfo.getLineNumber());
            buf.append("\"/>\r\n");
        }
        if (properties)
        {
            Set set = loggingevent.getPropertyKeySet();
            if (set.size() > 0)
            {
                buf.append("<log4j:properties>\r\n");
                Object aobj[] = set.toArray();
                Arrays.sort(aobj);
                for (int i = 0; i < aobj.length; i++)
                {
                    String s1 = aobj[i].toString();
                    Object obj = loggingevent.getMDC(s1);
                    if (obj != null)
                    {
                        buf.append("<log4j:data name=\"");
                        buf.append(Transform.escapeTags(s1));
                        buf.append("\" value=\"");
                        buf.append(Transform.escapeTags(String.valueOf(obj)));
                        buf.append("\"/>\r\n");
                    }
                }

                buf.append("</log4j:properties>\r\n");
            }
        }
        buf.append("</log4j:event>\r\n\r\n");
        return buf.toString();
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    public boolean getProperties()
    {
        return properties;
    }

    public boolean ignoresThrowable()
    {
        return false;
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }

    public void setProperties(boolean flag)
    {
        properties = flag;
    }
}
