// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.gcf.socket;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.Socket;

public class SocketConnection
    implements javax.microedition.io.SocketConnection
{

    protected Socket socket;


    public SocketConnection(String s, int i)
        throws IOException
    {
        socket = new Socket(s, i);
    }

    public SocketConnection(Socket socket1)
    {
        socket = socket1;
    }

    public void close()
        throws IOException
    {
        socket.close();
    }

    public String getAddress()
        throws IOException
    {
        if (socket != null && !socket.isClosed())
            return socket.getInetAddress().toString();
        else
            throw new IOException();
    }

    public String getLocalAddress()
        throws IOException
    {
        if (socket != null && !socket.isClosed())
            return socket.getLocalAddress().toString();
        else
            throw new IOException();
    }

    public int getLocalPort()
        throws IOException
    {
        if (socket != null && !socket.isClosed())
            return socket.getLocalPort();
        else
            throw new IOException();
    }

    public int getPort()
        throws IOException
    {
        if (socket != null && !socket.isClosed())
            return socket.getPort();
        else
            throw new IOException();
    }

    public int getSocketOption(byte byte0)
        throws IllegalArgumentException, IOException
    {
label0:
        {
            int i = 1;
            if (socket != null && socket.isClosed())
                throw new IOException();
            switch (byte0)
            {
            default:
                break label0;

            case 4: // '\004'
                return socket.getSendBufferSize();

            case 3: // '\003'
                return socket.getReceiveBufferSize();

            case 2: // '\002'
                if (!socket.getKeepAlive())
                    return 0;
                break;

            case 1: // '\001'
                i = socket.getSoLinger();
                if (i == -1)
                    return 0;
                break;

            case 0: // '\0'
                if (!socket.getTcpNoDelay())
                    return 0;
                break;
            }
            return i;
        }
        throw new IllegalArgumentException();
    }

    public DataInputStream openDataInputStream()
        throws IOException
    {
        return new DataInputStream(openInputStream());
    }

    public DataOutputStream openDataOutputStream()
        throws IOException
    {
        return new DataOutputStream(openOutputStream());
    }

    public InputStream openInputStream()
        throws IOException
    {
        return socket.getInputStream();
    }

    public OutputStream openOutputStream()
        throws IOException
    {
        return socket.getOutputStream();
    }

    public void setSocketOption(byte byte0, int i)
        throws IllegalArgumentException, IOException
    {
        if (socket.isClosed())
            throw new IOException();
        switch (byte0)
        {
        case 4: // '\004'
            if (i <= 0)
            {
                throw new IllegalArgumentException();
            } else
            {
                socket.setSendBufferSize(i);
                return;
            }

        case 3: // '\003'
            if (i <= 0)
            {
                throw new IllegalArgumentException();
            } else
            {
                socket.setReceiveBufferSize(i);
                return;
            }

        case 2: // '\002'
            boolean flag3;
            if (i == 0)
                flag3 = false;
            else
                flag3 = true;
            Socket socket3 = socket;
            boolean flag4 = false;
            if (flag3)
                flag4 = true;
            socket3.setKeepAlive(flag4);
            return;

        case 1: // '\001'
            if (i < 0)
                throw new IllegalArgumentException();
            Socket socket2 = socket;
            boolean flag2 = false;
            if (i != 0)
                flag2 = true;
            socket2.setSoLinger(flag2, i);
            return;

        case 0: // '\0'
            boolean flag;
            if (i == 0)
                flag = false;
            else
                flag = true;
            Socket socket1 = socket;
            boolean flag1 = false;
            if (flag)
                flag1 = true;
            socket1.setTcpNoDelay(flag1);
            return;
        }
        throw new IllegalArgumentException();
    }
}
