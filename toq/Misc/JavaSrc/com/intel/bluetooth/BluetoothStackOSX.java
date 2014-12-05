// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.*;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothStack, BluetoothStackExtension, SearchServicesException, Utils, 
//            ServiceRecordImpl, SearchServicesThread, BluetoothConnectionParams, RemoteDeviceHelper, 
//            DebugLog, UtilsJavaSE, BluetoothConnectionNotifierParams, SDPInputStream, 
//            NotSupportedIOException, DeviceInquiryThread, DeviceInquiryRunnable, RetrieveDevicesCallback, 
//            SearchServicesRunnable, SearchServicesDeviceNotReachableException, SearchServicesTerminatedException

class BluetoothStackOSX
    implements BluetoothStack, BluetoothStackExtension
{
    private class MaintainDeviceServiceClassesThread extends Thread
    {

        final BluetoothStackOSX this$0;

        public void run()
        {
            boolean flag = true;
            do
            {
                int i = 0x1d4c0;
                if (!flag)
                    i = 1000;
                long l = i;
                try
                {
                    Thread.sleep(l);
                }
                catch (InterruptedException interruptedexception)
                {
                    return;
                }
                if (localDeviceServiceClasses != 0)
                    flag = setLocalDeviceServiceClassesImpl(localDeviceServiceClasses);
                else
                if (!flag)
                    flag = true;
            } while (true);
        }

        MaintainDeviceServiceClassesThread()
        {
            this$0 = BluetoothStackOSX.this;
            super("MaintainDeviceServiceClassesThread");
        }
    }


    private static final int ATTR_RETRIEVABLE_MAX = 256;
    private static final int BLUETOOTH_SOFTWARE_VERSION_2_0_0 = 20000;
    public static final boolean debug;
    private static BluetoothStackOSX singleInstance = null;
    private final Hashtable deviceDiscoveryListenerReportedDevices = new Hashtable();
    private final Vector deviceDiscoveryListeners = new Vector();
    private long lastDeviceDiscoveryTime;
    private Thread localDeviceServiceClassMaintainer;
    private int localDeviceServiceClasses;
    private int localDeviceSupportedSoftwareVersion;
    private int receive_mtu_max;

    BluetoothStackOSX()
    {
        receive_mtu_max = -1;
        lastDeviceDiscoveryTime = 0L;
        localDeviceServiceClasses = 0;
        localDeviceServiceClassMaintainer = null;
    }

    private native boolean authenticateRemoteDeviceImpl(long l)
        throws IOException;

    private native void cancelServiceSearchImpl(int i);

    private native long connectionRfOpenClientConnectionImpl(long l, int i, boolean flag, boolean flag1, int j)
        throws IOException;

    private native boolean deviceInquiryCancelImpl();

    private native int getDeviceClassImpl();

    private native boolean getLocalDeviceDiscoverableImpl();

    private native int getLocalDeviceL2CAPMTUMaximum();

    private native int getLocalDeviceManufacturer();

    private native String getLocalDeviceSoftwareVersionInfo();

    private native int getLocalDeviceSupportedSoftwareVersion();

    private native String getLocalDeviceVersion();

    private native byte[] getServiceAttributeImpl(long l, long l1, int i);

    private native boolean initializeImpl();

    private native boolean isLocalDeviceFeatureParkMode();

    private native boolean isLocalDeviceFeatureRSSI();

    private native boolean isLocalDeviceFeatureSwitchRoles();

    private native boolean isRemoteDeviceAuthenticatedImpl(long l);

    private native boolean isRemoteDeviceTrustedImpl(long l);

    private native long l2OpenClientConnectionImpl(long l, int i, boolean flag, boolean flag1, int j, int k, 
            int i1)
        throws IOException;

    private native void l2ServerCloseImpl(long l)
        throws IOException;

    private native long l2ServerOpenImpl(byte abyte0[], boolean flag, boolean flag1, String s, int i, int j, int k)
        throws IOException;

    private native int readRemoteDeviceRSSIImpl(long l)
        throws IOException;

    private int receiveMTUMAX()
    {
        if (receive_mtu_max < 0)
            receive_mtu_max = getLocalDeviceL2CAPMTUMaximum();
        return receive_mtu_max;
    }

    private native boolean retrieveDevicesImpl(int i, RetrieveDevicesCallback retrievedevicescallback);

    private native void rfServerCloseImpl(long l)
        throws IOException;

    private native long rfServerCreateImpl(byte abyte0[], boolean flag, String s, boolean flag1, boolean flag2)
        throws IOException;

    private native int rfServerGetChannelID(long l)
        throws IOException;

    private native int runDeviceInquiryImpl(DeviceInquiryRunnable deviceinquiryrunnable, DeviceInquiryThread deviceinquirythread, int i, int j, DiscoveryListener discoverylistener)
        throws BluetoothStateException;

    private native int runSearchServicesImpl(long l, int i)
        throws BluetoothStateException, SearchServicesException;

    private native void sdpServiceAddAttribute(long l, char c, int i, int j, long l1, 
            byte abyte0[])
        throws ServiceRegistrationException;

    private void sdpServiceAddAttribute(long l, char c, int i, DataElement dataelement)
        throws ServiceRegistrationException
    {
        int j = dataelement.getDataType();
        switch (j)
        {
        case 48: // '0'
        case 56: // '8'
            sdpServiceSequenceAttributeStart(l, c, i, j);
            Enumeration enumeration = (Enumeration)dataelement.getValue();
            do
            {
                if (!enumeration.hasMoreElements())
                {
                    sdpServiceSequenceAttributeEnd(l, c, i);
                    return;
                }
                sdpServiceAddAttribute(l, c, -1, (DataElement)enumeration.nextElement());
            } while (true);

        case 64: // '@'
            sdpServiceAddAttribute(l, c, i, j, 0L, Utils.getASCIIBytes((String)dataelement.getValue()));
            return;

        case 32: // ' '
            sdpServiceAddAttribute(l, c, i, j, 0L, Utils.getUTF8Bytes((String)dataelement.getValue()));
            return;

        case 24: // '\030'
            sdpServiceAddAttribute(l, c, i, j, 0L, Utils.UUIDToByteArray((UUID)dataelement.getValue()));
            return;

        case 11: // '\013'
        case 12: // '\f'
        case 20: // '\024'
            sdpServiceAddAttribute(l, c, i, j, 0L, (byte[])dataelement.getValue());
            return;

        case 8: // '\b'
        case 9: // '\t'
        case 10: // '\n'
        case 16: // '\020'
        case 17: // '\021'
        case 18: // '\022'
        case 19: // '\023'
            sdpServiceAddAttribute(l, c, i, j, dataelement.getLong(), null);
            return;

        case 40: // '('
            int k;
            if (dataelement.getBoolean())
                k = 1;
            else
                k = 0;
            sdpServiceAddAttribute(l, c, i, j, k, null);
            return;

        case 0: // '\0'
            sdpServiceAddAttribute(l, c, i, j, 0L, null);
            return;
        }
        throw new IllegalArgumentException();
    }

    private native void sdpServiceSequenceAttributeEnd(long l, char c, int i)
        throws ServiceRegistrationException;

    private native void sdpServiceSequenceAttributeStart(long l, char c, int i, int j)
        throws ServiceRegistrationException;

    private void sdpServiceUpdateServiceRecord(long l, char c, ServiceRecordImpl servicerecordimpl)
        throws ServiceRegistrationException
    {
        int ai[] = servicerecordimpl.getAttributeIDs();
        if (ai != null && ai.length != 0)
        {
            int i = 0;
            do
            {
                if (i >= ai.length)
                {
                    sdpServiceUpdateServiceRecordPublish(l, c);
                    return;
                }
                int j = ai[i];
                switch (j)
                {
                default:
                    sdpServiceAddAttribute(l, c, j, servicerecordimpl.getAttributeValue(j));
                    // fall through

                case 0: // '\0'
                case 4: // '\004'
                case 256: 
                    i++;
                    break;
                }
            } while (true);
        } else
        {
            return;
        }
    }

    private native void sdpServiceUpdateServiceRecordPublish(long l, char c)
        throws ServiceRegistrationException;

    private native boolean setLocalDeviceServiceClassesImpl(int i);

    private void validateMTU(int i, int j)
    {
        if (i > receiveMTUMAX())
            throw new IllegalArgumentException((new StringBuilder("invalid ReceiveMTU value ")).append(i).toString());
        else
            return;
    }

    private void verifyDeviceReady()
        throws BluetoothStateException
    {
        if (!isLocalDevicePowerOn())
            throw new BluetoothStateException("Bluetooth Device is not ready");
        else
            return;
    }

    public boolean authenticateRemoteDevice(long l)
        throws IOException
    {
        return authenticateRemoteDeviceImpl(l);
    }

    public boolean authenticateRemoteDevice(long l, String s)
        throws IOException
    {
        return false;
    }

    public boolean cancelInquiry(DiscoveryListener discoverylistener)
    {
        if (!deviceDiscoveryListeners.removeElement(discoverylistener))
            return false;
        else
            return deviceInquiryCancelImpl();
    }

    public boolean cancelServiceSearch(int i)
    {
        SearchServicesThread searchservicesthread;
        searchservicesthread = SearchServicesThread.getServiceSearchThread(i);
        if (searchservicesthread == null)
            break MISSING_BLOCK_LABEL_42;
        this;
        JVM INSTR monitorenter ;
        if (searchservicesthread.isTerminated())
            break MISSING_BLOCK_LABEL_32;
        searchservicesthread.setTerminated();
        cancelServiceSearchImpl(i);
        this;
        JVM INSTR monitorexit ;
        return true;
        this;
        JVM INSTR monitorexit ;
        break MISSING_BLOCK_LABEL_42;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        return false;
    }

    public native void connectionRfCloseClientConnection(long l)
        throws IOException;

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
        if (bluetoothconnectionparams.encrypt)
            throw new BluetoothConnectionException(2, "encrypt mode not supported");
        long l;
        synchronized (RemoteDeviceHelper.createRemoteDevice(this, bluetoothconnectionparams.address, null, false))
        {
            l = connectionRfOpenClientConnectionImpl(bluetoothconnectionparams.address, bluetoothconnectionparams.channel, bluetoothconnectionparams.authenticate, bluetoothconnectionparams.encrypt, bluetoothconnectionparams.timeout);
        }
        return l;
        exception;
        remotedevice;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public native int connectionRfRead(long l)
        throws IOException;

    public native int connectionRfRead(long l, byte abyte0[], int i, int j)
        throws IOException;

    public native int connectionRfReadAvailable(long l)
        throws IOException;

    public void connectionRfWrite(long l, int i)
        throws IOException
    {
        byte abyte0[] = new byte[1];
        abyte0[0] = (byte)(i & 0xff);
        connectionRfWrite(l, abyte0, 0, 1);
    }

    public native void connectionRfWrite(long l, byte abyte0[], int i, int j)
        throws IOException;

    public void destroy()
    {
        if (localDeviceSupportedSoftwareVersion >= 20000)
            setLocalDeviceServiceClassesImpl(0);
        singleInstance = null;
    }

    public native int detectBluetoothStack();

    public native void enableNativeDebug(Class class1, boolean flag);

    public native long getConnectionRfRemoteAddress(long l)
        throws IOException;

    public int getFeatureSet()
    {
        if (localDeviceSupportedSoftwareVersion >= 20000)
        {
            byte byte0;
            if (isLocalDeviceFeatureRSSI())
                byte0 = 8;
            else
                byte0 = 0;
            return byte0 | 7;
        } else
        {
            return 3;
        }
    }

    public native int getLibraryVersion();

    public native String getLocalDeviceBluetoothAddress()
        throws BluetoothStateException;

    public DeviceClass getLocalDeviceClass()
    {
        return new DeviceClass(getDeviceClassImpl());
    }

    public int getLocalDeviceDiscoverable()
    {
        return !getLocalDeviceDiscoverableImpl() ? 0 : 0x9e8b33;
    }

    public native String getLocalDeviceName();

    public String getLocalDeviceProperty(String s)
    {
        if ("bluetooth.connected.devices.max".equals(s))
            if (isLocalDeviceFeatureParkMode())
                return "255";
            else
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
            return String.valueOf(receiveMTUMAX());
        if ("bluecove.radio.version".equals(s))
            return getLocalDeviceVersion();
        if ("bluecove.radio.manufacturer".equals(s))
            return String.valueOf(getLocalDeviceManufacturer());
        if ("bluecove.stack.version".equals(s))
            return getLocalDeviceSoftwareVersionInfo();
        else
            return null;
    }

    public native String getRemoteDeviceFriendlyName(long l)
        throws IOException;

    public String getStackID()
    {
        return "mac";
    }

    public void initialize()
        throws BluetoothStateException
    {
        if (singleInstance != null)
            throw new BluetoothStateException((new StringBuilder("Only one instance of ")).append(getStackID()).append(" stack supported").toString());
        String s = System.getProperty("os.version");
        String s1 = System.getProperty("sun.arch.data.model");
        boolean flag;
        if (s != null && s.startsWith("10.5"))
            flag = true;
        else
            flag = false;
        boolean flag1 = "64".equals(s1);
        if (flag && flag1)
            throw new BluetoothStateException("Mac OS X 10.5 not supported with a 64 bit JRE");
        localDeviceSupportedSoftwareVersion = getLocalDeviceSupportedSoftwareVersion();
        DebugLog.debug("localDeviceSupportedSoftwareVersion", localDeviceSupportedSoftwareVersion);
        if (!initializeImpl())
        {
            throw new BluetoothStateException("OS X BluetoothStack not found");
        } else
        {
            singleInstance = this;
            return;
        }
    }

    public boolean isCurrentThreadInterruptedCallback()
    {
        return UtilsJavaSE.isCurrentThreadInterrupted();
    }

    public native boolean isLocalDevicePowerOn();

    public native boolean isNativeCodeLoaded();

    public Boolean isRemoteDeviceAuthenticated(long l)
    {
        return new Boolean(isRemoteDeviceAuthenticatedImpl(l));
    }

    public Boolean isRemoteDeviceTrusted(long l)
    {
        return new Boolean(isRemoteDeviceTrustedImpl(l));
    }

    public native void l2CloseClientConnection(long l)
        throws IOException;

    public void l2CloseServerConnection(long l)
        throws IOException
    {
        l2CloseClientConnection(l);
    }

    public boolean l2Encrypt(long l, long l1, boolean flag)
        throws IOException
    {
        return false;
    }

    public native int l2GetReceiveMTU(long l)
        throws IOException;

    public native int l2GetSecurityOpt(long l, int i)
        throws IOException;

    public native int l2GetTransmitMTU(long l)
        throws IOException;

    public long l2OpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams, int i, int j)
        throws IOException
    {
        validateMTU(i, j);
        if (bluetoothconnectionparams.encrypt)
            throw new BluetoothConnectionException(2, "encrypt mode not supported");
        long l;
        synchronized (RemoteDeviceHelper.createRemoteDevice(this, bluetoothconnectionparams.address, null, false))
        {
            l = l2OpenClientConnectionImpl(bluetoothconnectionparams.address, bluetoothconnectionparams.channel, bluetoothconnectionparams.authenticate, bluetoothconnectionparams.encrypt, i, j, bluetoothconnectionparams.timeout);
        }
        return l;
        exception;
        remotedevice;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public native boolean l2Ready(long l)
        throws IOException;

    public native int l2Receive(long l, byte abyte0[])
        throws IOException;

    public native long l2RemoteAddress(long l)
        throws IOException;

    public native void l2Send(long l, byte abyte0[], int i)
        throws IOException;

    public native long l2ServerAcceptAndOpenServerConnection(long l)
        throws IOException;

    public void l2ServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        l2ServerCloseImpl(l);
    }

    public long l2ServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, int i, int j, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        verifyDeviceReady();
        validateMTU(i, j);
        if (bluetoothconnectionnotifierparams.encrypt)
        {
            throw new BluetoothConnectionException(2, "encrypt mode not supported");
        } else
        {
            long l = l2ServerOpenImpl(Utils.UUIDToByteArray(bluetoothconnectionnotifierparams.uuid), bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt, bluetoothconnectionnotifierparams.name, i, j, bluetoothconnectionnotifierparams.bluecove_ext_psm);
            int k = l2ServerPSM(l);
            servicerecordimpl.populateL2CAPAttributes((int)l, k, bluetoothconnectionnotifierparams.uuid, bluetoothconnectionnotifierparams.name);
            return l;
        }
    }

    public native int l2ServerPSM(long l)
        throws IOException;

    public void l2ServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        sdpServiceUpdateServiceRecord(l, 'L', servicerecordimpl);
    }

    public boolean populateServicesRecordAttributeValues(ServiceRecordImpl servicerecordimpl, int ai[])
        throws IOException
    {
        boolean flag;
        long l;
        int i;
        if (ai.length > 256)
            throw new IllegalArgumentException();
        flag = false;
        l = RemoteDeviceHelper.getAddress(servicerecordimpl.getHostDevice());
        i = 0;
_L2:
        int j;
        if (i >= ai.length)
            return flag;
        j = ai[i];
        byte abyte0[] = getServiceAttributeImpl(l, servicerecordimpl.getHandle(), j);
        if (abyte0 == null)
            break MISSING_BLOCK_LABEL_91;
        servicerecordimpl.populateAttributeValue(j, (new SDPInputStream(new ByteArrayInputStream(abyte0))).readElement());
        flag = true;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Throwable throwable;
        throwable;
          goto _L3
    }

    public int readRemoteDeviceRSSI(long l)
        throws IOException
    {
        return readRemoteDeviceRSSIImpl(l);
    }

    public void removeAuthenticationWithRemoteDevice(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public BluetoothStack.LibraryInformation[] requireNativeLibraries()
    {
        return BluetoothStack.LibraryInformation.library("bluecove");
    }

    public RemoteDevice[] retrieveDevices(int i)
    {
        final Vector devices = new Vector();
        if (retrieveDevicesImpl(i, new RetrieveDevicesCallback() {

        final BluetoothStackOSX this$0;
        private final Vector val$devices;

        public void deviceFoundCallback(long l, int j, String s, boolean flag)
        {
            DebugLog.debug("device found", l);
            RemoteDevice remotedevice = RemoteDeviceHelper.createRemoteDevice(BluetoothStackOSX.this, l, s, flag);
            if (!devices.contains(remotedevice))
                devices.add(remotedevice);
        }

            
            {
                this$0 = BluetoothStackOSX.this;
                devices = vector;
                super();
            }
    }
))
            return RemoteDeviceHelper.remoteDeviceListToArray(devices);
        else
            return null;
    }

    public boolean rfEncrypt(long l, long l1, boolean flag)
        throws IOException
    {
        return false;
    }

    public native int rfGetSecurityOpt(long l, int i)
        throws IOException;

    public native long rfServerAcceptAndOpenRfServerConnection(long l)
        throws IOException;

    public void rfServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        rfServerCloseImpl(l);
    }

    public long rfServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        long l;
        verifyDeviceReady();
        if (bluetoothconnectionnotifierparams.encrypt)
            throw new BluetoothConnectionException(2, "encrypt mode not supported");
        l = rfServerCreateImpl(Utils.UUIDToByteArray(bluetoothconnectionnotifierparams.uuid), bluetoothconnectionnotifierparams.obex, bluetoothconnectionnotifierparams.name, bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt);
        servicerecordimpl.populateRFCOMMAttributes(l, rfServerGetChannelID(l), bluetoothconnectionnotifierparams.uuid, bluetoothconnectionnotifierparams.name, bluetoothconnectionnotifierparams.obex);
        if (false)
            rfServerCloseImpl(l);
        return l;
        Exception exception;
        exception;
        if (true)
            rfServerCloseImpl(l);
        throw exception;
    }

    public void rfServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        sdpServiceUpdateServiceRecord(l, 'R', servicerecordimpl);
    }

    public int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        return SearchServicesThread.startSearchServices(this, new SearchServicesRunnable() {

            final BluetoothStackOSX this$0;

            public int runSearchServices(SearchServicesThread searchservicesthread, int ai1[], UUID auuid1[], RemoteDevice remotedevice1, DiscoveryListener discoverylistener1)
                throws BluetoothStateException
            {
                int i;
                Vector vector;
                int ai2[];
                int ai3[];
                int j;
                searchservicesthread.searchServicesStartedCallback();
                try
                {
                    i = runSearchServicesImpl(RemoteDeviceHelper.getAddress(remotedevice1), searchservicesthread.getTransID());
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
                if (searchservicesthread.isTerminated())
                    return 2;
                if (i == 0)
                    return 4;
                vector = new Vector();
                ai2 = (new int[] {
                    1, 4
                });
                ai3 = new int[3];
                ai3[1] = 2;
                ai3[2] = 3;
                j = 0;
_L6:
                ServiceRecordImpl servicerecordimpl;
                Exception exception;
                int k;
                boolean flag;
                if (j >= i)
                    if (vector.size() != 0)
                    {
                        DebugLog.debug((new StringBuilder("SERVICE_SEARCH_COMPLETED ")).append(searchservicesthread.getTransID()).toString());
                        ServiceRecord aservicerecord[] = (ServiceRecord[])Utils.vector2toArray(vector, new ServiceRecord[vector.size()]);
                        discoverylistener1.servicesDiscovered(searchservicesthread.getTransID(), aservicerecord);
                        return 1;
                    } else
                    {
                        return 4;
                    }
                servicerecordimpl = new ServiceRecordImpl(BluetoothStackOSX.this, remotedevice1, j);
                servicerecordimpl.populateRecord(ai2);
                k = 0;
_L7:
                if (k < auuid1.length) goto _L2; else goto _L1
_L1:
                vector.addElement(servicerecordimpl);
                servicerecordimpl.populateRecord(ai3);
                if (ai1 == null)
                    break MISSING_BLOCK_LABEL_223;
                servicerecordimpl.populateRecord(ai1);
                DebugLog.debug((new StringBuilder("ServiceRecord (")).append(j).append(")").toString(), servicerecordimpl);
_L8:
                if (searchservicesthread.isTerminated())
                {
                    DebugLog.debug((new StringBuilder("SERVICE_SEARCH_TERMINATED ")).append(searchservicesthread.getTransID()).toString());
                    return 2;
                }
                  goto _L3
_L2:
                if (servicerecordimpl.hasServiceClassUUID(auuid1[k])) goto _L5; else goto _L4
_L4:
                flag = servicerecordimpl.hasProtocolClassUUID(auuid1[k]);
                if (flag) goto _L5; else goto _L3
_L3:
                j++;
                  goto _L6
_L5:
                k++;
                  goto _L7
                exception;
                DebugLog.debug("populateRecord error", exception);
                  goto _L8
            }

            
            {
                this$0 = BluetoothStackOSX.this;
                super();
            }
        }
, ai, auuid, remotedevice, discoverylistener);
    }

    public boolean setLocalDeviceDiscoverable(int i)
        throws BluetoothStateException
    {
        return getLocalDeviceDiscoverable() == i;
    }

    public void setLocalDeviceServiceClasses(int i)
    {
        this;
        JVM INSTR monitorenter ;
        int j = localDeviceSupportedSoftwareVersion;
        if (j >= 20000) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (i != localDeviceServiceClasses)
            setLocalDeviceServiceClassesImpl(i);
        localDeviceServiceClasses = i;
        if (i == 0)
            continue; /* Loop/switch isn't completed */
        if (localDeviceServiceClassMaintainer == null)
        {
            localDeviceServiceClassMaintainer = new MaintainDeviceServiceClassesThread();
            UtilsJavaSE.threadSetDaemon(localDeviceServiceClassMaintainer);
            localDeviceServiceClassMaintainer.start();
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        long l = System.currentTimeMillis() - lastDeviceDiscoveryTime;
        if (l < 7000L)
        {
            long l1 = 7000L - l;
            try
            {
                Thread.sleep(l1);
            }
            catch (InterruptedException interruptedexception)
            {
                throw new BluetoothStateException();
            }
        }
        deviceDiscoveryListeners.addElement(discoverylistener);
        deviceDiscoveryListenerReportedDevices.put(discoverylistener, new Vector());
        return DeviceInquiryThread.startInquiry(this, new DeviceInquiryRunnable() {

            final BluetoothStackOSX this$0;

            public void deviceDiscoveredCallback(DiscoveryListener discoverylistener1, long l2, int j, String s, boolean flag)
            {
                if (deviceDiscoveryListeners.contains(discoverylistener1))
                {
                    RemoteDevice remotedevice = RemoteDeviceHelper.createRemoteDevice(BluetoothStackOSX.this, l2, s, flag);
                    Vector vector = (Vector)deviceDiscoveryListenerReportedDevices.get(discoverylistener1);
                    if (vector != null && !vector.contains(remotedevice))
                    {
                        vector.addElement(remotedevice);
                        DeviceClass deviceclass = new DeviceClass(j);
                        DebugLog.debug("deviceDiscoveredCallback address", remotedevice.getBluetoothAddress());
                        DebugLog.debug("deviceDiscoveredCallback deviceClass", deviceclass);
                        discoverylistener1.deviceDiscovered(remotedevice, deviceclass);
                        return;
                    }
                }
            }

            public int runDeviceInquiry(DeviceInquiryThread deviceinquirythread, int j, DiscoveryListener discoverylistener1)
                throws BluetoothStateException
            {
                int k = runDeviceInquiryImpl(this, deviceinquirythread, j, DeviceInquiryThread.getConfigDeviceInquiryDuration(), discoverylistener1);
                lastDeviceDiscoveryTime = System.currentTimeMillis();
                deviceDiscoveryListeners.removeElement(discoverylistener1);
                deviceDiscoveryListenerReportedDevices.remove(discoverylistener1);
                return k;
                Exception exception;
                exception;
                lastDeviceDiscoveryTime = System.currentTimeMillis();
                deviceDiscoveryListeners.removeElement(discoverylistener1);
                deviceDiscoveryListenerReportedDevices.remove(discoverylistener1);
                throw exception;
            }

            
            {
                this$0 = BluetoothStackOSX.this;
                super();
            }
        }
, i, discoverylistener);
    }

    public String toString()
    {
        return getStackID();
    }








}
