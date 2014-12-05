// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.net;

import java.io.*;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import org.apache.log4j.*;
import org.apache.log4j.helpers.SyslogQuietWriter;
import org.apache.log4j.helpers.SyslogWriter;
import org.apache.log4j.spi.ErrorHandler;
import org.apache.log4j.spi.LoggingEvent;

public class SyslogAppender extends AppenderSkeleton
{

    protected static final int FACILITY_OI = 1;
    public static final int LOG_AUTH = 32;
    public static final int LOG_AUTHPRIV = 80;
    public static final int LOG_CRON = 72;
    public static final int LOG_DAEMON = 24;
    public static final int LOG_FTP = 88;
    public static final int LOG_KERN = 0;
    public static final int LOG_LOCAL0 = 128;
    public static final int LOG_LOCAL1 = 136;
    public static final int LOG_LOCAL2 = 144;
    public static final int LOG_LOCAL3 = 152;
    public static final int LOG_LOCAL4 = 160;
    public static final int LOG_LOCAL5 = 168;
    public static final int LOG_LOCAL6 = 176;
    public static final int LOG_LOCAL7 = 184;
    public static final int LOG_LPR = 48;
    public static final int LOG_MAIL = 16;
    public static final int LOG_NEWS = 56;
    public static final int LOG_SYSLOG = 40;
    public static final int LOG_USER = 8;
    public static final int LOG_UUCP = 64;
    protected static final int SYSLOG_HOST_OI = 0;
    static final String TAB = "    ";
    private final SimpleDateFormat dateFormat;
    boolean facilityPrinting;
    String facilityStr;
    private boolean header;
    private boolean layoutHeaderChecked;
    private String localHostname;
    SyslogQuietWriter sqw;
    int syslogFacility;
    String syslogHost;

    public SyslogAppender()
    {
        syslogFacility = 8;
        facilityPrinting = false;
        header = false;
        dateFormat = new SimpleDateFormat("MMM dd HH:mm:ss ", Locale.ENGLISH);
        layoutHeaderChecked = false;
        initSyslogFacilityStr();
    }

    public SyslogAppender(Layout layout, int i)
    {
        syslogFacility = 8;
        facilityPrinting = false;
        header = false;
        dateFormat = new SimpleDateFormat("MMM dd HH:mm:ss ", Locale.ENGLISH);
        layoutHeaderChecked = false;
        this.layout = layout;
        syslogFacility = i;
        initSyslogFacilityStr();
    }

    public SyslogAppender(Layout layout, String s, int i)
    {
        this(layout, i);
        setSyslogHost(s);
    }

    public static int getFacility(String s)
    {
        if (s != null)
            s = s.trim();
        if ("KERN".equalsIgnoreCase(s))
            return 0;
        if ("USER".equalsIgnoreCase(s))
            return 8;
        if ("MAIL".equalsIgnoreCase(s))
            return 16;
        if ("DAEMON".equalsIgnoreCase(s))
            return 24;
        if ("AUTH".equalsIgnoreCase(s))
            return 32;
        if ("SYSLOG".equalsIgnoreCase(s))
            return 40;
        if ("LPR".equalsIgnoreCase(s))
            return 48;
        if ("NEWS".equalsIgnoreCase(s))
            return 56;
        if ("UUCP".equalsIgnoreCase(s))
            return 64;
        if ("CRON".equalsIgnoreCase(s))
            return 72;
        if ("AUTHPRIV".equalsIgnoreCase(s))
            return 80;
        if ("FTP".equalsIgnoreCase(s))
            return 88;
        if ("LOCAL0".equalsIgnoreCase(s))
            return 128;
        if ("LOCAL1".equalsIgnoreCase(s))
            return 136;
        if ("LOCAL2".equalsIgnoreCase(s))
            return 144;
        if ("LOCAL3".equalsIgnoreCase(s))
            return 152;
        if ("LOCAL4".equalsIgnoreCase(s))
            return 160;
        if ("LOCAL5".equalsIgnoreCase(s))
            return 168;
        if ("LOCAL6".equalsIgnoreCase(s))
            return 176;
        return !"LOCAL7".equalsIgnoreCase(s) ? -1 : 184;
    }

    public static String getFacilityString(int i)
    {
        switch (i)
        {
        case 184: 
            return "local7";

        case 176: 
            return "local6";

        case 168: 
            return "local5";

        case 160: 
            return "local4";

        case 152: 
            return "local3";

        case 144: 
            return "local2";

        case 136: 
            return "local1";

        case 128: 
            return "local0";

        case 88: // 'X'
            return "ftp";

        case 80: // 'P'
            return "authpriv";

        case 72: // 'H'
            return "cron";

        case 64: // '@'
            return "uucp";

        case 56: // '8'
            return "news";

        case 48: // '0'
            return "lpr";

        case 40: // '('
            return "syslog";

        case 32: // ' '
            return "auth";

        case 24: // '\030'
            return "daemon";

        case 16: // '\020'
            return "mail";

        case 8: // '\b'
            return "user";

        case 0: // '\0'
            return "kern";
        }
        return null;
    }

    private String getLocalHostname()
    {
        if (localHostname == null)
            try
            {
                localHostname = InetAddress.getLocalHost().getHostName();
            }
            catch (UnknownHostException unknownhostexception)
            {
                localHostname = "UNKNOWN_HOST";
            }
        return localHostname;
    }

