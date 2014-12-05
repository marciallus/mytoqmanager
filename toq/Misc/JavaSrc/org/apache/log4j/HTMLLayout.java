// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j;

import java.util.Date;
import org.apache.log4j.helpers.Transform;
import org.apache.log4j.spi.LocationInfo;
import org.apache.log4j.spi.LoggingEvent;

// Referenced classes of package org.apache.log4j:
//            Layout, Level

public class HTMLLayout extends Layout
{

    public static final String LOCATION_INFO_OPTION = "LocationInfo";
    public static final String TITLE_OPTION = "Title";
    static String TRACE_PREFIX = "<br>&nbsp;&nbsp;&nbsp;&nbsp;";
    protected final int BUF_SIZE = 256;
    protected final int MAX_CAPACITY = 1024;
    boolean locationInfo;
    private StringBuffer sbuf;
    String title;

    public HTMLLayout()
    {
        sbuf = new StringBuffer(256);
        locationInfo = false;
        title = "Log4J Log Messages";
    }

    public void activateOptions()
    {
    }

    void appendThrowableAsHTML(String as[], StringBuffer stringbuffer)
    {
        if (as != null)
        {
            int i = as.length;
            if (i != 0)
            {
                stringbuffer.append(Transform.escapeTags(as[0]));
                stringbuffer.append(Layout.LINE_SEP);
                for (int j = 1; j < i; j++)
                {
                    stringbuffer.append(TRACE_PREFIX);
                    stringbuffer.append(Transform.escapeTags(as[j]));
                    stringbuffer.append(Layout.LINE_SEP);
                }

            }
        }
    }

    public String format(LoggingEvent loggingevent)
    {
        if (sbuf.capacity() > 1024)
            sbuf = new StringBuffer(256);
        else
            sbuf.setLength(0);
        sbuf.append(Layout.LINE_SEP + "<tr>" + Layout.LINE_SEP);
        sbuf.append("<td>");
        sbuf.append(loggingevent.timeStamp - LoggingEvent.getStartTime());
        sbuf.append("</td>" + Layout.LINE_SEP);
        String s = Transform.escapeTags(loggingevent.getThreadName());
        sbuf.append("<td title=\"" + s + " thread\">");
        sbuf.append(s);
        sbuf.append("</td>" + Layout.LINE_SEP);
        sbuf.append("<td title=\"Level\">");
        if (loggingevent.getLevel().equals(Level.DEBUG))
        {
            sbuf.append("<font color=\"#339933\">");
            sbuf.append(Transform.escapeTags(String.valueOf(loggingevent.getLevel())));
            sbuf.append("</font>");
        } else
        if (loggingevent.getLevel().isGreaterOrEqual(Level.WARN))
        {
            sbuf.append("<font color=\"#993300\"><strong>");
            sbuf.append(Transform.escapeTags(String.valueOf(loggingevent.getLevel())));
            sbuf.append("</strong></font>");
        } else
        {
            sbuf.append(Transform.escapeTags(String.valueOf(loggingevent.getLevel())));
        }
        sbuf.append("</td>" + Layout.LINE_SEP);
        String s1 = Transform.escapeTags(loggingevent.getLoggerName());
        sbuf.append("<td title=\"" + s1 + " category\">");
        sbuf.append(s1);
        sbuf.append("</td>" + Layout.LINE_SEP);
        if (locationInfo)
        {
            LocationInfo locationinfo = loggingevent.getLocationInformation();
            sbuf.append("<td>");
            sbuf.append(Transform.escapeTags(locationinfo.getFileName()));
            sbuf.append(':');
            sbuf.append(locationinfo.getLineNumber());
            sbuf.append("</td>" + Layout.LINE_SEP);
        }
        sbuf.append("<td title=\"Message\">");
        sbuf.append(Transform.escapeTags(loggingevent.getRenderedMessage()));
        sbuf.append("</td>" + Layout.LINE_SEP);
        sbuf.append("</tr>" + Layout.LINE_SEP);
        if (loggingevent.getNDC() != null)
        {
            sbuf.append("<tr><td bgcolor=\"#EEEEEE\" style=\"font-size : xx-small;\" colspan=\"6\" title=\"Nested Diagnostic Context\">");
            sbuf.append("NDC: " + Transform.escapeTags(loggingevent.getNDC()));
            sbuf.append("</td></tr>" + Layout.LINE_SEP);
        }
        String as[] = loggingevent.getThrowableStrRep();
        if (as != null)
        {
            sbuf.append("<tr><td bgcolor=\"#993300\" style=\"color:White; font-size : xx-small;\" colspan=\"6\">");
            appendThrowableAsHTML(as, sbuf);
            sbuf.append("</td></tr>" + Layout.LINE_SEP);
        }
        return sbuf.toString();
    }

    public String getContentType()
    {
        return "text/html";
    }

    public String getFooter()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("</table>" + Layout.LINE_SEP);
        stringbuffer.append("<br>" + Layout.LINE_SEP);
        stringbuffer.append("</body></html>");
        return stringbuffer.toString();
    }

    public String getHeader()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">" + Layout.LINE_SEP);
        stringbuffer.append("<html>" + Layout.LINE_SEP);
        stringbuffer.append("<head>" + Layout.LINE_SEP);
        stringbuffer.append("<title>" + title + "</title>" + Layout.LINE_SEP);
        stringbuffer.append("<style type=\"text/css\">" + Layout.LINE_SEP);
        stringbuffer.append("<!--" + Layout.LINE_SEP);
        stringbuffer.append("body, table {font-family: arial,sans-serif; font-size: x-small;}" + Layout.LINE_SEP);
        stringbuffer.append("th {background: #336699; color: #FFFFFF; text-align: left;}" + Layout.LINE_SEP);
        stringbuffer.append("-->" + Layout.LINE_SEP);
        stringbuffer.append("</style>" + Layout.LINE_SEP);
        stringbuffer.append("</head>" + Layout.LINE_SEP);
        stringbuffer.append("<body bgcolor=\"#FFFFFF\" topmargin=\"6\" leftmargin=\"6\">" + Layout.LINE_SEP);
        stringbuffer.append("<hr size=\"1\" noshade>" + Layout.LINE_SEP);
        stringbuffer.append("Log session start time " + new Date() + "<br>" + Layout.LINE_SEP);
        stringbuffer.append("<br>" + Layout.LINE_SEP);
        stringbuffer.append("<table cellspacing=\"0\" cellpadding=\"4\" border=\"1\" bordercolor=\"#224466\" width=\"100%\">" + Layout.LINE_SEP);
        stringbuffer.append("<tr>" + Layout.LINE_SEP);
        stringbuffer.append("<th>Time</th>" + Layout.LINE_SEP);
        stringbuffer.append("<th>Thread</th>" + Layout.LINE_SEP);
        stringbuffer.append("<th>Level</th>" + Layout.LINE_SEP);
        stringbuffer.append("<th>Category</th>" + Layout.LINE_SEP);
        if (locationInfo)
            stringbuffer.append("<th>File:Line</th>" + Layout.LINE_SEP);
        stringbuffer.append("<th>Message</th>" + Layout.LINE_SEP);
        stringbuffer.append("</tr>" + Layout.LINE_SEP);
        return stringbuffer.toString();
    }

    public boolean getLocationInfo()
    {
        return locationInfo;
    }

    public String getTitle()
    {
        return title;
    }

    public boolean ignoresThrowable()
    {
        return false;
    }

    public void setLocationInfo(boolean flag)
    {
        locationInfo = flag;
    }

    public void setTitle(String s)
    {
        title = s;
    }

}
