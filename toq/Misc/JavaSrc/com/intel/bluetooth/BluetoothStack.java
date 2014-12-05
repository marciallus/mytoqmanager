// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionParams, ServiceRecordImpl, BluetoothConnectionNotifierParams

public interface BluetoothStack
{
    public static class LibraryInformation
    {

        public final String libraryName;
        public final boolean required;
        public Class stackClass;

        public static LibraryInformation[] library(String s)
        {
            LibraryInformation alibraryinformation[] = new LibraryInformation[1];
            alibraryinformation[0] = new LibraryInformation(s);
            return alibraryinformation;
        }

        public LibraryInformation(String s)
        {
            this(s, true);
        }

        public LibraryInformation(String s, boolean flag)
        {
            libraryName = s;
            required = flag;
        }
    }


    public static final int FEATURE_ASSIGN_SERVER_PSM = 16;
    public static final int FEATURE_L2CAP = 1;
    public static final int FEATURE_RSSI = 8;
    public static final int FEATURE_SERVICE_ATTRIBUTES = 2;
    public static final int FEATURE_SET_DEVICE_SERVICE_CLASSES = 4;

    public abstract boolean authenticateRemoteDevice(long l)
        throws IOException;

    public abstract boolean authenticateRemoteDevice(long l, String s)
        throws IOException;

    public abstract boolean cancelInquiry(DiscoveryListener discoverylistener);

    public abstract boolean cancelServiceSearch(int i);

    public abstract void connectionRfCloseClientConnection(long l)
        throws IOException;

    public abstract void connectionRfCloseServerConnection(long l)
        throws IOException;

    public abstract void connectionRfFlush(long l)
        throws IOException;

    public abstract long connectionRfOpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams)
        throws IOException;

    public abstract int connectionRfRead(long l)
        throws IOException;

    public abstract int connectionRfRead(long l, byte abyte0[], int i, int j)
        throws IOException;

    public abstract int connectionRfReadAvailable(long l)
        throws IOException;

    public abstract void connectionRfWrite(long l, int i)
        throws IOException;

    public abstract void connectionRfWrite(long l, byte abyte0[], int i, int j)
        throws IOException;

    public abstract void destroy();

    public abstract int detectBluetoothStack();

    public abstract void enableNativeDebug(Class class1, boolean flag);

    public abstract long getConnectionRfRemoteAddress(long l)
        throws IOException;

    public abstract int getFeatureSet();

    public abstract int getLibraryVersion()
        throws BluetoothStateException;

    public abstract String getLocalDeviceBluetoothAddress()
        throws BluetoothStateException;

    public abstract DeviceClass getLocalDeviceClass();

    public abstract int getLocalDeviceDiscoverable();

    public abstract String getLocalDeviceName();

    public abstract String getLocalDeviceProperty(String s);

    public abstract String getRemoteDeviceFriendlyName(long l)
        throws IOException;

    public abstract String getStackID();

    public abstract void initialize()
        throws BluetoothStateException;

    public abstract boolean isCurrentThreadInterruptedCallback();

    public abstract boolean isLocalDevicePowerOn();

    public abstract boolean isNativeCodeLoaded();

    public abstract Boolean isRemoteDeviceAuthenticated(long l);

    public abstract Boolean isRemoteDeviceTrusted(long l);

    public abstract void l2CloseClientConnection(long l)
        throws IOException;

    public abstract void l2CloseServerConnection(long l)
        throws IOException;

    public abstract boolean l2Encrypt(long l, long l1, boolean flag)
        throws IOException;

    public abstract int l2GetReceiveMTU(long l)
        throws IOException;

    public abstract int l2GetSecurityOpt(long l, int i)
        throws IOException;

    public abstract int l2GetTransmitMTU(long l)
        throws IOException;

    public abstract long l2OpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams, int i, int j)
        throws IOException;

    public abstract boolean l2Ready(long l)
        throws IOException;

    public abstract int l2Receive(long l, byte abyte0[])
        throws IOException;

    public abstract long l2RemoteAddress(long l)
        throws IOException;

    public abstract void l2Send(long l, byte abyte0[], int i)
        throws IOException;

    public abstract long l2ServerAcceptAndOpenServerConnection(long l)
        throws IOException;

    public abstract void l2ServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException;

    public abstract long l2ServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, int i, int j, ServiceRecordImpl servicerecordimpl)
        throws IOException;

    public abstract void l2ServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException;

    public abstract boolean populateServicesRecordAttributeValues(ServiceRecordImpl servicerecordimpl, int ai[])
        throws IOException;

    public abstract void removeAuthenticationWithRemoteDevice(long l)
        throws IOException;

    public abstract LibraryInformation[] requireNativeLibraries();

    public abstract RemoteDevice[] retrieveDevices(int i);

    public abstract boolean rfEncrypt(long l, long l1, boolean flag)
        throws IOException;

    public abstract int rfGetSecurityOpt(long l, int i)
        throws IOException;

    public abstract long rfServerAcceptAndOpenRfServerConnection(long l)
        throws IOException;

    public abstract void rfServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException;

    public abstract long rfServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, ServiceRecordImpl servicerecordimpl)
        throws IOException;

    public abstract void rfServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException;

    public abstract int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException;

    public abstract boolean setLocalDeviceDiscoverable(int i)
        throws BluetoothStateException;

    public abstract void setLocalDeviceServiceClasses(int i);

    public abstract boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException;
}