    private String getPacketHeader(long l)
    {
        if (header)
        {
            StringBuffer stringbuffer = new StringBuffer(dateFormat.format(new Date(l)));
            if (stringbuffer.charAt(4) == '0')
                stringbuffer.setCharAt(4, ' ');
            stringbuffer.append(getLocalHostname());
            stringbuffer.append(' ');
            return stringbuffer.toString();
        } else
        {
            return "";
        }
    }

    private void initSyslogFacilityStr()
    {
        facilityStr = getFacilityString(syslogFacility);
        if (facilityStr == null)
        {
            System.err.println("\"" + syslogFacility + "\" is an unknown syslog facility. Defaulting to \"USER\".");
            syslogFacility = 8;
            facilityStr = "user:";
            return;
        } else
        {
            facilityStr = facilityStr + ":";
            return;
        }
    }

    private void sendLayoutMessage(String s)
    {
        if (sqw != null)
        {
            String s1 = s;
            String s2 = getPacketHeader((new Date()).getTime());
            if (facilityPrinting || s2.length() > 0)
            {
                StringBuffer stringbuffer = new StringBuffer(s2);
                if (facilityPrinting)
                    stringbuffer.append(facilityStr);
                stringbuffer.append(s);
                s1 = stringbuffer.toString();
            }
            sqw.setLevel(6);
            sqw.write(s1);
        }
    }

    private void splitPacket(String s, String s1)
    {
        if (s1.getBytes().length <= 1019)
        {
            sqw.write(s1);
            return;
        } else
        {
            int i = s.length() + (s1.length() - s.length()) / 2;
            splitPacket(s, s1.substring(0, i) + "...");
            splitPacket(s, s + "..." + s1.substring(i));
            return;
        }
    }

    public void activateOptions()
    {
        if (header)
            getLocalHostname();
        if (layout != null && layout.getHeader() != null)
            sendLayoutMessage(layout.getHeader());
        layoutHeaderChecked = true;
    }

    public void append(LoggingEvent loggingevent)
    {
        if (isAsSevereAsThreshold(loggingevent.getLevel()))
        {
            if (sqw == null)
            {
                errorHandler.error("No syslog host is set for SyslogAppedender named \"" + name + "\".");
                return;
            }
            if (!layoutHeaderChecked)
            {
                if (layout != null && layout.getHeader() != null)
                    sendLayoutMessage(layout.getHeader());
                layoutHeaderChecked = true;
            }
            String s = getPacketHeader(loggingevent.timeStamp);
            String s1;
            if (layout == null)
                s1 = String.valueOf(loggingevent.getMessage());
            else
                s1 = layout.format(loggingevent);
            if (facilityPrinting || s.length() > 0)
            {
                StringBuffer stringbuffer = new StringBuffer(s);
                if (facilityPrinting)
                    stringbuffer.append(facilityStr);
                stringbuffer.append(s1);
                s1 = stringbuffer.toString();
            }
            sqw.setLevel(loggingevent.getLevel().getSyslogEquivalent());
            if (s1.length() > 256)
                splitPacket(s, s1);
            else
                sqw.write(s1);
            if (layout == null || layout.ignoresThrowable())
            {
                String as[] = loggingevent.getThrowableStrRep();
                if (as != null)
                {
                    for (int i = 0; i < as.length; i++)
                        if (as[i].startsWith("\t"))
                            sqw.write(s + "    " + as[i].substring(1));
                        else
                            sqw.write(s + as[i]);

                }
            }
        }
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        SyslogQuietWriter syslogquietwriter;
        closed = true;
        syslogquietwriter = sqw;
        if (syslogquietwriter == null)
            break MISSING_BLOCK_LABEL_63;
        if (layoutHeaderChecked && layout != null && layout.getFooter() != null)
            sendLayoutMessage(layout.getFooter());
        sqw.close();
        sqw = null;
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        InterruptedIOException interruptedioexception;
        interruptedioexception;
        Thread.currentThread().interrupt();
        sqw = null;
          goto _L1
        Exception exception;
        exception;
        throw exception;
        IOException ioexception;
        ioexception;
        sqw = null;
          goto _L1
    }

    public String getFacility()
    {
        return getFacilityString(syslogFacility);
    }

    public boolean getFacilityPrinting()
    {
        return facilityPrinting;
    }

    public final boolean getHeader()
    {
        return header;
    }

    public String getSyslogHost()
    {
        return syslogHost;
    }

    public boolean requiresLayout()
    {
        return true;
    }

    public void setFacility(String s)
    {
        if (s != null)
        {
            syslogFacility = getFacility(s);
            if (syslogFacility == -1)
            {
                System.err.println("[" + s + "] is an unknown syslog facility. Defaulting to [USER].");
                syslogFacility = 8;
            }
            initSyslogFacilityStr();
            if (sqw != null)
            {
                sqw.setSyslogFacility(syslogFacility);
                return;
            }
        }
    }

    public void setFacilityPrinting(boolean flag)
    {
        facilityPrinting = flag;
    }

    public final void setHeader(boolean flag)
    {
        header = flag;
    }

    public void setSyslogHost(String s)
    {
        sqw = new SyslogQuietWriter(new SyslogWriter(s), syslogFacility, errorHandler);
        syslogHost = s;
    }
}
