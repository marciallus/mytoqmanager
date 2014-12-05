// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.*;
import java.util.*;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothStack, SearchServicesException, SearchServicesThread, BluetoothConnectionParams, 
//            UtilsJavaSE, RemoteDeviceHelper, DebugLog, NotSupportedIOException, 
//            ServiceRecordImpl, SDPInputStream, BluetoothConnectionNotifierParams, Utils, 
//            DeviceInquiryThread, DeviceInquiryRunnable, RetrieveDevicesCallback, BlueCoveImpl, 
//            SearchServicesRunnable, SearchServicesDeviceNotReachableException, SearchServicesTerminatedException

class BluetoothStackMicrosoft
    implements BluetoothStack
{
    private class ConnectThread extends Thread
    {

        volatile boolean connecting;
        volatile IOException error;
        final Object event;
        final BluetoothConnectionParams params;
        final int retryUnreachable = BlueCoveImpl.getConfigProperty("bluecove.connect.unreachable_retry", 2);
        final long socket;
        volatile boolean success;
        final BluetoothStackMicrosoft this$0;

        public void run()
        {
            connect(socket, params.address, params.channel, retryUnreachable);
            success = true;
            connecting = false;
            synchronized (event)
            {
                event.notifyAll();
            }
            return;
            IOException ioexception;
            ioexception;
            error = ioexception;
            connecting = false;
            synchronized (event)
            {
                event.notifyAll();
            }
            return;
            exception2;
            obj1;
            JVM INSTR monitorexit ;
            throw exception2;
            Exception exception;
            exception;
            connecting = false;
            synchronized (event)
            {
                event.notifyAll();
            }
            throw exception;
            exception1;
            obj;
            JVM INSTR monitorexit ;
            throw exception1;
            exception3;
            obj2;
            JVM INSTR monitorexit ;
            throw exception3;
        }

        ConnectThread(Object obj, long l, BluetoothConnectionParams bluetoothconnectionparams)
        {
            this$0 = BluetoothStackMicrosoft.this;
            super((new StringBuilder("ConnectThread-")).append(BluetoothStackMicrosoft.nextConnectThreadNum()).toString());
            success = false;
            connecting = true;
            event = obj;
            socket = l;
            params = bluetoothconnectionparams;
        }
    }


    private static final int ATTR_RETRIEVABLE_MAX = 256;
    private static final int BTH_MODE_CONNECTABLE = 2;
    private static final int BTH_MODE_DISCOVERABLE = 3;
    private static final int BTH_MODE_POWER_OFF = 1;
    private static int connectThreadNumber;
    private static BluetoothStackMicrosoft singleInstance = null;
    private DiscoveryListener currentDeviceDiscoveryListener;
    private Hashtable deviceDiscoveryDevices;
    private Thread limitedDiscoverableTimer;
    private long localBluetoothAddress;
    private boolean peerInitialized;
    private boolean windowsCE;

    BluetoothStackMicrosoft()
    {
        peerInitialized = false;
        localBluetoothAddress = 0L;
    }

    private native long accept(long l)
        throws IOException;

    private native boolean authenticateRemoteDeviceImpl(long l, String s)
        throws IOException;

    private native void bind(long l)
        throws IOException;

    private native boolean cancelInquiry();

    private void cancelLimitedDiscoverableTimer()
    {
        if (limitedDiscoverableTimer != null)
        {
            limitedDiscoverableTimer.interrupt();
            limitedDiscoverableTimer = null;
        }
    }

    private native void close(long l)
        throws IOException;

    private native void connect(long l, long l1, int i, int j)
        throws IOException;

    private native int getBluetoothRadioMode();

    private native int getDeviceClass(long l);

    private native int getDeviceManufacturer(long l);

    private native int getDeviceVersion(long l);

    private native long getpeeraddress(long l)
        throws IOException;

    private native String getpeername(long l)
        throws IOException;

    private native String getradioname(long l);

    private native long getsockaddress(long l)
        throws IOException;

    private native int getsockchannel(long l)
        throws IOException;

    private static native int initializationStatus()
        throws IOException;

    private void initialized()
        throws BluetoothStateException
    {
        if (!peerInitialized)
            throw new BluetoothStateException("Bluetooth system is unavailable");
        else
            return;
    }

    private native boolean isRemoteDeviceAuthenticatedImpl(long l);

    private native boolean isRemoteDeviceTrustedImpl(long l);

    private native boolean isWindowsCE();

    private native void listen(long l)
        throws IOException;

    private static int nextConnectThreadNum()
    {
        com/intel/bluetooth/BluetoothStackMicrosoft;
        JVM INSTR monitorenter ;
        int i;
        i = connectThreadNumber;
        connectThreadNumber = i + 1;
        com/intel/bluetooth/BluetoothStackMicrosoft;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    private native int recv(long l)
        throws IOException;

    private native int recv(long l, byte abyte0[], int i, int j)
        throws IOException;

    private native int recvAvailable(long l)
        throws IOException;

    private native long registerService(byte abyte0[], int i)
        throws ServiceRegistrationException;

    private native void removeAuthenticationWithRemoteDeviceImpl(long l)
        throws IOException;

    private native boolean retrieveDevicesImpl(int i, RetrieveDevicesCallback retrievedevicescallback);

    private native int runDeviceInquiryImpl(DeviceInquiryRunnable deviceinquiryrunnable, DeviceInquiryThread deviceinquirythread, int i, int j, DiscoveryListener discoverylistener)
        throws BluetoothStateException;

    private native int[] runSearchServicesImpl(UUID auuid[], long l)
        throws SearchServicesException;

    private native void send(long l, int i)
        throws IOException;

    private native void send(long l, byte abyte0[], int i, int j)
        throws IOException;

    private native void setDiscoverable(boolean flag)
        throws BluetoothStateException;

    private native long socket(boolean flag, boolean flag1)
        throws IOException;

    private native void storesockopt(long l);

    private native void uninitialize();

    private native void unregisterService(long l)
        throws ServiceRegistrationException;

    public boolean authenticateRemoteDevice(long l)
        throws IOException
    {
        return authenticateRemoteDeviceImpl(l, null);
    }

    public boolean authenticateRemoteDevice(long l, String s)
        throws IOException
    {
        return authenticateRemoteDeviceImpl(l, s);
    }

    public boolean cancelInquiry(DiscoveryListener discoverylistener)
    {
        if (currentDeviceDiscoveryListener != discoverylistener)
        {
            return false;
        } else
        {
            currentDeviceDiscoveryListener = null;
            return cancelInquiry();
        }
    }

    public boolean cancelServiceSearch(int i)
    {
        SearchServicesThread searchservicesthread = SearchServicesThread.getServiceSearchThread(i);
        if (searchservicesthread != null)
            return searchservicesthread.setTerminated();
        else
            return false;
    }

    public void connectionRfCloseClientConnection(long l)
        throws IOException
    {
        close(l);
    }

    public void connectionRfCloseServerConnection(long l)
        throws IOException
    {
        connectionRfCloseClientConnection(l);
    }

    public void connectionRfFlush(long l)
        throws IOException
    {
    }

    public long connectionRfOpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams)
        throws IOException
    {
        long l;
        Object obj;
        ConnectThread connectthread;
        l = socket(bluetoothconnectionparams.authenticate, bluetoothconnectionparams.encrypt);
        obj = new Object();
        connectthread = new ConnectThread(obj, l, bluetoothconnectionparams);
        UtilsJavaSE.threadSetDaemon(connectthread);
        obj;
        JVM INSTR monitorenter ;
        connectthread.start();
_L2:
        boolean flag = connectthread.connecting;
        boolean flag1;
        flag1 = false;
        if (flag)
            break MISSING_BLOCK_LABEL_94;
_L1:
        obj;
        JVM INSTR monitorexit ;
        Exception exception;
        InterruptedException interruptedexception;
        Exception exception1;
        if (!connectthread.success)
            try
            {
                close(l);
            }
            catch (Exception exception2) { }
        if (connectthread.error != null)
            throw connectthread.error;
        break MISSING_BLOCK_LABEL_157;
        if (!bluetoothconnectionparams.timeouts)
            break MISSING_BLOCK_LABEL_149;
        obj.wait(bluetoothconnectionparams.timeout);
        flag1 = connectthread.connecting;
        connectthread.interrupt();
          goto _L1
        interruptedexception;
        try
        {
            close(l);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception1) { }
        throw new InterruptedIOException();
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj.wait();
          goto _L2
        if (!connectthread.success)
        {
            if (flag1)
                throw new BluetoothConnectionException(5);
            else
                throw new BluetoothConnectionException(4);
        } else
        {
            return l;
        }
    }

    public int connectionRfRead(long l)
        throws IOException
    {
        return recv(l);
    }

    public int connectionRfRead(long l, byte abyte0[], int i, int j)
        throws IOException
    {
        return recv(l, abyte0, i, j);
    }

    public int connectionRfReadAvailable(long l)
        throws IOException
    {
        return recvAvailable(l);
    }

    public void connectionRfWrite(long l, int i)
        throws IOException
    {
        send(l, i);
    }

    public void connectionRfWrite(long l, byte abyte0[], int i, int j)
        throws IOException
    {
        send(l, abyte0, i, j);
    }

    public void destroy()
    {
        if (singleInstance != this)
            throw new RuntimeException("Destroy invalid instance");
        if (peerInitialized)
        {
            peerInitialized = false;
            uninitialize();
        }
        cancelLimitedDiscoverableTimer();
        singleInstance = null;
    }

    public native int detectBluetoothStack();

    public native void enableNativeDebug(Class class1, boolean flag);

    public long getConnectionRfRemoteAddress(long l)
        throws IOException
    {
        return getpeeraddress(l);
    }

    public int getFeatureSet()
    {
        byte byte0;
        if (windowsCE)
            byte0 = 0;
        else
            byte0 = 4;
        return byte0 | 2;
    }

    public native int getLibraryVersion();

    public String getLocalDeviceBluetoothAddress()
    {
        String s;
        try
        {
            long l = socket(false, false);
            bind(l);
            localBluetoothAddress = getsockaddress(l);
            s = RemoteDeviceHelper.getBluetoothAddress(localBluetoothAddress);
            storesockopt(l);
            close(l);
        }
        catch (IOException ioexception)
        {
            DebugLog.error("get local bluetoothAddress", ioexception);
            return "000000000000";
        }
        return s;
    }

    public DeviceClass getLocalDeviceClass()
    {
        return new DeviceClass(getDeviceClass(localBluetoothAddress));
    }

    public int getLocalDeviceDiscoverable()
    {
        if (getBluetoothRadioMode() == 3)
        {
            if (limitedDiscoverableTimer != null)
            {
                DebugLog.debug("Discoverable = LIAC");
                return 0x9e8b00;
            } else
            {
                DebugLog.debug("Discoverable = GIAC");
                return 0x9e8b33;
            }
        } else
        {
            DebugLog.debug("Discoverable = NOT_DISCOVERABLE");
            return 0;
        }
    }

    public String getLocalDeviceName()
    {
        if (localBluetoothAddress == 0L)
            getLocalDeviceBluetoothAddress();
        return getradioname(localBluetoothAddress);
    }

    public String getLocalDeviceProperty(String s)
    {
        if ("bluetooth.connected.devices.max".equals(s))
            return "7";
        if ("bluetooth.sd.trans.max".equals(s))
            return "7";
        if ("bluetooth.connected.inquiry.scan".equals(s))
            return "true";
        if ("bluetooth.connected.page.scan".equals(s))
            return "true";
        if ("bluetooth.connected.inquiry".equals(s))
            return "true";
        if ("bluetooth.connected.page".equals(s))
            return "true";
        if ("bluetooth.sd.attr.retrievable.max".equals(s))
            return String.valueOf(256);
        if ("bluetooth.master.switch".equals(s))
            return "false";
        if ("bluetooth.l2cap.receiveMTU.max".equals(s))
            return "0";
        if ("bluecove.radio.version".equals(s))
            return String.valueOf(getDeviceVersion(localBluetoothAddress));
        if ("bluecove.radio.manufacturer".equals(s))
            return String.valueOf(getDeviceManufacturer(localBluetoothAddress));
        else
            return null;
    }

    public String getRemoteDeviceFriendlyName(long l)
        throws IOException
    {
        return getpeername(l);
    }

    public native byte[] getServiceAttributes(int ai[], long l, int i)
        throws IOException;

    public String getStackID()
    {
        return "winsock";
    }

    public void initialize()
        throws BluetoothStateException
    {
        if (singleInstance != null)
            throw new BluetoothStateException((new StringBuilder("Only one instance of ")).append(getStackID()).append(" stack supported").toString());
        int i;
        try
        {
            i = initializationStatus();
            DebugLog.debug("initializationStatus", i);
        }
        catch (BluetoothStateException bluetoothstateexception)
        {
            throw bluetoothstateexception;
        }
        catch (IOException ioexception)
        {
            DebugLog.fatal("initialization", ioexception);
            throw new BluetoothStateException(ioexception.getMessage());
        }
        if (i != 1)
            break MISSING_BLOCK_LABEL_62;
        peerInitialized = true;
        windowsCE = isWindowsCE();
        singleInstance = this;
        return;
    }

    public boolean isCurrentThreadInterruptedCallback()
    {
        return UtilsJavaSE.isCurrentThreadInterrupted();
    }

    public boolean isLocalDevicePowerOn()
    {
        int i = getBluetoothRadioMode();
        return i != 1 && (i == 2 || i == 3);
    }

    public native boolean isNativeCodeLoaded();

    public Boolean isRemoteDeviceAuthenticated(long l)
    {
        if (windowsCE)
            return null;
        else
            return new Boolean(isRemoteDeviceAuthenticatedImpl(l));
    }

    public Boolean isRemoteDeviceTrusted(long l)
    {
        if (windowsCE)
            return null;
        else
            return new Boolean(isRemoteDeviceTrustedImpl(l));
    }

    public void l2CloseClientConnection(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public void l2CloseServerConnection(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public boolean l2Encrypt(long l, long l1, boolean flag)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public int l2GetReceiveMTU(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public int l2GetSecurityOpt(long l, int i)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public int l2GetTransmitMTU(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public long l2OpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams, int i, int j)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public boolean l2Ready(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public int l2Receive(long l, byte abyte0[])
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public long l2RemoteAddress(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public void l2Send(long l, byte abyte0[], int i)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public long l2ServerAcceptAndOpenServerConnection(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public void l2ServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public long l2ServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, int i, int j, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public void l2ServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        throw new ServiceRegistrationException((new StringBuilder("Not Supported on")).append(getStackID()).toString());
    }

    public boolean populateServicesRecordAttributeValues(ServiceRecordImpl servicerecordimpl, int ai[])
        throws IOException
    {
        byte abyte0[];
        boolean flag;
        if (ai.length > 256)
            throw new IllegalArgumentException();
        abyte0 = getServiceAttributes(ai, RemoteDeviceHelper.getAddress(servicerecordimpl.getHostDevice()), (int)servicerecordimpl.getHandle());
        if (abyte0.length <= 0)
            break MISSING_BLOCK_LABEL_168;
        flag = false;
        Enumeration enumeration = (Enumeration)(new SDPInputStream(new ByteArrayInputStream(abyte0))).readElement().getValue();
_L2:
        do
        {
            if (!enumeration.hasMoreElements())
                return flag;
            int i;
            int j;
            int k;
            try
            {
                i = (int)((DataElement)enumeration.nextElement()).getLong();
                servicerecordimpl.populateAttributeValue(i, (DataElement)enumeration.nextElement());
            }
            catch (IOException ioexception)
            {
                throw ioexception;
            }
            catch (Throwable throwable)
            {
                throw new IOException();
            }
        } while (flag);
        j = 0;
_L3:
        if (j >= ai.length) goto _L2; else goto _L1
_L1:
        k = ai[j];
label0:
        {
            if (k != i)
                break label0;
            flag = true;
        }
          goto _L2
        j++;
          goto _L3
        return false;
    }

    public void removeAuthenticationWithRemoteDevice(long l)
        throws IOException
    {
        removeAuthenticationWithRemoteDeviceImpl(l);
    }

    public BluetoothStack.LibraryInformation[] requireNativeLibraries()
    {
        return BluetoothStack.LibraryInformation.library("intelbth");
    }

    public RemoteDevice[] retrieveDevices(int i)
    {
        if (!windowsCE)
        {
            final Vector devices = new Vector();
            if (retrieveDevicesImpl(i, new RetrieveDevicesCallback() {

        final BluetoothStackMicrosoft this$0;
        private final Vector val$devices;

        public void deviceFoundCallback(long l, int j, String s, boolean flag)
        {
            DebugLog.debug("device found", l);
            RemoteDevice remotedevice = RemoteDeviceHelper.createRemoteDevice(BluetoothStackMicrosoft.this, l, s, flag);
            devices.add(remotedevice);
        }

            
            {
                this$0 = BluetoothStackMicrosoft.this;
                devices = vector;
                super();
            }
    }
))
                return RemoteDeviceHelper.remoteDeviceListToArray(devices);
        }
        return null;
    }

    public boolean rfEncrypt(long l, long l1, boolean flag)
        throws IOException
    {
        return false;
    }

    public int rfGetSecurityOpt(long l, int i)
        throws IOException
    {
        return i;
    }

    public long rfServerAcceptAndOpenRfServerConnection(long l)
        throws IOException
    {
        return accept(l);
    }

    public void rfServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        close(l);
        unregisterService(servicerecordimpl.getHandle());
        return;
        Exception exception;
        exception;
        unregisterService(servicerecordimpl.getHandle());
        throw exception;
    }

    public long rfServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        long l = socket(bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt);
        this;
        JVM INSTR monitorenter ;
        bind(l);
        this;
        JVM INSTR monitorexit ;
        listen(l);
        int i = getsockchannel(l);
        DebugLog.debug("service channel ", i);
        servicerecordimpl.populateRFCOMMAttributes(l, i, bluetoothconnectionnotifierparams.uuid, bluetoothconnectionnotifierparams.name, bluetoothconnectionnotifierparams.obex);
        servicerecordimpl.setHandle(registerService(servicerecordimpl.toByteArray(), servicerecordimpl.deviceServiceClasses));
        Exception exception;
        IOException ioexception;
        Exception exception1;
        if (false)
            try
            {
                close(l);
            }
            catch (IOException ioexception1)
            {
                DebugLog.debug("close on failure", ioexception1);
                return l;
            }
        return l;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
        exception;
        if (true)
            try
            {
                close(l);
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                DebugLog.debug("close on failure", ioexception);
            }
        throw exception;
    }

    public void rfServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        unregisterService(servicerecordimpl.getHandle());
        byte abyte0[];
        try
        {
            abyte0 = servicerecordimpl.toByteArray();
        }
        catch (IOException ioexception)
        {
            throw new ServiceRegistrationException(ioexception.toString());
        }
        servicerecordimpl.setHandle(registerService(abyte0, servicerecordimpl.deviceServiceClasses));
        DebugLog.debug("new serviceRecord", servicerecordimpl);
    }

    public int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        return SearchServicesThread.startSearchServices(this, new SearchServicesRunnable() {

            final BluetoothStackMicrosoft this$0;

            public int runSearchServices(SearchServicesThread searchservicesthread, int ai1[], UUID auuid1[], RemoteDevice remotedevice1, DiscoveryListener discoverylistener1)
                throws BluetoothStateException
            {
                int ai2[];
                ServiceRecordImpl aservicerecordimpl[];
                int ai3[];
                boolean flag;
                int i;
                searchservicesthread.searchServicesStartedCallback();
                try
                {
                    ai2 = runSearchServicesImpl(auuid1, RemoteDeviceHelper.getAddress(remotedevice1));
                }
                catch (SearchServicesDeviceNotReachableException searchservicesdevicenotreachableexception)
                {
                    return 6;
                }
                catch (SearchServicesTerminatedException searchservicesterminatedexception)
                {
                    return 2;
                }
                catch (SearchServicesException searchservicesexception)
                {
                    return 3;
                }
                if (ai2 == null)
                    return 3;
                if (ai2.length <= 0)
                    break MISSING_BLOCK_LABEL_197;
                aservicerecordimpl = new ServiceRecordImpl[ai2.length];
                ai3 = new int[5];
                ai3[1] = 1;
                ai3[2] = 2;
                ai3[3] = 3;
                ai3[4] = 4;
                flag = false;
                i = 0;
_L1:
                if (i >= ai2.length)
                {
                    discoverylistener1.servicesDiscovered(searchservicesthread.getTransID(), aservicerecordimpl);
                    Exception exception;
                    return !flag ? 1 : 3;
                }
                aservicerecordimpl[i] = new ServiceRecordImpl(BluetoothStackMicrosoft.this, remotedevice1, ai2[i]);
                aservicerecordimpl[i].populateRecord(ai3);
                if (ai1 != null)
                    try
                    {
                        aservicerecordimpl[i].populateRecord(ai1);
                    }
                    // Misplaced declaration of an exception variable
                    catch (Exception exception)
                    {
                        DebugLog.debug("populateRecord error", exception);
                        flag = true;
                    }
                if (searchservicesthread.isTerminated())
                    return 2;
                i++;
                  goto _L1
                return 4;
            }

            
            {
                this$0 = BluetoothStackMicrosoft.this;
                super();
            }
        }
, ai, auuid, remotedevice, discoverylistener);
    }

    public boolean setLocalDeviceDiscoverable(int i)
        throws BluetoothStateException
    {
        boolean flag = true;
        switch (i)
        {
        case 10390272: 
            cancelLimitedDiscoverableTimer();
            DebugLog.debug("setDiscoverable(LIAC)");
            setDiscoverable(flag);
            if (0x9e8b33 != getLocalDeviceDiscoverable())
            {
                return false;
            } else
            {
                limitedDiscoverableTimer = Utils.schedule(60000L, new Runnable() {

                    final BluetoothStackMicrosoft this$0;

                    public void run()
                    {
                        setDiscoverable(false);
                        limitedDiscoverableTimer = null;
                        return;
                        BluetoothStateException bluetoothstateexception;
                        bluetoothstateexception;
                        DebugLog.debug("error setDiscoverable", bluetoothstateexception);
                        limitedDiscoverableTimer = null;
                        return;
                        Exception exception;
                        exception;
                        limitedDiscoverableTimer = null;
                        throw exception;
                    }

            
            {
                this$0 = BluetoothStackMicrosoft.this;
                super();
            }
                }
);
                return flag;
            }

        case 10390323: 
            cancelLimitedDiscoverableTimer();
            DebugLog.debug("setDiscoverable(true)");
            setDiscoverable(flag);
            if (0x9e8b33 != getLocalDeviceDiscoverable())
                return false;
            break;

        case 0: // '\0'
            cancelLimitedDiscoverableTimer();
            DebugLog.debug("setDiscoverable(false)");
            setDiscoverable(false);
            if (getLocalDeviceDiscoverable() != 0)
                return false;
            break;

        default:
            flag = false;
            break;
        }
        return flag;
    }

    public void setLocalDeviceServiceClasses(int i)
    {
    }

    public boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        initialized();
        if (currentDeviceDiscoveryListener != null)
        {
            throw new BluetoothStateException("Another inquiry already running");
        } else
        {
            currentDeviceDiscoveryListener = discoverylistener;
            return DeviceInquiryThread.startInquiry(this, new DeviceInquiryRunnable() {

                final BluetoothStackMicrosoft this$0;

                public void deviceDiscoveredCallback(DiscoveryListener discoverylistener1, long l, int j, String s, boolean flag)
                {
                    RemoteDevice remotedevice = RemoteDeviceHelper.createRemoteDevice(BluetoothStackMicrosoft.this, l, s, flag);
                    if (currentDeviceDiscoveryListener != null && deviceDiscoveryDevices != null && currentDeviceDiscoveryListener == discoverylistener1)
                    {
                        DeviceClass deviceclass = new DeviceClass(j);
                        DebugLog.debug("deviceDiscoveredCallback address", remotedevice.getBluetoothAddress());
                        DebugLog.debug("deviceDiscoveredCallback deviceClass", deviceclass);
                        deviceDiscoveryDevices.put(remotedevice, deviceclass);
                        return;
                    } else
                    {
                        return;
                    }
                }

                public int runDeviceInquiry(DeviceInquiryThread deviceinquirythread, int j, DiscoveryListener discoverylistener1)
                    throws BluetoothStateException
                {
                    int k;
                    deviceDiscoveryDevices = new Hashtable();
                    k = runDeviceInquiryImpl(this, deviceinquirythread, j, DeviceInquiryThread.getConfigDeviceInquiryDuration(), discoverylistener1);
                    if (k != 0) goto _L2; else goto _L1
_L1:
                    Enumeration enumeration = deviceDiscoveryDevices.keys();
_L5:
                    boolean flag = enumeration.hasMoreElements();
                    if (flag) goto _L3; else goto _L2
_L2:
                    deviceDiscoveryDevices = null;
                    currentDeviceDiscoveryListener = null;
                    return k;
_L3:
                    DiscoveryListener discoverylistener2;
                    RemoteDevice remotedevice = (RemoteDevice)enumeration.nextElement();
                    discoverylistener1.deviceDiscovered(remotedevice, (DeviceClass)deviceDiscoveryDevices.get(remotedevice));
                    discoverylistener2 = currentDeviceDiscoveryListener;
                    if (discoverylistener2 != null) goto _L5; else goto _L4
_L4:
                    deviceDiscoveryDevices = null;
                    currentDeviceDiscoveryListener = null;
                    return 5;
                    Exception exception;
                    exception;
                    deviceDiscoveryDevices = null;
                    currentDeviceDiscoveryListener = null;
                    throw exception;
                }

            
            {
                this$0 = BluetoothStackMicrosoft.this;
                super();
            }
            }
, i, discoverylistener);
        }
    }

    public String toString()
    {
        return getStackID();
    }











}
