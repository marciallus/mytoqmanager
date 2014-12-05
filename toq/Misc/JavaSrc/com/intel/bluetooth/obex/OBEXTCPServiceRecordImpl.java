// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import java.io.IOException;
import javax.bluetooth.*;
import javax.microedition.io.ServerSocketConnection;
import javax.microedition.io.SocketConnection;

class OBEXTCPServiceRecordImpl
    implements ServiceRecord
{

    private String host;
    private String port;

    OBEXTCPServiceRecordImpl(ServerSocketConnection serversocketconnection)
    {
        try
        {
            port = String.valueOf(serversocketconnection.getLocalPort());
            host = serversocketconnection.getLocalAddress();
            return;
        }
        catch (IOException ioexception)
        {
            host = null;
        }
    }

    OBEXTCPServiceRecordImpl(SocketConnection socketconnection)
    {
        try
        {
            port = String.valueOf(socketconnection.getPort());
            host = socketconnection.getAddress();
            return;
        }
        catch (IOException ioexception)
        {
            host = null;
        }
    }

    public int[] getAttributeIDs()
    {
        throw new IllegalArgumentException("Not a Bluetooth ServiceRecord");
    }

    public DataElement getAttributeValue(int i)
    {
        throw new IllegalArgumentException("Not a Bluetooth ServiceRecord");
    }

    public String getConnectionURL(int i, boolean flag)
    {
        if (host == null)
            return null;
        else
            return (new StringBuilder("tcpobex://")).append(host).append(":").append(port).toString();
    }

    public RemoteDevice getHostDevice()
    {
        throw new IllegalArgumentException("Not a Bluetooth ServiceRecord");
    }

    public boolean populateRecord(int ai[])
        throws IOException
    {
        throw new IllegalArgumentException("Not a Bluetooth ServiceRecord");
    }

    public boolean setAttributeValue(int i, DataElement dataelement)
    {
        throw new IllegalArgumentException("Not a Bluetooth ServiceRecord");
    }

    public void setDeviceServiceClasses(int i)
    {
        throw new IllegalArgumentException("Not a Bluetooth ServiceRecord");
    }
}
