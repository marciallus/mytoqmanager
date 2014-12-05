// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.helpers;

import java.io.IOException;
import java.io.Writer;
import java.net.*;

// Referenced classes of package org.apache.log4j.helpers:
//            LogLog

public class SyslogWriter extends Writer
{

    static String syslogHost;
    final int SYSLOG_PORT;
    private InetAddress address;
    private DatagramSocket ds;
    private final int port;

    public SyslogWriter(String s)
    {
        String s1;
        int i;
        SYSLOG_PORT = 514;
        syslogHost = s;
        if (s == null)
            throw new NullPointerException("syslogHost");
        s1 = s;
        i = -1;
        if (s1.indexOf("[") == -1 && s1.indexOf(':') != s1.lastIndexOf(':'))
            break MISSING_BLOCK_LABEL_146;
        int j;
        URL url = new URL("http://" + s1);
        if (url.getHost() == null)
            break MISSING_BLOCK_LABEL_146;
        s1 = url.getHost();
        if (s1.startsWith("[") && s1.charAt(-1 + s1.length()) == ']')
            s1 = s1.substring(1, -1 + s1.length());
        j = url.getPort();
        i = j;
_L1:
        if (i == -1)
            i = 514;
        port = i;
        MalformedURLException malformedurlexception;
        try
        {
            address = InetAddress.getByName(s1);
        }
        catch (UnknownHostException unknownhostexception)
        {
            LogLog.error("Could not find " + s1 + ". All logging will FAIL.", unknownhostexception);
        }
        try
        {
            ds = new DatagramSocket();
            return;
        }
        catch (SocketException socketexception)
        {
            socketexception.printStackTrace();
            LogLog.error("Could not instantiate DatagramSocket to " + s1 + ". All logging will FAIL.", socketexception);
            return;
        }
        malformedurlexception;
        LogLog.error("Malformed URL: will attempt to interpret as InetAddress.", malformedurlexception);
          goto _L1
    }

    public void close()
    {
        if (ds != null)
            ds.close();
    }

    public void flush()
    {
    }

    public void write(String s)
        throws IOException
    {
        if (ds != null && address != null)
        {
            byte abyte0[] = s.getBytes();
            int i = abyte0.length;
            if (i >= 1024)
                i = 1024;
            DatagramPacket datagrampacket = new DatagramPacket(abyte0, i, address, port);
            ds.send(datagrampacket);
        }
    }

    public void write(char ac[], int i, int j)
        throws IOException
    {
        write(new String(ac, i, j));
    }
}
