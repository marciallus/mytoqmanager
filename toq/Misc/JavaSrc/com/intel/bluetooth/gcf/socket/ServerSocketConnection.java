// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.gcf.socket;

import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import javax.microedition.io.StreamConnection;

// Referenced classes of package com.intel.bluetooth.gcf.socket:
//            SocketConnection

public class ServerSocketConnection
    implements javax.microedition.io.ServerSocketConnection
{

    private ServerSocket serverSocket;

    public ServerSocketConnection(int i)
        throws IOException
    {
        serverSocket = new ServerSocket(i);
    }

    public StreamConnection acceptAndOpen()
        throws IOException
    {
        return new SocketConnection(serverSocket.accept());
    }

    public void close()
        throws IOException
    {
        serverSocket.close();
    }

    public String getLocalAddress()
        throws IOException
    {
        return InetAddress.getLocalHost().getHostAddress();
    }

    public int getLocalPort()
        throws IOException
    {
        return serverSocket.getLocalPort();
    }
}
