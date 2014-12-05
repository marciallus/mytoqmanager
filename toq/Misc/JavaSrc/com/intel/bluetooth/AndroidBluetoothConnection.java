// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import java.io.*;
import java.util.HashMap;
import java.util.Map;

public class AndroidBluetoothConnection
{

    private static Map connectionsMap = new HashMap();
    private static volatile long nextHandle = 1L;
    private long handle;
    private InputStream inputStream;
    private OutputStream outputStream;
    private BluetoothServerSocket serverSocket;
    private BluetoothSocket socket;

    private AndroidBluetoothConnection(long l, BluetoothServerSocket bluetoothserversocket)
    {
        handle = l;
        serverSocket = bluetoothserversocket;
    }

    private AndroidBluetoothConnection(long l, BluetoothSocket bluetoothsocket, boolean flag)
        throws IOException
    {
        handle = l;
        socket = bluetoothsocket;
        if (!flag)
            bluetoothsocket.connect();
        inputStream = bluetoothsocket.getInputStream();
        outputStream = bluetoothsocket.getOutputStream();
    }

    public static AndroidBluetoothConnection createConnection(BluetoothSocket bluetoothsocket, boolean flag)
        throws IOException
    {
        com/intel/bluetooth/AndroidBluetoothConnection;
        JVM INSTR monitorenter ;
        AndroidBluetoothConnection androidbluetoothconnection;
        androidbluetoothconnection = new AndroidBluetoothConnection(nextHandle, bluetoothsocket, flag);
        connectionsMap.put(Long.valueOf(nextHandle), androidbluetoothconnection);
        nextHandle = 1L + nextHandle;
        com/intel/bluetooth/AndroidBluetoothConnection;
        JVM INSTR monitorexit ;
        return androidbluetoothconnection;
        Exception exception;
        exception;
        throw exception;
    }

    public static AndroidBluetoothConnection createServerConnection(BluetoothServerSocket bluetoothserversocket)
    {
        com/intel/bluetooth/AndroidBluetoothConnection;
        JVM INSTR monitorenter ;
        AndroidBluetoothConnection androidbluetoothconnection;
        androidbluetoothconnection = new AndroidBluetoothConnection(nextHandle, bluetoothserversocket);
        connectionsMap.put(Long.valueOf(nextHandle), androidbluetoothconnection);
        nextHandle = 1L + nextHandle;
        com/intel/bluetooth/AndroidBluetoothConnection;
        JVM INSTR monitorexit ;
        return androidbluetoothconnection;
        Exception exception;
        exception;
        throw exception;
    }

    public static AndroidBluetoothConnection getBluetoothConnection(long l)
    {
        return (AndroidBluetoothConnection)connectionsMap.get(Long.valueOf(l));
    }

    public void close()
        throws IOException
    {
        if (outputStream != null)
            outputStream.close();
        if (inputStream != null)
            inputStream.close();
        if (socket != null)
            socket.close();
        if (serverSocket != null)
            serverSocket.close();
        connectionsMap.remove(Long.valueOf(handle));
    }

    public long getHandle()
    {
        return handle;
    }

    public InputStream getInputStream()
    {
        return inputStream;
    }

    public OutputStream getOutputStream()
    {
        return outputStream;
    }

    public BluetoothServerSocket getServerSocket()
    {
        return serverSocket;
    }

    public BluetoothSocket getSocket()
    {
        return socket;
    }

}
