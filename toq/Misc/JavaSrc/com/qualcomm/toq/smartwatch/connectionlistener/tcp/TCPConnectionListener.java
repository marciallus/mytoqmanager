// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.connectionlistener.tcp;

import android.content.SharedPreferences;
import com.qualcomm.toq.base.connectionlistener.IConnectionListener;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.utils.*;
import java.io.*;
import java.net.*;

public class TCPConnectionListener
    implements IConnectionListener
{
    private class ConnectThread extends Thread
    {

        private Socket mmSocket;
        final TCPConnectionListener this$0;

        public void cancel()
        {
            try
            {
                if (mmSocket != null)
                {
                    mmSocket.close();
                    mmSocket = null;
                }
                return;
            }
            catch (Exception exception)
            {
                Log.e("TCPConnectionListener", "close() of connect socket failed", exception);
            }
        }

        public void run()
        {
            Log.i("TCPConnectionListener", "BEGIN mConnectThread");
            setName("ConnectThread");
            try
            {
                InetAddress inetaddress = InetAddress.getByName(Constants.PHUB_TCP_INTERFACE);
                Log.i("TCPConnectionListener", (new StringBuilder()).append("Socket trying to connect on TCP/IP ADDRESS: ").append(Constants.PHUB_TCP_INTERFACE).append(" PORT: ").append(ProjectConfig.getProjectConfig().getTCPPort()).toString());
                InetSocketAddress inetsocketaddress = new InetSocketAddress(inetaddress, ProjectConfig.getProjectConfig().getTCPPort());
                mmSocket = new Socket();
                mmSocket.connect(inetsocketaddress, 7000);
                if (!mmSocket.isConnected())
                {
                    Log.e("TCPConnectionListener", "ConnectThread: mmSocket is not connected");
                    throw new IOException();
                }
            }
            catch (Exception exception)
            {
                Log.d("TCPConnectionListener", (new StringBuilder()).append("IOexception in:").append(exception).toString());
                exception.printStackTrace();
                cancel();
                connectionFailed();
                return;
            }
            Log.i("TCPConnectionListener", "Socket connected over TCP ");
            synchronized (TCPConnectionListener.this)
            {
                mConnectThread = null;
            }
            connectionSuccess(mmSocket);
            return;
            exception1;
            tcpconnectionlistener;
            JVM INSTR monitorexit ;
            throw exception1;
        }

        public ConnectThread()
        {
            this$0 = TCPConnectionListener.this;
            super();
        }
    }

    private class ConnectedThread extends Thread
    {

        private boolean isRunning;
        private InputStream mmInStream;
        private OutputStream mmOutStream;
        private Socket mmSocket;
        final TCPConnectionListener this$0;

        public void cancel()
        {
            try
            {
                closeInputStream();
                closeOutputStream();
                closeTCPSocket();
                return;
            }
            catch (Exception exception)
            {
                Log.e("TCPConnectionListener", (new StringBuilder()).append("unable to close() socket during connection failure").append(exception.toString()).toString());
                exception.printStackTrace();
                return;
            }
        }

        public void closeInputStream()
        {
            this;
            JVM INSTR monitorenter ;
            if (mmInStream != null)
            {
                mmInStream.close();
                mmInStream = null;
            }
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception1;
            exception1;
            exception1.printStackTrace();
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public void closeOutputStream()
        {
            this;
            JVM INSTR monitorenter ;
            if (mmOutStream != null)
            {
                mmOutStream.close();
                mmOutStream = null;
            }
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception1;
            exception1;
            exception1.printStackTrace();
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public void closeTCPSocket()
        {
            this;
            JVM INSTR monitorenter ;
            if (mmSocket != null)
            {
                mmSocket.close();
                mmSocket = null;
            }
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception1;
            exception1;
            exception1.printStackTrace();
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public void run()
        {
            Log.i("TCPConnectionListener", "BEGIN mConnectedThread");
_L1:
            byte abyte0[];
            byte abyte1[];
            byte abyte2[];
label0:
            {
                if (isRunning)
                {
                    Log.d("TCPConnectionListener", "Reading WD Device byte data");
                    abyte0 = new byte[6];
                    abyte1 = new byte[2];
                    abyte2 = new byte[2];
                    try
                    {
                        if (mmInStream == null)
                        {
                            Log.e("TCPConnectionListener", "ConnectedThread: run() 1: mmInStream is null");
                            throw new IOException("ConnectedThread: run() 1: mmInStream is null");
                        }
                        break label0;
                    }
                    catch (Exception exception)
                    {
                        Log.e("TCPConnectionListener", (new StringBuilder()).append("WD disconnected: ").append(exception.toString()).toString());
                        exception.printStackTrace();
                        connectionFailed();
                        if (mConnectedThread != null)
                            mConnectedThread = null;
                    }
                }
                return;
            }
            int i;
            mmInStream.read(abyte0);
            Log.d("TCPConnectionListener", (new StringBuilder()).append("WD src in listener:").append(abyte0[0]).toString());
            Log.d("TCPConnectionListener", (new StringBuilder()).append("WD dest in listener:").append(abyte0[1]).toString());
            abyte1[0] = abyte0[2];
            abyte1[1] = abyte0[3];
            i = ByteUtils.convertBytestoNumber(abyte1);
            Log.d("TCPConnectionListener", (new StringBuilder()).append("WD sent payload length: ").append(i).toString());
            abyte2[0] = abyte0[4];
            abyte2[1] = abyte0[5];
            int j = ByteUtils.convertBytestoNumber(abyte2);
            Log.d("TCPConnectionListener", (new StringBuilder()).append("WD transaction ID: ").append(j).toString());
            if (i == 0)
                break MISSING_BLOCK_LABEL_356;
            byte abyte3[] = new byte[i];
            if (mmInStream == null)
            {
                Log.e("TCPConnectionListener", "ConnectedThread: run() 2: mmInStream is null");
                throw new IOException("ConnectedThread: run() 2: mmInStream is null");
            }
            mmInStream.read(abyte3);
            byte abyte4[] = new byte[i + abyte0.length];
            System.arraycopy(abyte0, 0, abyte4, 0, abyte0.length);
            System.arraycopy(abyte3, 0, abyte4, abyte0.length, abyte3.length);
            read(abyte4);
              goto _L1
            Log.e("TCPConnectionListener", "ConnectedThread: payload length is 0");
              goto _L1
        }

        public void stopConnectedThread()
        {
            isRunning = false;
        }

        public void write(byte abyte0[])
        {
            if (mmOutStream != null)
                mmOutStream.write(abyte0, 0, abyte0.length);
_L1:
            return;
            Exception exception;
            exception;
            Log.e("TCPConnectionListener", "IO during write", exception);
            connectionFailed();
            if (mConnectedThread != null)
            {
                mConnectedThread = null;
                return;
            }
              goto _L1
        }

        public ConnectedThread(Socket socket)
        {
            this$0 = TCPConnectionListener.this;
            super();
            mmInStream = null;
            mmOutStream = null;
            isRunning = true;
            Log.d("TCPConnectionListener", "create ConnectedThread");
            mmSocket = socket;
            if (socket != null)
            {
                try
                {
                    mmInStream = mmSocket.getInputStream();
                    mmOutStream = mmSocket.getOutputStream();
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
                break MISSING_BLOCK_LABEL_78;
            }
            throw new IOException("ConnectedThread(): socket is null");
            cancel();
            connectionFailed();
            return;
        }
    }


    private static final String TAG = "TCPConnectionListener";
    private IConnectionManager connectionManager;
    private IEndPoint endPoint;
    private ConnectThread mConnectThread;
    private ConnectedThread mConnectedThread;
    private int mState;

    public TCPConnectionListener(IEndPoint iendpoint, IConnectionManager iconnectionmanager)
    {
        Log.d("TCPConnectionListener", "TCPConnectionListener created");
        connectionManager = iconnectionmanager;
        endPoint = iendpoint;
        mState = 0;
    }

    private void connectionFailed()
    {
        Log.e("TCPConnectionListener", "Connection Failed() called");
        if (mConnectThread != null)
        {
            mConnectThread.cancel();
            mConnectThread = null;
        }
        if (mConnectedThread != null)
        {
            mConnectedThread.stopConnectedThread();
            mConnectedThread.cancel();
            mConnectedThread = null;
        }
        setState(4);
    }

    private void connectionSuccess(Socket socket)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("TCPConnectionListener", "connectionSuccess() called");
        if (mConnectThread != null)
        {
            mConnectThread.cancel();
            mConnectThread = null;
        }
        if (mConnectedThread != null)
        {
            mConnectedThread.stopConnectedThread();
            mConnectedThread.cancel();
            mConnectedThread = null;
        }
        setState(3);
        mConnectedThread = new ConnectedThread(socket);
        mConnectedThread.start();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void connect(String s)
    {
        Log.d("TCPConnectionListener", (new StringBuilder()).append("connect() mState = ").append(mState).append(" listener object:").append(this).toString());
        if (mState != 3 && mState != 2)
        {
            if (mConnectThread != null)
            {
                mConnectThread.cancel();
                mConnectThread = null;
            }
            if (mConnectedThread != null)
            {
                mConnectedThread.stopConnectedThread();
                mConnectedThread.cancel();
                mConnectedThread = null;
            }
            setState(2);
            mConnectThread = new ConnectThread();
            mConnectThread.start();
        }
    }

    public void disconnect()
    {
        if (mConnectedThread != null)
            mConnectedThread.cancel();
    }

    public boolean isWDDeviceAssociated(String s)
    {
        return !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") || ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", "").equalsIgnoreCase(s);
    }

    public void read(byte abyte0[])
    {
        connectionManager.receiveData(abyte0, endPoint);
    }

    protected void setState(int i)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("TCPConnectionListener", (new StringBuilder()).append("setState() ").append(mState).append(" -> ").append(i).append(" listener object:").append(this).toString());
        mState = i;
        if (endPoint != null)
            connectionManager.connectionStateChange(endPoint, i);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void startSPPServer()
    {
    }

    public void stopConnectionListener()
    {
        Log.d("TCPConnectionListener", "stopConnectionListener()");
        if (mConnectThread != null)
            mConnectThread.interrupt();
        if (mConnectedThread != null)
            mConnectedThread.interrupt();
        this;
        JVM INSTR monitorenter ;
        setState(0);
        if (mConnectThread != null)
        {
            mConnectThread.cancel();
            mConnectThread = null;
        }
        if (mConnectedThread != null)
        {
            mConnectedThread.stopConnectedThread();
            mConnectedThread.cancel();
            mConnectedThread = null;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void write(byte abyte0[])
    {
        this;
        JVM INSTR monitorenter ;
        if (mState == 3)
            break MISSING_BLOCK_LABEL_13;
        this;
        JVM INSTR monitorexit ;
        return;
        ConnectedThread connectedthread = mConnectedThread;
        this;
        JVM INSTR monitorexit ;
        if (connectedthread != null)
        {
            connectedthread.write(abyte0);
            Log.d("TCPConnectionListener", (new StringBuilder()).append("write of byte data done: size = ").append(abyte0.length).toString());
        }
        try
        {
            Thread.sleep(5L);
            return;
        }
        catch (Exception exception1)
        {
            Log.e("TCPConnectionListener", (new StringBuilder()).append("Exception occured during writing data ").append(exception1).toString());
        }
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void writeFile(String s, String s1)
    {
    }



/*
    static ConnectThread access$102(TCPConnectionListener tcpconnectionlistener, ConnectThread connectthread)
    {
        tcpconnectionlistener.mConnectThread = connectthread;
        return connectthread;
    }

*/




/*
    static ConnectedThread access$302(TCPConnectionListener tcpconnectionlistener, ConnectedThread connectedthread)
    {
        tcpconnectionlistener.mConnectedThread = connectedthread;
        return connectedthread;
    }

*/
}
