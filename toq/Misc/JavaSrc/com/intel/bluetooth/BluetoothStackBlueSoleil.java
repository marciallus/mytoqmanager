// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.util.Hashtable;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothStack, DeviceInquiryRunnable, SearchServicesRunnable, BluetoothConnectionParams, 
//            RemoteDeviceHelper, DebugLog, Utils, UtilsJavaSE, 
//            NotSupportedIOException, BluetoothConnectionNotifierParams, ServiceRecordImpl, DeviceInquiryThread, 
//            SearchServicesThread, BluetoothConsts, NotSupportedRuntimeException

class BluetoothStackBlueSoleil
    implements BluetoothStack, DeviceInquiryRunnable, SearchServicesRunnable
{

    private static BluetoothStackBlueSoleil singleInstance = null;
    private DiscoveryListener currentDeviceDiscoveryListener;
    private boolean initialized;

    BluetoothStackBlueSoleil()
    {
        initialized = false;
    }

    private native long connectionRfOpenImpl(long l, byte abyte0[])
        throws IOException;

    private native boolean isBluetoothReady(int i);

    private native long rfServerOpenImpl(byte abyte0[], String s, boolean flag, boolean flag1)
        throws IOException;

    private native int rfServerSCN(long l)
        throws IOException;

    private native int runSearchServicesImpl(SearchServicesThread searchservicesthread, DiscoveryListener discoverylistener, byte abyte0[], long l, RemoteDevice remotedevice)
        throws BluetoothStateException;

    private native void uninitialize();

    public boolean authenticateRemoteDevice(long l)
        throws IOException
    {
        return false;
    }

    public boolean authenticateRemoteDevice(long l, String s)
        throws IOException
    {
        return false;
    }

    public boolean cancelInquiry(DiscoveryListener discoverylistener)
    {
        if (currentDeviceDiscoveryListener != discoverylistener)
        {
            return false;
        } else
        {
            currentDeviceDiscoveryListener = null;
            return cancelInquirympl();
        }
    }

    public native boolean cancelInquirympl();

    public boolean cancelServiceSearch(int i)
    {
        return false;
    }

    public native void connectionRfCloseClientConnection(long l)
        throws IOException;

    public void connectionRfCloseServerConnection(long l)
        throws IOException
    {
        connectionRfCloseClientConnection(l);
    }

    public native void connectionRfFlush(long l)
        throws IOException;

    public long connectionRfOpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams)
        throws IOException
    {
        if (!bluetoothconnectionparams.authenticate && !bluetoothconnectionparams.encrypt)
        {
            RemoteDevice remotedevice = RemoteDeviceHelper.getCashedDevice(this, bluetoothconnectionparams.address);
            if (remotedevice == null)
                throw new IOException("Device not discovered");
            UUID uuid = (UUID)RemoteDeviceHelper.getStackAttributes(this, remotedevice, (new StringBuilder("RFCOMM_channel")).append(bluetoothconnectionparams.channel).toString());
            if (uuid == null)
            {
                throw new IOException("Device service not discovered");
            } else
            {
                DebugLog.debug("Connect to service UUID", uuid);
                return connectionRfOpenImpl(bluetoothconnectionparams.address, Utils.UUIDToByteArray(uuid));
            }
        } else
        {
            throw new IOException("authenticate not supported on BlueSoleil");
        }
    }

    public native int connectionRfRead(long l)
        throws IOException;

    public native int connectionRfRead(long l, byte abyte0[], int i, int j)
        throws IOException;

    public native int connectionRfReadAvailable(long l)
        throws IOException;

    public native void connectionRfWrite(long l, int i)
        throws IOException;

    public native void connectionRfWrite(long l, byte abyte0[], int i, int j)
        throws IOException;

    public void destroy()
    {
        if (singleInstance != this)
            throw new RuntimeException("Destroy invalid instance");
        if (initialized)
        {
            uninitialize();
            initialized = false;
            DebugLog.debug("BlueSoleil destroyed");
        }
        singleInstance = null;
    }

    public native int detectBluetoothStack();

    public void deviceDiscoveredCallback(DiscoveryListener discoverylistener, long l, int i, String s, boolean flag)
    {
        DebugLog.debug("deviceDiscoveredCallback", s);
        RemoteDevice remotedevice = RemoteDeviceHelper.createRemoteDevice(this, l, s, flag);
        if (currentDeviceDiscoveryListener != null && currentDeviceDiscoveryListener == discoverylistener)
        {
            discoverylistener.deviceDiscovered(remotedevice, new DeviceClass(i));
            return;
        } else
        {
            return;
        }
    }

    public native void enableNativeDebug(Class class1, boolean flag);

    protected void finalize()
    {
        destroy();
    }

    public native long getConnectionRfRemoteAddress(long l)
        throws IOException;

    public native int getDeviceClassImpl();

    native int getDeviceManufacturer();

    native int getDeviceVersion();

    public int getFeatureSet()
    {
        return 0;
    }

    public native int getLibraryVersion();

    public native String getLocalDeviceBluetoothAddress();

    public DeviceClass getLocalDeviceClass()
    {
        return new DeviceClass(getDeviceClassImpl());
    }

    public int getLocalDeviceDiscoverable()
    {
        return !isBluetoothReady(2) ? 0 : 0x9e8b33;
    }

    public native String getLocalDeviceName();

    public String getLocalDeviceProperty(String s)
    {
        if ("bluetooth.connected.devices.max".equals(s))
            return "7";
        if ("bluetooth.sd.trans.max".equals(s))
            return "1";
        if ("bluetooth.connected.inquiry.scan".equals(s))
            return "true";
        if ("bluetooth.connected.page.scan".equals(s))
            return "true";
        if ("bluetooth.connected.inquiry".equals(s))
            return "true";
        if ("bluetooth.sd.attr.retrievable.max".equals(s))
            return "0";
        if ("bluecove.stack.version".equals(s))
            return String.valueOf(getStackVersionInfo());
        else
            return null;
    }

    public String getRemoteDeviceFriendlyName(long l)
        throws IOException
    {
        return null;
    }

    public String getStackID()
    {
        return "bluesoleil";
    }

    native int getStackVersionInfo();

    public void initialize()
        throws BluetoothStateException
    {
        if (singleInstance != null)
            throw new BluetoothStateException((new StringBuilder("Only one instance of ")).append(getStackID()).append(" stack supported").toString());
        if (!initializeImpl())
        {
            DebugLog.fatal("Can't initialize BlueSoleil");
            throw new BluetoothStateException("BlueSoleil BluetoothStack not found");
        } else
        {
            initialized = true;
            singleInstance = this;
            return;
        }
    }

    public native boolean initializeImpl();

    native boolean isBlueSoleilStarted(int i);

    public boolean isCurrentThreadInterruptedCallback()
    {
        return UtilsJavaSE.isCurrentThreadInterrupted();
    }

    public boolean isLocalDevicePowerOn()
    {
        return isBluetoothReady(15);
    }

    public native boolean isNativeCodeLoaded();

    public Boolean isRemoteDeviceAuthenticated(long l)
    {
        return null;
    }

    public Boolean isRemoteDeviceTrusted(long l)
    {
        return null;
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
        return false;
    }

    public void removeAuthenticationWithRemoteDevice(long l)
        throws IOException
    {
        throw new NotSupportedIOException(getStackID());
    }

    public BluetoothStack.LibraryInformation[] requireNativeLibraries()
    {
        return BluetoothStack.LibraryInformation.library("intelbth");
    }

    public RemoteDevice[] retrieveDevices(int i)
    {
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
        return 0;
    }

    public native long rfServerAcceptAndOpenRfServerConnection(long l)
        throws IOException;

    public native void rfServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException;

    public long rfServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        if (!bluetoothconnectionnotifierparams.authenticate && !bluetoothconnectionnotifierparams.encrypt)
        {
            long l = rfServerOpenImpl(Utils.UUIDToByteArray(bluetoothconnectionnotifierparams.uuid), bluetoothconnectionnotifierparams.name, bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt);
            int i = rfServerSCN(l);
            DebugLog.debug("serverSCN", i);
            servicerecordimpl.populateRFCOMMAttributes((int)l, i, bluetoothconnectionnotifierparams.uuid, bluetoothconnectionnotifierparams.name, false);
            return l;
        } else
        {
            throw new IOException("authenticate not supported on BlueSoleil");
        }
    }

    public void rfServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        if (!flag)
            throw new ServiceRegistrationException((new StringBuilder("Not Supported on ")).append(getStackID()).toString());
        else
            return;
    }

    public int runDeviceInquiry(DeviceInquiryThread deviceinquirythread, int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        int j;
        deviceinquirythread.deviceInquiryStartedCallback();
        j = runDeviceInquiryImpl(deviceinquirythread, i, discoverylistener);
        currentDeviceDiscoveryListener = null;
        return j;
        Exception exception;
        exception;
        currentDeviceDiscoveryListener = null;
        throw exception;
    }

    public native int runDeviceInquiryImpl(DeviceInquiryThread deviceinquirythread, int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException;

    public int runSearchServices(SearchServicesThread searchservicesthread, int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        searchservicesthread.searchServicesStartedCallback();
        UUID uuid = null;
        if (auuid != null)
        {
            int i = auuid.length;
            uuid = null;
            if (i > 0)
                uuid = auuid[-1 + auuid.length];
        }
        return runSearchServicesImpl(searchservicesthread, discoverylistener, Utils.UUIDToByteArray(uuid), RemoteDeviceHelper.getAddress(remotedevice), remotedevice);
    }

    public int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        return SearchServicesThread.startSearchServices(this, this, ai, auuid, remotedevice, discoverylistener);
    }

    public void servicesFoundCallback(SearchServicesThread searchservicesthread, DiscoveryListener discoverylistener, RemoteDevice remotedevice, String s, byte abyte0[], int i, long l)
    {
        ServiceRecordImpl servicerecordimpl = new ServiceRecordImpl(this, remotedevice, 0L);
        UUID uuid = new UUID(Utils.UUIDByteArrayToString(abyte0), false);
        servicerecordimpl.populateRFCOMMAttributes(l, i, uuid, s, BluetoothConsts.obexUUIDs.contains(uuid));
        DebugLog.debug("servicesFoundCallback", servicerecordimpl);
        RemoteDeviceHelper.setStackAttributes(this, RemoteDeviceHelper.createRemoteDevice(this, remotedevice), (new StringBuilder("RFCOMM_channel")).append(i).toString(), uuid);
        ServiceRecordImpl aservicerecordimpl[] = {
            servicerecordimpl
        };
        discoverylistener.servicesDiscovered(searchservicesthread.getTransID(), aservicerecordimpl);
    }

    public boolean setLocalDeviceDiscoverable(int i)
        throws BluetoothStateException
    {
        return true;
    }

    public void setLocalDeviceServiceClasses(int i)
    {
        throw new NotSupportedRuntimeException(getStackID());
    }

    public boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        if (currentDeviceDiscoveryListener != null)
        {
            throw new BluetoothStateException("Another inquiry already running");
        } else
        {
            currentDeviceDiscoveryListener = discoverylistener;
            return DeviceInquiryThread.startInquiry(this, this, i, discoverylistener);
        }
    }

    public String toString()
    {
        return getStackID();
    }

}
