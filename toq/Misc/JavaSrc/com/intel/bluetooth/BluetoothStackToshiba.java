// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.util.*;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothStack, DeviceInquiryRunnable, SearchServicesRunnable, BluetoothStackWIDCOMMSDPInputStream, 
//            ServiceRecordImpl, DebugLog, RemoteDeviceHelper, UtilsJavaSE, 
//            SearchServicesThread, BlueCoveImpl, DeviceInquiryThread, BluetoothConnectionParams, 
//            BluetoothConnectionNotifierParams

class BluetoothStackToshiba
    implements BluetoothStack, DeviceInquiryRunnable, SearchServicesRunnable
{

    private static final int ATTR_RETRIEVABLE_MAX = 65535;
    private static final int RECEIVE_MTU_MAX = 1024;
    private Hashtable deviceDiscoveryListenerFoundDevices;
    private Hashtable deviceDiscoveryListenerReportedDevices;
    private Vector deviceDiscoveryListeners;
    private boolean initialized;

    BluetoothStackToshiba()
    {
        initialized = false;
        deviceDiscoveryListeners = new Vector();
        deviceDiscoveryListenerFoundDevices = new Hashtable();
        deviceDiscoveryListenerReportedDevices = new Hashtable();
    }

    private native short connectSDPImpl(long l);

    private native void destroyImpl();

    private native boolean deviceInquiryCancelImpl();

    private native void disconnectSDPImpl(short word0);

    private String getBTWVersionInfo()
    {
        return "";
    }

    private int getDeviceManufacturer()
    {
        return 0;
    }

    private int getDeviceVersion()
    {
        return 0;
    }

    private native String getRemoteDeviceFriendlyNameImpl(long l);

    private native boolean initializeImpl()
        throws BluetoothStateException;

    private native byte[] populateWorkerImpl(short word0, long l, int ai[]);

    private native int runDeviceInquiryImpl(DeviceInquiryThread deviceinquirythread, int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException;

    private native long[] searchServicesImpl(SearchServicesThread searchservicesthread, short word0, byte abyte0[][]);

    private boolean setAttributes(ServiceRecordImpl servicerecordimpl, int ai[], byte abyte0[])
    {
        boolean flag;
        ByteArrayInputStream bytearrayinputstream;
        flag = false;
        bytearrayinputstream = new ByteArrayInputStream(abyte0);
        BluetoothStackWIDCOMMSDPInputStream bluetoothstackwidcommsdpinputstream = new BluetoothStackWIDCOMMSDPInputStream(bytearrayinputstream);
        BluetoothStackWIDCOMMSDPInputStream bluetoothstackwidcommsdpinputstream1 = bluetoothstackwidcommsdpinputstream;
_L5:
        int i = 0;
_L2:
        int j;
        if (i >= ai.length)
            return flag;
        j = ai[i];
        DataElement dataelement = bluetoothstackwidcommsdpinputstream1.readElement();
        if (j != 4)
            break MISSING_BLOCK_LABEL_120;
        DataElement dataelement1;
        Enumeration enumeration = (Enumeration)dataelement.getValue();
        if (!enumeration.hasMoreElements() || ((DataElement)enumeration.nextElement()).getDataType() == 48)
            break MISSING_BLOCK_LABEL_120;
        dataelement1 = new DataElement(48);
        dataelement1.addElement(dataelement);
        dataelement = dataelement1;
        servicerecordimpl.populateAttributeValue(j, dataelement);
        flag = true;
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        Throwable throwable;
        throwable;
          goto _L3
        Exception exception;
        exception;
        bluetoothstackwidcommsdpinputstream1 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

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
        if (!deviceDiscoveryListeners.removeElement(discoverylistener))
            return false;
        else
            return deviceInquiryCancelImpl();
    }

    public boolean cancelServiceSearch(int i)
    {
        return false;
    }

    public boolean cancelSniffMode(long l)
    {
        return false;
    }

    public void connectionRfCloseClientConnection(long l)
        throws IOException
    {
    }

    public void connectionRfCloseServerConnection(long l)
        throws IOException
    {
    }

    public void connectionRfFlush(long l)
        throws IOException
    {
    }

    public long connectionRfOpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams)
        throws IOException
    {
        return 0L;
    }

    public int connectionRfRead(long l)
        throws IOException
    {
        return 0;
    }

    public int connectionRfRead(long l, byte abyte0[], int i, int j)
        throws IOException
    {
        return 0;
    }

    public int connectionRfReadAvailable(long l)
        throws IOException
    {
        return 0;
    }

    public void connectionRfWrite(long l, int i)
        throws IOException
    {
    }

    public void connectionRfWrite(long l, byte abyte0[], int i, int j)
        throws IOException
    {
    }

    public void destroy()
    {
        if (initialized)
        {
            destroyImpl();
            initialized = false;
            DebugLog.debug("TOSHIBA destroyed");
        }
    }

    public native int detectBluetoothStack();

    public void deviceDiscoveredCallback(DiscoveryListener discoverylistener, long l, int i, String s, boolean flag)
    {
        RemoteDevice remotedevice;
        Vector vector;
label0:
        {
            DebugLog.debug("deviceDiscoveredCallback deviceName", s);
            if (deviceDiscoveryListeners.contains(discoverylistener))
            {
                remotedevice = RemoteDeviceHelper.createRemoteDevice(this, l, s, flag);
                vector = (Vector)deviceDiscoveryListenerReportedDevices.get(discoverylistener);
                if (vector != null && !vector.contains(remotedevice))
                {
                    Hashtable hashtable = (Hashtable)deviceDiscoveryListenerFoundDevices.get(discoverylistener);
                    if (hashtable == null)
                        break label0;
                    if ((Integer)hashtable.get(remotedevice) == null)
                    {
                        hashtable.put(remotedevice, new Integer(i));
                        return;
                    }
                    if (i != 0)
                    {
                        hashtable.put(remotedevice, new Integer(i));
                        return;
                    }
                }
            }
            return;
        }
        DeviceClass deviceclass = new DeviceClass(i);
        vector.addElement(remotedevice);
        DebugLog.debug("deviceDiscoveredCallback address", remotedevice.getBluetoothAddress());
        DebugLog.debug("deviceDiscoveredCallback deviceClass", deviceclass);
        discoverylistener.deviceDiscovered(remotedevice, deviceclass);
    }

    public native void enableNativeDebug(Class class1, boolean flag);

    public long getConnectionRfRemoteAddress(long l)
        throws IOException
    {
        return 0L;
    }

    public int getFeatureSet()
    {
        return 0;
    }

    public native int getLibraryVersion();

    public native String getLocalDeviceBluetoothAddress()
        throws BluetoothStateException;

    public DeviceClass getLocalDeviceClass()
    {
        return null;
    }

    public int getLocalDeviceDiscoverable()
    {
        return 0;
    }

    public String getLocalDeviceName()
    {
        return null;
    }

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
        if ("bluetooth.connected.page".equals(s))
            return "true";
        if ("bluetooth.sd.attr.retrievable.max".equals(s))
            return String.valueOf(65535);
        if ("bluetooth.master.switch".equals(s))
            return "false";
        if ("bluetooth.l2cap.receiveMTU.max".equals(s))
            return String.valueOf(1024);
        if ("bluecove.radio.version".equals(s))
            return String.valueOf(getDeviceVersion());
        if ("bluecove.radio.manufacturer".equals(s))
            return String.valueOf(getDeviceManufacturer());
        if ("bluecove.stack.version".equals(s))
            return getBTWVersionInfo();
        if (s.startsWith("bluecove.nativeFunction:"))
        {
            String s1 = s.substring(1 + s.indexOf(':'), s.length());
            int i = s1.indexOf(':');
            if (i == -1)
                throw new RuntimeException((new StringBuilder("Invalid native function ")).append(s1).append("; arguments expected").toString());
            String s2 = s1.substring(0, i);
            long l = RemoteDeviceHelper.getAddress(s1.substring(1 + s2.length(), s1.length()));
            if ("getRemoteDeviceVersionInfo".equals(s2))
                return getRemoteDeviceVersionInfo(l);
            if ("cancelSniffMode".equals(s2))
                return String.valueOf(cancelSniffMode(l));
            if ("setSniffMode".equals(s2))
                return String.valueOf(setSniffMode(l));
            if ("getRemoteDeviceRSSI".equals(s2))
                return String.valueOf(getRemoteDeviceRSSI(l));
            if ("getRemoteDeviceLinkMode".equals(s2))
                if (isRemoteDeviceConnected(l))
                    return getRemoteDeviceLinkMode(l);
                else
                    return "disconnected";
        }
        return null;
    }

    public String getRemoteDeviceFriendlyName(long l)
        throws IOException
    {
        return getRemoteDeviceFriendlyNameImpl(l);
    }

    public String getRemoteDeviceLinkMode(long l)
    {
        return "";
    }

    public int getRemoteDeviceRSSI(long l)
    {
        return 0;
    }

    public String getRemoteDeviceVersionInfo(long l)
    {
        return "";
    }

    public String getStackID()
    {
        return "toshiba";
    }

    public void initialize()
        throws BluetoothStateException
    {
        if (!initializeImpl())
        {
            throw new BluetoothStateException("TOSHIBA BluetoothStack not found");
        } else
        {
            initialized = true;
            return;
        }
    }

    public boolean isCurrentThreadInterruptedCallback()
    {
        return UtilsJavaSE.isCurrentThreadInterrupted();
    }

    public boolean isLocalDevicePowerOn()
    {
        return true;
    }

    public native boolean isNativeCodeLoaded();

    public Boolean isRemoteDeviceAuthenticated(long l)
    {
        return null;
    }

    public boolean isRemoteDeviceConnected(long l)
    {
        return true;
    }

    public Boolean isRemoteDeviceTrusted(long l)
    {
        return null;
    }

    public void l2CloseClientConnection(long l)
        throws IOException
    {
    }

    public void l2CloseServerConnection(long l)
        throws IOException
    {
    }

    public boolean l2Encrypt(long l, long l1, boolean flag)
        throws IOException
    {
        return false;
    }

    public int l2GetReceiveMTU(long l)
        throws IOException
    {
        return 0;
    }

    public int l2GetSecurityOpt(long l, int i)
        throws IOException
    {
        return i;
    }

    public int l2GetTransmitMTU(long l)
        throws IOException
    {
        return 0;
    }

    public long l2OpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams, int i, int j)
        throws IOException
    {
        return 0L;
    }

    public boolean l2Ready(long l)
        throws IOException
    {
        return false;
    }

    public int l2Receive(long l, byte abyte0[])
        throws IOException
    {
        return 0;
    }

    public long l2RemoteAddress(long l)
        throws IOException
    {
        return 0L;
    }

    public void l2Send(long l, byte abyte0[], int i)
        throws IOException
    {
    }

    public long l2ServerAcceptAndOpenServerConnection(long l)
        throws IOException
    {
        return 0L;
    }

    public void l2ServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
    }

    public long l2ServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, int i, int j, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        return 0L;
    }

    public void l2ServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
    }

    public boolean populateServicesRecordAttributeValues(ServiceRecordImpl servicerecordimpl, int ai[])
        throws IOException
    {
        if (ai.length > 65535)
            throw new IllegalArgumentException();
        short word0;
        byte abyte0[];
        try
        {
            word0 = connectSDPImpl(RemoteDeviceHelper.getAddress(servicerecordimpl.getHostDevice().getBluetoothAddress()));
        }
        catch (Exception exception)
        {
            return false;
        }
        try
        {
            abyte0 = populateWorkerImpl(word0, servicerecordimpl.getHandle(), ai);
        }
        catch (Exception exception1)
        {
            disconnectSDPImpl(word0);
            return false;
        }
        if (abyte0 == null)
        {
            return false;
        } else
        {
            boolean flag = setAttributes(servicerecordimpl, ai, abyte0);
            disconnectSDPImpl(word0);
            return flag;
        }
    }

    public void removeAuthenticationWithRemoteDevice(long l)
        throws IOException
    {
    }

    public BluetoothStack.LibraryInformation[] requireNativeLibraries()
    {
        return BluetoothStack.LibraryInformation.library("bluecove");
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
        return i;
    }

    public long rfServerAcceptAndOpenRfServerConnection(long l)
        throws IOException
    {
        return 0L;
    }

    public void rfServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
    }

    public long rfServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        return 0L;
    }

    public void rfServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
    }

    public int runDeviceInquiry(DeviceInquiryThread deviceinquirythread, int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        int j = runDeviceInquiryImpl(deviceinquirythread, i, discoverylistener);
        if (j != 0) goto _L2; else goto _L1
_L1:
        Hashtable hashtable = (Hashtable)deviceDiscoveryListenerFoundDevices.get(discoverylistener);
        if (hashtable == null) goto _L2; else goto _L3
_L3:
        Vector vector;
        Enumeration enumeration;
        vector = (Vector)deviceDiscoveryListenerReportedDevices.get(discoverylistener);
        enumeration = hashtable.keys();
_L6:
        boolean flag = enumeration.hasMoreElements();
        if (flag) goto _L4; else goto _L2
_L2:
        deviceDiscoveryListeners.removeElement(discoverylistener);
        deviceDiscoveryListenerFoundDevices.remove(discoverylistener);
        deviceDiscoveryListenerReportedDevices.remove(discoverylistener);
        return j;
_L4:
        RemoteDevice remotedevice = (RemoteDevice)enumeration.nextElement();
        if (vector.contains(remotedevice)) goto _L6; else goto _L5
_L5:
        boolean flag1;
        vector.addElement(remotedevice);
        discoverylistener.deviceDiscovered(remotedevice, new DeviceClass(((Integer)hashtable.get(remotedevice)).intValue()));
        flag1 = deviceDiscoveryListeners.contains(discoverylistener);
        if (flag1) goto _L6; else goto _L7
_L7:
        deviceDiscoveryListeners.removeElement(discoverylistener);
        deviceDiscoveryListenerFoundDevices.remove(discoverylistener);
        deviceDiscoveryListenerReportedDevices.remove(discoverylistener);
        return 5;
        Exception exception;
        exception;
        deviceDiscoveryListeners.removeElement(discoverylistener);
        deviceDiscoveryListenerFoundDevices.remove(discoverylistener);
        deviceDiscoveryListenerReportedDevices.remove(discoverylistener);
        throw exception;
    }

    public int runSearchServices(SearchServicesThread searchservicesthread, int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        short word0;
        byte abyte0[][];
        int i;
        long al[];
        int ai1[];
        try
        {
            word0 = connectSDPImpl(RemoteDeviceHelper.getAddress(remotedevice.getBluetoothAddress()));
        }
        catch (Exception exception)
        {
            return 6;
        }
        ai1 = (new int[] {
            auuid.length, 16
        });
        abyte0 = (byte[][])Array.newInstance(Byte.TYPE, ai1);
        i = 0;
_L4:
        ServiceRecordImpl aservicerecordimpl[];
        int k;
        if (i >= auuid.length)
        {
            String s;
            int j;
            String s1;
            try
            {
                al = searchServicesImpl(searchservicesthread, word0, abyte0);
            }
            catch (Exception exception1)
            {
                disconnectSDPImpl(word0);
                return 3;
            }
            if (al.length <= 0)
            {
                disconnectSDPImpl(word0);
                return 4;
            }
        } else
        {
            abyte0[i] = new byte[16];
            s = auuid[i].toString();
            j = 0;
            do
            {
                if (j >= 16)
                {
                    i++;
                    continue; /* Loop/switch isn't completed */
                }
                s1 = s.substring(j * 2, 2 + j * 2).toUpperCase();
                abyte0[i][j] = (byte)Integer.parseInt(s1, 16);
                j++;
            } while (true);
        }
        aservicerecordimpl = new ServiceRecordImpl[al.length];
        k = 0;
_L2:
        if (k >= al.length)
        {
            discoverylistener.servicesDiscovered(searchservicesthread.getTransID(), aservicerecordimpl);
            disconnectSDPImpl(word0);
            return 1;
        }
        aservicerecordimpl[k] = new ServiceRecordImpl(this, remotedevice, al[k]);
        byte abyte1[] = populateWorkerImpl(word0, al[k], ai);
        if (abyte1 != null)
            setAttributes(aservicerecordimpl[k], ai, abyte1);
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception2;
        exception2;
        disconnectSDPImpl(word0);
        return 3;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        return SearchServicesThread.startSearchServices(this, this, ai, auuid, remotedevice, discoverylistener);
    }

    public boolean setLocalDeviceDiscoverable(int i)
        throws BluetoothStateException
    {
        return false;
    }

    public void setLocalDeviceServiceClasses(int i)
    {
    }

    public boolean setSniffMode(long l)
    {
        return false;
    }

    public boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        deviceDiscoveryListeners.addElement(discoverylistener);
        if (BlueCoveImpl.getConfigProperty("bluecove.inquiry.report_asap", false))
            deviceDiscoveryListenerFoundDevices.put(discoverylistener, new Hashtable());
        deviceDiscoveryListenerReportedDevices.put(discoverylistener, new Vector());
        return DeviceInquiryThread.startInquiry(this, this, i, discoverylistener);
    }

    public String toString()
    {
        return getStackID();
    }
}
