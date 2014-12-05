// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.base.connectionlistener.bluetooth;

import android.bluetooth.*;
import android.content.Context;
import android.content.SharedPreferences;
import android.telephony.TelephonyManager;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.connectionlistener.IConnectionListener;
import com.qualcomm.toq.base.connectionmanager.IConnectionManager;
import com.qualcomm.toq.base.endpoint.IEndPoint;
import com.qualcomm.toq.base.utils.*;
import java.io.*;
import java.util.*;

public class BTConnectionListener
    implements IConnectionListener
{
    private class AcceptThread extends Thread
    {

        private BluetoothServerSocket mmServerSocket;
        private BluetoothSocket serverSocket;
        private volatile boolean stop;
        final BTConnectionListener this$0;

        private void closeSocket()
        {
            this;
            JVM INSTR monitorenter ;
            if (serverSocket != null)
            {
                Log.d("BTConnectionListener", "serverSocket: close() ");
                serverSocket.close();
                serverSocket = null;
            }
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception1;
            exception1;
            Log.e("BTConnectionListener", (new StringBuilder()).append("close() of serverSocket failed").append(exception1.toString()).toString());
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public void cancel()
        {
            Log.d("BTConnectionListener", "AcceptThread: cancel() ");
            closeSocket();
            closeServerSocket();
        }

        public void closeServerSocket()
        {
            this;
            JVM INSTR monitorenter ;
            if (mmServerSocket != null)
            {
                Log.d("BTConnectionListener", "mmServerSocket: close() ");
                mmServerSocket.close();
                mmServerSocket = null;
            }
_L1:
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception1;
            exception1;
            Log.e("BTConnectionListener", (new StringBuilder()).append("close() of mmServerSocket failed ").append(exception1.toString()).toString());
            exception1.printStackTrace();
              goto _L1
            Exception exception;
            exception;
            throw exception;
        }

        public void run()
        {
            Log.d("BTConnectionListener", (new StringBuilder()).append("AcceptThread: endpoint type = ").append(endPoint.getType()).toString());
            setName("AcceptThread");
_L14:
            if (!BluetoothAdapter.getDefaultAdapter().isEnabled() || mSPPState != 1 || stop)
                break MISSING_BLOCK_LABEL_616;
            Log.d("BTConnectionListener", (new StringBuilder()).append("Inside AcceptThread of device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPoint.getType()]).toString());
            if (mmServerSocket != null) goto _L2; else goto _L1
_L1:
            if (endPoint.getType() != 0) goto _L4; else goto _L3
_L3:
            Log.printUsageLog("BTConnectionListener", "Listening to  Socket connection for WD");
            mmServerSocket = BluetoothAdapter.getDefaultAdapter().listenUsingRfcommWithServiceRecord("PHubCommServer", BTConnectionListener.SERVER_WD_UUID);
_L2:
            if (mmServerSocket != null)
            {
                Utils.updateStatus("BTConnectionListener", "EPMessage:Waiting for incoming connection...", endPoint.getType(), 1, (byte)7);
                serverSocket = mmServerSocket.accept();
                Log.printUsageLog("BTConnectionListener", "A succssful connection estabished through Server Socket");
                Utils.updateStatus("BTConnectionListener", "EPMessage:Accepted incoming connection...", endPoint.getType(), 1, (byte)7);
            }
            Log.d("BTConnectionListener", "AcceptThread: called: mmServerSocket.accept() completed");
_L11:
            if (serverSocket == null) goto _L6; else goto _L5
_L5:
            BTConnectionListener btconnectionlistener = BTConnectionListener.this;
            btconnectionlistener;
            JVM INSTR monitorenter ;
            mSPPState;
            JVM INSTR tableswitch 1 1: default 268
        //                       1 474;
               goto _L7 _L8
_L7:
            Log.e("BTConnectionListener", "closing SPP server socket as already in STATE_CONNECTED");
            cancel();
_L6:
            Log.d("BTConnectionListener", (new StringBuilder()).append("AcceptThread: End of while loop of device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPoint.getType()]).toString());
            continue; /* Loop/switch isn't completed */
_L4:
            if (endPoint.getType() != 1) goto _L10; else goto _L9
_L9:
            Log.printUsageLog("BTConnectionListener", "Listening to  Socket connection for Left EP");
            mmServerSocket = BluetoothAdapter.getDefaultAdapter().listenUsingInsecureRfcommWithServiceRecord("EPLCommServer", BTConnectionListener.SERVER_EP_L_UUID);
              goto _L2
            Exception exception;
            exception;
            Log.e("BTConnectionListener", "AcceptThread: accept() failed", exception);
            Log.printUsageLog("BTConnectionListener", (new StringBuilder()).append("AcceptThread: accept() failed ").append(exception.toString()).toString());
            Utils.updateStatus("BTConnectionListener", "EPMessage:Exited from incoming connection...", endPoint.getType(), 1, (byte)7);
            exception.printStackTrace();
            cancel();
              goto _L11
_L10:
            if (endPoint.getType() != 2) goto _L2; else goto _L12
_L12:
            Log.printUsageLog("BTConnectionListener", "Listening to  Socket connection for Right EP");
            mmServerSocket = BluetoothAdapter.getDefaultAdapter().listenUsingInsecureRfcommWithServiceRecord("EPRCommServer", BTConnectionListener.SERVER_EP_R_UUID);
              goto _L2
_L8:
            Log.d("BTConnectionListener", (new StringBuilder()).append("AcceptThread: SPP Server accepted the incoming connection... Incoming BT address: ").append(serverSocket.getRemoteDevice().getAddress()).append(" Associated Device Adress: ").append(endPoint.getAddress()).toString());
            if (!serverSocket.getRemoteDevice().getAddress().equalsIgnoreCase(endPoint.getAddress()))
                break MISSING_BLOCK_LABEL_602;
            Log.d("BTConnectionListener", "AcceptThread: Incoming connection Success");
            Log.printUsageLog("BTConnectionListener", "AcceptThread: Incoming connection Success");
            Log.d("BTConnectionListener", "Initiate ConnectedThread by SPP Server");
            connectionSuccess(serverSocket, serverSocket.getRemoteDevice());
              goto _L6
            Exception exception1;
            exception1;
            btconnectionlistener;
            JVM INSTR monitorexit ;
            throw exception1;
            Log.e("BTConnectionListener", "AcceptThread: SPP server in connected state, but address didn't match!!!");
            cancel();
              goto _L6
            if (mSPPState != 3)
            {
                Log.e("BTConnectionListener", (new StringBuilder()).append("End of AcceptThread and state = ").append(mSPPState).toString());
                cancel();
            }
            return;
            if (true) goto _L14; else goto _L13
_L13:
        }

        public void stopAcceptThread()
        {
            stop = true;
        }

        public AcceptThread()
        {
            this$0 = BTConnectionListener.this;
            super();
            mmServerSocket = null;
            serverSocket = null;
            stop = false;
            Log.d("BTConnectionListener", (new StringBuilder()).append("Called AcceptThread constructor of device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPoint.getType()]).toString());
        }
    }

    private class ConnectThread extends Thread
    {

        private final BluetoothDevice mmDevice;
        private BluetoothSocket mmSocket;
        final BTConnectionListener this$0;

        public void cancel()
        {
            try
            {
                Log.d("BTConnectionListener", "ConnectThread cancel() called");
                if (mmSocket != null)
                    mmSocket.close();
                mmSocket = null;
                return;
            }
            catch (Exception exception)
            {
                Log.e("BTConnectionListener", "close() of connect socket failed", exception);
            }
        }

        public void run()
        {
            Log.i("BTConnectionListener", "BEGIN mConnectThread");
            setName("ConnectThread");
            Log.d("BTConnectionListener", (new StringBuilder()).append("End Point Type while Connect = ").append(endPoint.getType()).toString());
            if (endPoint.getType() != 0) goto _L2; else goto _L1
_L1:
            boolean flag;
            flag = isWDDeviceAssociated(mmDevice.getAddress());
            mmSocket = mmDevice.createRfcommSocketToServiceRecord(BTConnectionListener.CLIENT_WD_UUID);
_L4:
            TelephonyManager telephonymanager;
            telephonymanager = (TelephonyManager)ToqApplication.getAppContext().getSystemService("phone");
            Log.d("BTConnectionListener", (new StringBuilder()).append("Call state value = ").append(telephonymanager.getCallState()).toString());
            if (!flag)
                break MISSING_BLOCK_LABEL_153;
            if (telephonymanager.getCallState() != 2 && mmSocket != null)
                break MISSING_BLOCK_LABEL_185;
            if (endPoint.getType() != 1 && endPoint.getType() != 2)
                break MISSING_BLOCK_LABEL_462;
            Log.d("BTConnectionListener", "BT cancelDiscovery() called");
            BluetoothAdapter.getDefaultAdapter().cancelDiscovery();
            Log.d("BTConnectionListener", "BT Socket trying to connect");
            Log.printUsageLog("BTConnectionListener", "BT Socket Trying to connect");
            mmSocket.connect();
            Log.d("BTConnectionListener", (new StringBuilder()).append("BT Socket connected = ").append(BTConnectionListener.this).toString());
            Log.printUsageLog("BTConnectionListener", "BT Socket connected ");
            synchronized (BTConnectionListener.this)
            {
                mConnectThread = null;
            }
            connectionSuccess(mmSocket, mmDevice);
            return;
_L2:
            Exception exception;
label0:
            {
                if (endPoint.getType() != 1)
                    break label0;
                flag = isEPLeftDeviceAssociated(mmDevice.getAddress());
                mmSocket = mmDevice.createInsecureRfcommSocketToServiceRecord(BTConnectionListener.CLIENT_EP_L_UUID);
            }
            if (true) goto _L4; else goto _L3
_L3:
            int i;
            try
            {
                i = endPoint.getType();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                Log.e("BTConnectionListener", (new StringBuilder()).append("BTSocket Connect Failed: ").append(exception.toString()).toString());
                Log.printUsageLog("BTConnectionListener", (new StringBuilder()).append("BTSocket Connect Failed: ").append(exception.toString()).toString());
                exception.printStackTrace();
                cancel();
                connectionFailed();
                return;
            }
            flag = false;
            if (i != 2) goto _L4; else goto _L5
_L5:
            flag = isEPRightDeviceAssociated(mmDevice.getAddress());
            mmSocket = mmDevice.createInsecureRfcommSocketToServiceRecord(BTConnectionListener.CLIENT_EP_R_UUID);
              goto _L4
            Log.e("BTConnectionListener", "Not Associated: Device to connect is different from the associated Device or an Active call can be present");
            cancel();
            if (!isStopListenerCalled)
            {
                connectionFailed();
                return;
            }
            Log.e("BTConnectionListener", "ConnectThread-- stopConnection already called, no need to set the state to failed. ");
            return;
            exception1;
            btconnectionlistener;
            JVM INSTR monitorexit ;
            throw exception1;
        }

        public ConnectThread(BluetoothDevice bluetoothdevice)
        {
            this$0 = BTConnectionListener.this;
            super();
            mmSocket = null;
            mmDevice = bluetoothdevice;
        }
    }

    private class ConnectedThread extends Thread
    {

        private InputStream mmInStream;
        private OutputStream mmOutStream;
        private BluetoothSocket mmSocket;
        private volatile boolean stop;
        final BTConnectionListener this$0;

        public void cancel()
        {
            try
            {
                Log.e("BTConnectionListener", "ConnectedThread cancel() called!");
                closeInputStream();
                closeOutputStream();
                closeBTSocket();
                return;
            }
            catch (Exception exception)
            {
                Log.e("BTConnectionListener", (new StringBuilder()).append("unable to close() socket during connection failure").append(exception.toString()).toString());
                exception.printStackTrace();
                return;
            }
        }

        public void closeBTSocket()
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

        public void run()
        {
            Log.i("BTConnectionListener", "BEGIN mConnectedThread");
            mResetConnectedThread = new ResetConnectedThread();
            BTConnectionListener.isOPPSleepRequired = true;
            Log.d("BTConnectionListener", (new StringBuilder()).append("End Point Type = ").append(endPoint.getType()).toString());
_L20:
            if (stop) goto _L2; else goto _L1
_L1:
            if (endPoint.getType() != 0) goto _L4; else goto _L3
_L3:
            byte abyte10[];
            byte abyte11[];
            byte abyte12[];
            int i3;
            Log.d("BTConnectionListener", "Reading WD Device byte data");
            abyte10 = new byte[6];
            abyte11 = new byte[2];
            abyte12 = new byte[2];
            i3 = 0;
_L13:
            if (i3 >= abyte10.length) goto _L6; else goto _L5
_L5:
            int l5 = mmInStream.read(abyte10, i3, abyte10.length - i3);
            if (l5 >= 0) goto _L7; else goto _L6
_L6:
            if (i3 != abyte10.length)
            {
                Log.e("BTConnectionListener", (new StringBuilder()).append("Connected Thread first 6 bytes read failed!! bytes read = ").append(i3).append(" bytes").toString());
                throw new IOException("ConnectedThread failed to read first 6 bytes");
            }
              goto _L8
            Exception exception3;
            exception3;
            Log.printUsageLog("BTConnectionListener", (new StringBuilder()).append("BT Socket disconnected ").append(exception3.toString()).toString());
            Log.e("BTConnectionListener", (new StringBuilder()).append("WD disconnected: ").append(exception3.toString()).toString());
            exception3.printStackTrace();
            BTConnectionListener.isOPPSleepRequired = false;
_L2:
            int k3;
            boolean flag;
            int j4;
            boolean flag1;
            Log.printUsageLog("BTConnectionListener", "While loop exited BT Socket disconnected ");
            Log.e("BTConnectionListener", "While loop exited WD disconnected: ");
            byte abyte0[];
            byte abyte1[];
            byte abyte2[];
            int i;
            Exception exception1;
            int j;
            int k;
            byte abyte3[];
            int l;
            byte abyte4[];
            int i1;
            int j1;
            byte abyte5[];
            byte abyte6[];
            byte abyte7[];
            int k1;
            Exception exception2;
            int l1;
            int i2;
            byte abyte8[];
            int j2;
            byte abyte9[];
            int k2;
            int l2;
            int ai[];
            int j3;
            int l3;
            int ai1[];
            int i4;
            int k4;
            int l4;
            int i5;
            byte abyte13[];
            byte abyte14[];
            try
            {
                closeInputStream();
                closeOutputStream();
                closeBTSocket();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                Log.e("BTConnectionListener", (new StringBuilder()).append("ConnectedThread with Exception: ").append(exception).toString());
            }
            Log.d("BTConnectionListener", (new StringBuilder()).append("mSPPState = ").append(mSPPState).toString());
            if (mSPPState == 0) goto _L10; else goto _L9
_L9:
            if (isStopListenerCalled) goto _L12; else goto _L11
_L11:
            connectionFailed();
_L10:
            return;
_L7:
            i3 += l5;
              goto _L13
_L8:
            if (mResetConnectedThread != null)
                mResetConnectedThread.setContinueFlagEnabled(true);
            Log.d("BTConnectionListener", (new StringBuilder()).append("WD src in listener:").append(abyte10[0]).toString());
            Log.d("BTConnectionListener", (new StringBuilder()).append("WD dest in listener:").append(abyte10[1]).toString());
            if (abyte10[0] < 0 || abyte10[1] < 0)
                throw new IOException("src and dest value read are negative");
            ai = Constants.SRC_ADDRESS;
            j3 = ai.length;
            k3 = 0;
_L36:
            flag = false;
            if (k3 >= j3) goto _L15; else goto _L14
_L14:
            l3 = ai[k3];
            if (abyte10[0] != l3) goto _L17; else goto _L16
_L16:
            flag = true;
_L15:
            ai1 = Constants.DEST_ADDRESS;
            i4 = ai1.length;
            j4 = 0;
_L37:
            flag1 = false;
            if (j4 >= i4) goto _L19; else goto _L18
_L18:
            k4 = ai1[j4];
            if (abyte10[1] != k4)
                break MISSING_BLOCK_LABEL_1676;
            flag1 = true;
              goto _L19
_L34:
            throw new IOException("src and dest value read are invalid");
_L35:
            abyte11[0] = abyte10[2];
            abyte11[1] = abyte10[3];
            l4 = ByteUtils.convertBytestoNumber(abyte11);
            Log.d("BTConnectionListener", (new StringBuilder()).append("WD sent payload length: ").append(l4).toString());
            abyte12[0] = abyte10[4];
            abyte12[1] = abyte10[5];
            i5 = ByteUtils.convertBytestoNumber(abyte12);
            Log.d("BTConnectionListener", (new StringBuilder()).append("WD transaction ID: ").append(i5).toString());
            abyte13 = new byte[l4];
            if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
                startTimer();
            break MISSING_BLOCK_LABEL_1682;
            j5 = 0;
            int j5;
            int k5;
            for (; j5 >= l4; j5 += k5)
                break MISSING_BLOCK_LABEL_712;

            k5 = mmInStream.read(abyte13, j5, l4 - j5);
            if (k5 >= 0)
                break MISSING_BLOCK_LABEL_1688;
            Log.d("BTConnectionListener", (new StringBuilder()).append("Payload bytes read: ").append(j5).append(" bytes").toString());
            if (ProjectConfig.getProjectConfig() != null && !ProjectConfig.getProjectConfig().getAPKVariant().equalsIgnoreCase("release"))
            {
                Log.d("BTConnectionListener", "stopTimer() called: isTimerRequired set to false");
                stopTimer();
            }
            if (j5 == l4)
                break MISSING_BLOCK_LABEL_846;
            Log.e("BTConnectionListener", (new StringBuilder()).append("Connected Thread payload read failed!! bytes read = ").append(j5).append(" bytes").toString());
            throw new IOException((new StringBuilder()).append("ConnectedThread failed to read payload ").append(l4).append(" bytes").toString());
            abyte14 = new byte[l4 + abyte10.length];
            System.arraycopy(abyte10, 0, abyte14, 0, abyte10.length);
            System.arraycopy(abyte13, 0, abyte14, abyte10.length, abyte13.length);
            read(abyte14);
              goto _L20
_L4:
            if (endPoint.getType() != 1) goto _L22; else goto _L21
_L21:
            abyte5 = new byte[6];
            abyte6 = new byte[2];
            abyte7 = new byte[2];
            k1 = 0;
_L26:
            if (k1 >= abyte5.length) goto _L24; else goto _L23
_L23:
            l2 = mmInStream.read(abyte5, k1, abyte5.length - k1);
            if (l2 >= 0) goto _L25; else goto _L24
_L24:
            if (mResetConnectedThread != null)
                mResetConnectedThread.setContinueFlagEnabled(true);
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-L src in listener:").append(abyte5[0]).toString());
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-L dest in listener:").append(abyte5[1]).toString());
            abyte6[0] = abyte5[2];
            abyte6[1] = abyte5[3];
            l1 = ByteUtils.convertBytestoNumber(abyte6);
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-L sent payload length: ").append(l1).toString());
            abyte7[0] = abyte5[4];
            abyte7[1] = abyte5[5];
            i2 = ByteUtils.convertBytestoNumber(abyte7);
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-L transaction ID: ").append(i2).toString());
            abyte8 = new byte[l1];
            j2 = 0;
_L27:
            if (j2 >= abyte8.length)
                break MISSING_BLOCK_LABEL_1174;
            k2 = mmInStream.read(abyte8, j2, abyte8.length - j2);
            if (k2 >= 0)
                break MISSING_BLOCK_LABEL_1250;
            abyte9 = new byte[l1 + abyte5.length];
            System.arraycopy(abyte5, 0, abyte9, 0, abyte5.length);
            System.arraycopy(abyte8, 0, abyte9, abyte5.length, abyte8.length);
            read(abyte9);
              goto _L20
            exception2;
            Log.e("BTConnectionListener", "EP-L disconnected");
            exception2.printStackTrace();
              goto _L2
_L25:
            k1 += l2;
              goto _L26
            j2 += k2;
              goto _L27
_L22:
            if (endPoint.getType() != 2) goto _L20; else goto _L28
_L28:
            abyte0 = new byte[6];
            abyte1 = new byte[2];
            abyte2 = new byte[2];
            i = 0;
_L32:
            if (i >= abyte0.length) goto _L30; else goto _L29
_L29:
            j1 = mmInStream.read(abyte0, i, abyte0.length - i);
            if (j1 >= 0) goto _L31; else goto _L30
_L30:
            if (mResetConnectedThread != null)
                mResetConnectedThread.setContinueFlagEnabled(true);
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-R src in listener:").append(abyte0[0]).toString());
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-R dest in listener:").append(abyte0[1]).toString());
            abyte1[0] = abyte0[2];
            abyte1[1] = abyte0[3];
            j = ByteUtils.convertBytestoNumber(abyte1);
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-R sent payload length: ").append(j).toString());
            abyte2[0] = abyte0[4];
            abyte2[1] = abyte0[5];
            k = ByteUtils.convertBytestoNumber(abyte2);
            Log.d("BTConnectionListener", (new StringBuilder()).append("EP-R transaction ID: ").append(k).toString());
            abyte3 = new byte[j];
            l = 0;
_L33:
            if (l >= abyte3.length)
                break MISSING_BLOCK_LABEL_1533;
            i1 = mmInStream.read(abyte3, l, abyte3.length - l);
            if (i1 >= 0)
                break MISSING_BLOCK_LABEL_1605;
            abyte4 = new byte[j + abyte0.length];
            System.arraycopy(abyte0, 0, abyte4, 0, abyte0.length);
            System.arraycopy(abyte3, 0, abyte4, abyte0.length, abyte3.length);
            read(abyte4);
              goto _L20
            exception1;
            Log.e("BTConnectionListener", "EP-R disconnected");
            exception1.printStackTrace();
              goto _L2
_L31:
            i += j1;
              goto _L32
            l += i1;
              goto _L33
_L12:
            Log.e("BTConnectionListener", " ConnectedThread--stopConnection already called, no need to set the state to failed. ");
            return;
_L19:
            if (flag && flag1) goto _L35; else goto _L34
_L17:
            k3++;
              goto _L36
            j4++;
              goto _L37
        }

        public void stopConnectedThread()
        {
            stop = true;
        }

        public void write(byte abyte0[])
        {
            if (abyte0 != null)
                try
                {
                    if (abyte0.length > 0 && mmOutStream != null)
                    {
                        mmOutStream.write(abyte0, 0, abyte0.length);
                        return;
                    }
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                    Log.e("BTConnectionListener", (new StringBuilder()).append("Exception during write: ").append(exception.toString()).toString());
                    return;
                }
            Log.e("BTConnectionListener", "Failed to Write buffer byte array data in mmOutStream due to error");
            return;
        }

        public ConnectedThread(BluetoothDevice bluetoothdevice, BluetoothSocket bluetoothsocket)
        {
            this$0 = BTConnectionListener.this;
            super();
            mmSocket = null;
            mmInStream = null;
            mmOutStream = null;
            stop = false;
            Log.d("BTConnectionListener", "create ConnectedThread");
            mmSocket = bluetoothsocket;
            try
            {
                mmInStream = bluetoothsocket.getInputStream();
                mmOutStream = bluetoothsocket.getOutputStream();
                return;
            }
            catch (IOException ioexception)
            {
                ioexception.printStackTrace();
                Log.e("BTConnectionListener", "ConnectedThread with IO Exception: e");
                return;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            Log.e("BTConnectionListener", "Exception in ConnectedThread, temp sockets not created");
        }
    }

    private class ResetConnectedThread extends Thread
    {

        private static final int RESET_DELAY = 10000;
        private boolean continueFlagEnabled;
        final BTConnectionListener this$0;

        public void run()
        {
            super.run();
            Log.d("BTConnectionListener", "ResetConnectedThread run() sleep for 10 seconds");
            Log.d("BTConnectionListener", "[sleep] 10 seconds RESET_DELAY");
            Thread.sleep(10000L);
            Log.d("BTConnectionListener", (new StringBuilder()).append("Post 10 seonds delay continueFlagEnabled = ").append(continueFlagEnabled).toString());
            if (!continueFlagEnabled && mConnectedThread != null)
                synchronized (mConnectedThread)
                {
                    Log.e("BTConnectionListener", "ResetConnectedThread stop the ConnectedThread");
                    Log.printUsageLog("BTConnectionListener", "Didn't receive Aloha Message: ResetConnectedThread stop the ConnectedThread");
                    mConnectedThread.stopConnectedThread();
                    mConnectedThread.cancel();
                    mConnectedThread = null;
                }
_L2:
            mResetConnectedThread = null;
            return;
            exception1;
            connectedthread;
            JVM INSTR monitorexit ;
            try
            {
                throw exception1;
            }
            catch (Exception exception)
            {
                Log.e("BTConnectionListener", (new StringBuilder()).append("Exception in ResetConnectedThread: ").append(exception.toString()).toString());
            }
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void setContinueFlagEnabled(boolean flag)
        {
            continueFlagEnabled = flag;
            Log.d("BTConnectionListener", (new StringBuilder()).append("setContinueFlagEnabled called: ").append(flag).toString());
        }

        public ResetConnectedThread()
        {
            this$0 = BTConnectionListener.this;
            super();
            continueFlagEnabled = false;
            Log.d("BTConnectionListener", "ResetConnectedThread Constructur");
            start();
        }
    }


    protected static final int BT_SPP_CONNECT_ATTEMPTS = 3;
    private static final UUID CLIENT_EP_L_UUID = UUID.fromString("00000002-476D-42C4-BD11-9D377C45694C");
    private static final UUID CLIENT_EP_R_UUID = UUID.fromString("00000003-476D-42C4-BD11-9D377C45694C");
    private static final UUID CLIENT_WD_UUID = UUID.fromString("00000001-476D-42C4-BD11-9D377C45694C");
    private static final UUID GENERIC_UUID = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
    private static final UUID SERVER_EP_L_UUID = UUID.fromString("00000002-476D-42C4-BD11-9D377C45694F");
    private static final UUID SERVER_EP_R_UUID = UUID.fromString("00000003-476D-42C4-BD11-9D377C45694F");
    private static final UUID SERVER_WD_UUID = UUID.fromString("00000001-476D-42C4-BD11-9D377C45694F");
    private static final String TAG = "BTConnectionListener";
    public static boolean isOPPSleepRequired = true;
    private static boolean isTimerRequired = true;
    private static Timer mTimer = null;
    final int READ_DELAY = 15000;
    protected int btConnectIteration;
    private IConnectionManager connectionManager;
    protected IEndPoint endPoint;
    private boolean isStopListenerCalled;
    private AcceptThread mAcceptThread;
    private ConnectThread mConnectThread;
    private ConnectedThread mConnectedThread;
    private ResetConnectedThread mResetConnectedThread;
    private volatile int mSPPState;

    public BTConnectionListener(IEndPoint iendpoint, IConnectionManager iconnectionmanager)
    {
        isStopListenerCalled = false;
        Log.i("BTConnectionListener", (new StringBuilder()).append("BTConnectionListener listener created = ").append(this).toString());
        connectionManager = iconnectionmanager;
        endPoint = iendpoint;
        mSPPState = 0;
    }

    private void startTimer()
    {
        stopTimer();
        if (mTimer == null)
        {
            mTimer = new Timer();
            isTimerRequired = true;
            Log.d("BTConnectionListener", "startTimer() called: Timer to scheduled for 15 seconds delay");
        }
        mTimer.schedule(new TimerTask() {

            final BTConnectionListener this$0;

            public void run()
            {
                if (BTConnectionListener.isTimerRequired)
                {
                    stopTimer();
                    if (mConnectedThread != null)
                    {
                        synchronized (mConnectedThread)
                        {
                            Log.e("BTConnectionListener", "startTimer() run() called: mTimer to stop the ConnectedThread");
                            Log.printUsageLog("BTConnectionListener", "Didn't receive payload, mTimer to stop the ConnectedThread");
                            mConnectedThread.stopConnectedThread();
                            mConnectedThread.cancel();
                            mConnectedThread = null;
                        }
                        return;
                    }
                }
                break MISSING_BLOCK_LABEL_84;
                exception;
                connectedthread;
                JVM INSTR monitorexit ;
                throw exception;
            }

            
            {
                this$0 = BTConnectionListener.this;
                super();
            }
        }
, 15000L);
    }

    private void stopTimer()
    {
        isTimerRequired = false;
        if (mTimer != null)
        {
            mTimer.cancel();
            mTimer = null;
        }
    }

    public void connect(String s)
    {
        Log.d("BTConnectionListener", (new StringBuilder()).append("connect() mSPPState = ").append(mSPPState).toString());
        if (mSPPState != 3 && mSPPState != 2)
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
            if (mAcceptThread != null)
            {
                mAcceptThread.stopAcceptThread();
                mAcceptThread.cancel();
                mAcceptThread = null;
            }
            mConnectThread = new ConnectThread(BluetoothAdapter.getDefaultAdapter().getRemoteDevice(s));
            mConnectThread.start();
        }
    }

    protected void connectionFailed()
    {
        Log.e("BTConnectionListener", "Connection Failed");
        setState(4);
    }

    protected void connectionSuccess(BluetoothSocket bluetoothsocket, BluetoothDevice bluetoothdevice)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("BTConnectionListener", "connected");
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
        if (mAcceptThread != null)
        {
            mAcceptThread.stopAcceptThread();
            mAcceptThread.closeServerSocket();
            mAcceptThread = null;
        }
        mConnectedThread = new ConnectedThread(bluetoothdevice, bluetoothsocket);
        mConnectedThread.start();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void disconnect()
    {
        if (mConnectedThread != null)
            mConnectedThread.cancel();
    }

    public boolean isEPLeftDeviceAssociated(String s)
    {
        Log.i("BTConnectionListener", "isEPLeftDeviceAssociated");
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_l_device_address") && !ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_l_device_address", "").equalsIgnoreCase(s))
        {
            Log.i("BTConnectionListener", "isDeviceAssociated EP Left false");
            return false;
        } else
        {
            Log.i("BTConnectionListener", "isDeviceAssociated EP Left true");
            return true;
        }
    }

    public boolean isEPRightDeviceAssociated(String s)
    {
        Log.i("BTConnectionListener", "isEPRightDeviceAssociated");
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_ep_r_device_address") && !ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_ep_r_device_address", "").equalsIgnoreCase(s))
        {
            Log.i("BTConnectionListener", "isDeviceAssociated EP right false");
            return false;
        } else
        {
            Log.i("BTConnectionListener", "isDeviceAssociated EP right true");
            return true;
        }
    }

    public boolean isWDDeviceAssociated(String s)
    {
        Log.i("BTConnectionListener", "isWDDeviceAssociated");
        if (ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address") && !ToqData.getInstance().getAssociatedDevicePrefs().getString("associated_wd_device_address", "").equalsIgnoreCase(s))
        {
            Log.i("BTConnectionListener", "isDeviceAssociated WD false");
            return false;
        } else
        {
            Log.i("BTConnectionListener", "isDeviceAssociated WD true");
            return true;
        }
    }

    public void read(byte abyte0[])
    {
        connectionManager.receiveData(abyte0, endPoint);
    }

    protected void setState(int i)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("BTConnectionListener", (new StringBuilder()).append("setState(connlisten: ").append(this).append(", endpt: ").append(endPoint).append(", mSPPState: ").append(i).toString());
        mSPPState = i;
        if (endPoint == null) goto _L2; else goto _L1
_L1:
        Log.printUsageLog("BTConnectionListener", (new StringBuilder()).append("setState()  End Point Type = ").append(endPoint.getType()).append(" State = ").append(mSPPState).toString());
        Log.d("BTConnectionListener", (new StringBuilder()).append("setState()  End Point Type = ").append(endPoint.getType()).append(" State = ").append(mSPPState).toString());
        connectionManager.connectionStateChange(endPoint, i);
        if (endPoint.getType() != 0) goto _L4; else goto _L3
_L3:
        if (mSPPState != 4 || !BluetoothAdapter.getDefaultAdapter().isEnabled()) goto _L6; else goto _L5
_L5:
        if (btConnectIteration >= 3) goto _L8; else goto _L7
_L7:
        Log.printUsageLog("BTConnectionListener", (new StringBuilder()).append("SPP retry interation: ").append(btConnectIteration).toString());
        Log.e("BTConnectionListener", (new StringBuilder()).append("SPP retry interation: ").append(btConnectIteration).toString());
        btConnectIteration = 1 + btConnectIteration;
        Log.d("BTConnectionListener", "[sleep] 5 seconds");
        wait(5000L);
        if (!ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address")) goto _L10; else goto _L9
_L9:
        connect(endPoint.getAddress());
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
        InterruptedException interruptedexception;
        interruptedexception;
        Log.e("BTConnectionListener", (new StringBuilder()).append("SPP retry interation: ").append(btConnectIteration).append(" interrupted!!!").toString());
          goto _L4
        Exception exception;
        exception;
        throw exception;
_L10:
        Log.e("BTConnectionListener", "No associated WD details found to initiate a reconnect");
          goto _L4
_L8:
        if (ToqData.getInstance().getAssociatedDevicePrefs() == null || !ToqData.getInstance().getAssociatedDevicePrefs().contains("associated_wd_device_address")) goto _L4; else goto _L11
_L11:
        Log.d("BTConnectionListener", "WD SPP server start");
        startSPPServer();
          goto _L4
_L12:
        btConnectIteration = 0;
        break; /* Loop/switch isn't completed */
_L2:
        Log.e("BTConnectionListener", "endPoint is NULL in setState fuction");
        break; /* Loop/switch isn't completed */
_L6:
        if (i != 3 && i != 1) goto _L4; else goto _L12
    }

    public void setStopListenerCalled(boolean flag)
    {
        isStopListenerCalled = flag;
    }

    public void startSPPServer()
    {
        Log.d("BTConnectionListener", (new StringBuilder()).append("startSPPServer() mSPPState = ").append(mSPPState).append(" of device: ").append(com.qualcomm.toq.base.utils.Constants.EndPointEnum.values()[endPoint.getType()]).toString());
        if (mSPPState == 4)
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
            if (mAcceptThread != null)
            {
                mAcceptThread.stopAcceptThread();
                mAcceptThread.cancel();
                mAcceptThread = null;
            }
            setState(1);
            mAcceptThread = new AcceptThread();
            mAcceptThread.start();
        }
    }

    public void stopConnectionListener()
    {
        Log.d("BTConnectionListener", "stopConnectionListener()");
        if (mConnectThread != null)
            mConnectThread.interrupt();
        if (mConnectedThread != null)
            mConnectedThread.interrupt();
        if (mResetConnectedThread != null)
            mResetConnectedThread.interrupt();
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
        if (mAcceptThread != null)
        {
            mAcceptThread.stopAcceptThread();
            mAcceptThread.cancel();
            mAcceptThread = null;
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
        if (mSPPState == 3)
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
            Log.d("BTConnectionListener", (new StringBuilder()).append("write of byte data done: size = ").append(abyte0.length).toString());
        }
        try
        {
            Thread.sleep(5L);
            return;
        }
        catch (Exception exception1)
        {
            Log.e("BTConnectionListener", (new StringBuilder()).append("Exception occured during writing data ").append(exception1).toString());
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
    static ResetConnectedThread access$1002(BTConnectionListener btconnectionlistener, ResetConnectedThread resetconnectedthread)
    {
        btconnectionlistener.mResetConnectedThread = resetconnectedthread;
        return resetconnectedthread;
    }

*/











/*
    static ConnectThread access$802(BTConnectionListener btconnectionlistener, ConnectThread connectthread)
    {
        btconnectionlistener.mConnectThread = connectthread;
        return connectthread;
    }

*/



/*
    static ConnectedThread access$902(BTConnectionListener btconnectionlistener, ConnectedThread connectedthread)
    {
        btconnectionlistener.mConnectedThread = connectedthread;
        return connectedthread;
    }

*/
}
