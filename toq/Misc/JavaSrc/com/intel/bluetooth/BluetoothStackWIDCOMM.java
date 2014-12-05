// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.*;
import java.util.*;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothStack, BluetoothStackExtension, SearchServicesTerminatedException, SDPOutputStream, 
//            ServiceRecordImpl, BluetoothStackWIDCOMMSDPInputStream, Utils, SearchServicesThread, 
//            BluetoothConnectionParams, DebugLog, RemoteDeviceHelper, DiscoveryListenerAdapter, 
//            UtilsJavaSE, BluetoothConnectionNotifierParams, BluetoothConsts, NotSupportedRuntimeException, 
//            BlueCoveImpl, DeviceInquiryThread, DeviceInquiryRunnable, SearchServicesRunnable

class BluetoothStackWIDCOMM
    implements BluetoothStack, BluetoothStackExtension
{

    private static final int ATTR_RETRIEVABLE_MAX = 256;
    static final short BOOLEAN_DESC_TYPE = 5;
    static final short DATA_ELE_ALT_DESC_TYPE = 7;
    static final short DATA_ELE_SEQ_DESC_TYPE = 6;
    static final short NULL_DESC_TYPE = 0;
    private static final int RECEIVE_MTU_MAX = 1024;
    static final short TEXT_STR_DESC_TYPE = 4;
    static final short TWO_COMP_INT_DESC_TYPE = 2;
    static final short UINT_DESC_TYPE = 1;
    static final short URL_DESC_TYPE = 8;
    static final short UUID_DESC_TYPE = 3;
    private static BluetoothStackWIDCOMM singleInstance = null;
    private Hashtable deviceDiscoveryListenerFoundDevices;
    private Hashtable deviceDiscoveryListenerReportedDevices;
    private Vector deviceDiscoveryListeners;
    private boolean initialized;

    BluetoothStackWIDCOMM()
    {
        initialized = false;
        deviceDiscoveryListeners = new Vector();
        deviceDiscoveryListenerFoundDevices = new Hashtable();
        deviceDiscoveryListenerReportedDevices = new Hashtable();
    }

    private native boolean authenticateRemoteDeviceImpl(long l, String s)
        throws IOException;

    private native void cancelServiceSearchImpl();

    private native boolean cancelSniffMode(long l);

    private native void closeRfCommPortImpl(long l)
        throws IOException;

    private native long connectionRfOpenClientConnectionImpl(long l, int i, boolean flag, boolean flag1, int j)
        throws IOException;

    private native void connectionRfWriteImpl(long l, byte abyte0[], int i, int j)
        throws IOException;

    private native boolean deviceInquiryCancelImpl();

    private native String getBTWVersionInfo();

    private native int getDeviceClassImpl();

    private native int getDeviceManufacturer();

    private native int getDeviceVersion();

    private native String getRemoteDeviceLinkMode(long l);

    private native int getRemoteDeviceRSSI(long l);

    private native String getRemoteDeviceVersionInfo(long l);

    private native byte[] getServiceAttribute(int i, long l)
        throws IOException;

    private native boolean isRemoteDeviceConnected(long l);

    private native boolean isServiceRecordDiscoverable(long l, long l1)
        throws IOException;

    private native boolean isStackServerUp();

    private native long l2OpenClientConnectionImpl(long l, int i, boolean flag, boolean flag1, int j, int k, 
            int i1)
        throws IOException;

    private native void l2ServerCloseImpl(long l)
        throws IOException;

    private synchronized native long l2ServerOpenImpl(byte abyte0[], boolean flag, boolean flag1, String s, int i, int j, int k)
        throws IOException;

    private byte[] long2byte(long l, int i)
    {
        byte abyte0[] = new byte[i];
        long l1 = l;
        int j = i - 1;
        do
        {
            if (j < 0)
                return abyte0;
            abyte0[j] = (byte)(int)(255L & l1);
            l1 >>= 8;
            j--;
        } while (true);
    }

    private native int nativeBuildFeatures();

    private native void removeAuthenticationWithRemoteDeviceImpl(long l)
        throws IOException;

    private native void rfServerCloseImpl(long l)
        throws IOException;

    private synchronized native long rfServerOpenImpl(byte abyte0[], byte abyte1[], boolean flag, String s, boolean flag1, boolean flag2)
        throws IOException;

    private native int rfServerSCN(long l)
        throws IOException;

    private native int runDeviceInquiryImpl(DeviceInquiryRunnable deviceinquiryrunnable, DeviceInquiryThread deviceinquirythread, int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException;

    private native long[] runSearchServicesImpl(SearchServicesThread searchservicesthread, byte abyte0[], long l)
        throws BluetoothStateException, SearchServicesTerminatedException;

    private native void sdpServiceAddAttribute(long l, char c, int i, short word0, byte abyte0[])
        throws ServiceRegistrationException;

    private native void sdpServiceAddServiceClassIdList(long l, char c, byte abyte0[][])
        throws ServiceRegistrationException;

    private byte[] sdpServiceSequenceAttribute(Enumeration enumeration)
        throws ServiceRegistrationException
    {
        ByteArrayOutputStream bytearrayoutputstream;
        SDPOutputStream sdpoutputstream;
        bytearrayoutputstream = new ByteArrayOutputStream();
        sdpoutputstream = new SDPOutputStream(bytearrayoutputstream);
_L1:
        boolean flag;
        try
        {
            flag = enumeration.hasMoreElements();
        }
        catch (IOException ioexception)
        {
            throw new ServiceRegistrationException(ioexception.getMessage());
        }
        if (!flag)
            return bytearrayoutputstream.toByteArray();
        sdpoutputstream.writeElement((DataElement)enumeration.nextElement());
          goto _L1
    }

    private void sdpServiceUpdateServiceRecord(long l, char c, ServiceRecordImpl servicerecordimpl)
        throws ServiceRegistrationException
    {
        int ai[] = servicerecordimpl.getAttributeIDs();
        if (ai == null || ai.length == 0) goto _L2; else goto _L1
_L1:
        Enumeration enumeration;
        Vector vector;
        DataElement dataelement = servicerecordimpl.getAttributeValue(1);
        if (dataelement.getDataType() != 48)
            throw new ServiceRegistrationException("Invalid serviceClassIDList");
        enumeration = (Enumeration)dataelement.getValue();
        vector = new Vector();
_L32:
        if (enumeration.hasMoreElements()) goto _L4; else goto _L3
_L3:
        if (vector.size() <= 0) goto _L6; else goto _L5
_L5:
        byte abyte1[][];
        int i1;
        abyte1 = new byte[vector.size()][];
        i1 = 0;
_L30:
        int j1 = abyte1.length;
        if (i1 < j1) goto _L8; else goto _L7
_L7:
        sdpServiceAddServiceClassIdList(l, c, abyte1);
_L6:
        int i = 0;
_L29:
        if (i >= ai.length) goto _L2; else goto _L9
_L9:
        int j = ai[i];
        j;
        JVM INSTR lookupswitch 4: default 180
    //                   0: 708
    //                   1: 708
    //                   4: 708
    //                   256: 708;
           goto _L10 _L11 _L11 _L11 _L11
_L10:
        DataElement dataelement2 = servicerecordimpl.getAttributeValue(j);
        dataelement2.getDataType();
        JVM INSTR lookupswitch 17: default 714
    //                   0: 456
    //                   8: 689
    //                   9: 667
    //                   10: 645
    //                   11: 625
    //                   12: 625
    //                   16: 603
    //                   17: 581
    //                   18: 559
    //                   19: 536
    //                   20: 516
    //                   24: 390
    //                   32: 469
    //                   40: 413
    //                   48: 365
    //                   56: 340
    //                   64: 492;
           goto _L12 _L13 _L14 _L15 _L16 _L17 _L17 _L18 _L19 _L20 _L21 _L22 _L23 _L24 _L25 _L26 _L27 _L28
_L27:
        sdpServiceAddAttribute(l, c, j, (short)7, sdpServiceSequenceAttribute((Enumeration)dataelement2.getValue()));
        break; /* Loop/switch isn't completed */
_L26:
        sdpServiceAddAttribute(l, c, j, (short)6, sdpServiceSequenceAttribute((Enumeration)dataelement2.getValue()));
        break; /* Loop/switch isn't completed */
_L23:
        sdpServiceAddAttribute(l, c, j, (short)3, BluetoothStackWIDCOMMSDPInputStream.getUUIDHexBytes((UUID)dataelement2.getValue()));
        break; /* Loop/switch isn't completed */
_L25:
        byte abyte0[] = new byte[1];
        int k;
        if (dataelement2.getBoolean())
            k = 1;
        else
            k = 0;
        abyte0[0] = (byte)k;
        sdpServiceAddAttribute(l, c, j, (short)5, abyte0);
        break; /* Loop/switch isn't completed */
_L13:
        sdpServiceAddAttribute(l, c, j, (short)0, null);
        break; /* Loop/switch isn't completed */
_L24:
        sdpServiceAddAttribute(l, c, j, (short)4, Utils.getUTF8Bytes(dataelement2.getValue().toString()));
        break; /* Loop/switch isn't completed */
_L28:
        sdpServiceAddAttribute(l, c, j, (short)8, Utils.getASCIIBytes(dataelement2.getValue().toString()));
        break; /* Loop/switch isn't completed */
_L22:
        sdpServiceAddAttribute(l, c, j, (short)2, (byte[])dataelement2.getValue());
        break; /* Loop/switch isn't completed */
_L21:
        sdpServiceAddAttribute(l, c, j, (short)2, long2byte(dataelement2.getLong(), 8));
        break; /* Loop/switch isn't completed */
_L20:
        sdpServiceAddAttribute(l, c, j, (short)2, long2byte(dataelement2.getLong(), 4));
        break; /* Loop/switch isn't completed */
_L19:
        sdpServiceAddAttribute(l, c, j, (short)2, long2byte(dataelement2.getLong(), 2));
        break; /* Loop/switch isn't completed */
_L18:
        sdpServiceAddAttribute(l, c, j, (short)2, long2byte(dataelement2.getLong(), 1));
        break; /* Loop/switch isn't completed */
_L17:
        sdpServiceAddAttribute(l, c, j, (short)1, (byte[])dataelement2.getValue());
        break; /* Loop/switch isn't completed */
_L16:
        sdpServiceAddAttribute(l, c, j, (short)1, long2byte(dataelement2.getLong(), 4));
        break; /* Loop/switch isn't completed */
_L15:
        sdpServiceAddAttribute(l, c, j, (short)1, long2byte(dataelement2.getLong(), 2));
        break; /* Loop/switch isn't completed */
_L14:
        sdpServiceAddAttribute(l, c, j, (short)1, long2byte(dataelement2.getLong(), 1));
_L11:
        i++;
          goto _L29
_L12:
        throw new ServiceRegistrationException((new StringBuilder("Invalid ")).append(dataelement2.getDataType()).toString());
_L2:
        return;
_L8:
        abyte1[i1] = Utils.UUIDToByteArray((UUID)vector.elementAt(i1));
        i1++;
        if (true) goto _L30; else goto _L4
_L4:
        DataElement dataelement1 = (DataElement)enumeration.nextElement();
        if (dataelement1.getDataType() != 24)
            throw new ServiceRegistrationException((new StringBuilder("Invalid serviceClassIDList element ")).append(dataelement1).toString());
        vector.add(dataelement1.getValue());
        if (true) goto _L32; else goto _L31
_L31:
    }

    private native boolean setSniffMode(long l);

    private native void uninitialize();

    private void validateMTU(int i, int j)
    {
        if (i > 1024)
            throw new IllegalArgumentException((new StringBuilder("invalid ReceiveMTU value ")).append(i).toString());
        else
            return;
    }

    private void verifyDeviceReady()
        throws BluetoothStateException
    {
        this;
        JVM INSTR monitorenter ;
        if (!isLocalDevicePowerOn())
            throw new BluetoothStateException("Bluetooth Device is not ready");
        break MISSING_BLOCK_LABEL_25;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
    }

    public boolean authenticateRemoteDevice(long l)
        throws IOException
    {
        return false;
    }

    public boolean authenticateRemoteDevice(long l, String s)
        throws IOException
    {
        return authenticateRemoteDeviceImpl(l, s);
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
            break MISSING_BLOCK_LABEL_41;
        this;
        JVM INSTR monitorenter ;
        if (searchservicesthread.isTerminated())
            break MISSING_BLOCK_LABEL_31;
        searchservicesthread.setTerminated();
        cancelServiceSearchImpl();
        this;
        JVM INSTR monitorexit ;
        return true;
        this;
        JVM INSTR monitorexit ;
        break MISSING_BLOCK_LABEL_41;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        return false;
    }

    public void connectionRfCloseClientConnection(long l)
        throws IOException
    {
        closeRfCommPortImpl(l);
    }

    public native void connectionRfCloseServerConnection(long l)
        throws IOException;

    public void connectionRfFlush(long l)
        throws IOException
    {
    }

    public long connectionRfOpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams)
        throws IOException
    {
        verifyDeviceReady();
        return connectionRfOpenClientConnectionImpl(bluetoothconnectionparams.address, bluetoothconnectionparams.channel, bluetoothconnectionparams.authenticate, bluetoothconnectionparams.encrypt, bluetoothconnectionparams.timeout);
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
        connectionRfWriteImpl(l, abyte0, 0, 1);
    }

    public void connectionRfWrite(long l, byte abyte0[], int i, int j)
        throws IOException
    {
        if (j < 65535)
        {
            connectionRfWriteImpl(l, abyte0, i, j);
        } else
        {
            for (int k = 0; k < j; k--)
            {
                int i1 = j - k;
                if (i1 > 65535)
                    i1 = 65535;
                connectionRfWriteImpl(l, abyte0, i + k, i1);
            }

        }
    }

    public void destroy()
    {
        if (singleInstance != this)
            throw new RuntimeException("Destroy invalid instance");
        if (initialized)
        {
            uninitialize();
            initialized = false;
            DebugLog.debug("WIDCOMM destroyed");
        }
        singleInstance = null;
    }

    public native int detectBluetoothStack();

    public native void enableNativeDebug(Class class1, boolean flag);

    protected void finalize()
    {
        destroy();
    }

    public native long getConnectionRfRemoteAddress(long l)
        throws IOException;

    public int getFeatureSet()
    {
        byte byte0;
        if (nativeBuildFeatures() > 0)
            byte0 = 8;
        else
            byte0 = 0;
        return byte0 | 0x13;
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
        return !isStackServerUp() || !isLocalDeviceDiscoverable() ? 0 : 0x9e8b33;
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
        if ("bluetooth.connected.page".equals(s))
            return "true";
        if ("bluetooth.sd.attr.retrievable.max".equals(s))
            return String.valueOf(256);
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
        if (deviceDiscoveryListeners.size() != 0)
            return peekRemoteDeviceFriendlyName(l);
        DiscoveryListenerAdapter discoverylisteneradapter = new DiscoveryListenerAdapter();
        if (startInquiry(0x9e8b33, discoverylisteneradapter))
        {
            String s = peekRemoteDeviceFriendlyName(l);
            cancelInquiry(discoverylisteneradapter);
            return s;
        } else
        {
            return null;
        }
    }

    native String getRemoteDeviceFriendlyName(long l, int i, int j)
        throws IOException;

    public String getStackID()
    {
        return "widcomm";
    }

    public void initialize()
        throws BluetoothStateException
    {
        if (singleInstance != null)
            throw new BluetoothStateException((new StringBuilder("Only one instance of ")).append(getStackID()).append(" stack supported").toString());
        if (!initializeImpl())
        {
            throw new RuntimeException("WIDCOMM BluetoothStack not found");
        } else
        {
            initialized = true;
            singleInstance = this;
            return;
        }
    }

    public native boolean initializeImpl();

    public boolean isCurrentThreadInterruptedCallback()
    {
        return UtilsJavaSE.isCurrentThreadInterrupted();
    }

    public native boolean isLocalDeviceDiscoverable();

    public native boolean isLocalDevicePowerOn();

    public native boolean isNativeCodeLoaded();

    public Boolean isRemoteDeviceAuthenticated(long l)
    {
        return null;
    }

    public Boolean isRemoteDeviceTrusted(long l)
    {
        return null;
    }

    public native void l2CloseClientConnection(long l)
        throws IOException;

    public native void l2CloseServerConnection(long l)
        throws IOException;

    public boolean l2Encrypt(long l, long l1, boolean flag)
        throws IOException
    {
        return false;
    }

    public native int l2GetReceiveMTU(long l)
        throws IOException;

    public int l2GetSecurityOpt(long l, int i)
        throws IOException
    {
        return i;
    }

    public native int l2GetTransmitMTU(long l)
        throws IOException;

    public long l2OpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams, int i, int j)
        throws IOException
    {
        verifyDeviceReady();
        validateMTU(i, j);
        return l2OpenClientConnectionImpl(bluetoothconnectionparams.address, bluetoothconnectionparams.channel, bluetoothconnectionparams.authenticate, bluetoothconnectionparams.encrypt, i, j, bluetoothconnectionparams.timeout);
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
        long l = l2ServerOpenImpl(Utils.UUIDToByteArray(bluetoothconnectionnotifierparams.uuid), bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt, bluetoothconnectionnotifierparams.name, i, j, bluetoothconnectionnotifierparams.bluecove_ext_psm);
        int k = l2ServerPSM(l);
        servicerecordimpl.populateL2CAPAttributes((int)l, k, bluetoothconnectionnotifierparams.uuid, bluetoothconnectionnotifierparams.name);
        return l;
    }

    public native int l2ServerPSM(long l)
        throws IOException;

    public void l2ServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        sdpServiceUpdateServiceRecord(l, 'l', servicerecordimpl);
    }

    native String peekRemoteDeviceFriendlyName(long l);

    public boolean populateServicesRecordAttributeValues(ServiceRecordImpl servicerecordimpl, int ai[])
        throws IOException
    {
        boolean flag;
        int i;
        if (ai.length > 256)
            throw new IllegalArgumentException();
        flag = false;
        i = 0;
_L2:
        int j;
        if (i >= ai.length)
            return flag;
        j = ai[i];
        byte abyte0[] = getServiceAttribute(j, servicerecordimpl.getHandle());
        if (abyte0 == null)
            break MISSING_BLOCK_LABEL_150;
        DataElement dataelement = (new BluetoothStackWIDCOMMSDPInputStream(new ByteArrayInputStream(abyte0))).readElement();
        if (j != 4)
            break MISSING_BLOCK_LABEL_140;
        DataElement dataelement1;
        Enumeration enumeration = (Enumeration)dataelement.getValue();
        if (!enumeration.hasMoreElements() || ((DataElement)enumeration.nextElement()).getDataType() == 48)
            break MISSING_BLOCK_LABEL_140;
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
    }

    public int readRemoteDeviceRSSI(long l)
        throws IOException
    {
        return getRemoteDeviceRSSI(l);
    }

    public void removeAuthenticationWithRemoteDevice(long l)
        throws IOException
    {
        removeAuthenticationWithRemoteDeviceImpl(l);
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
        verifyDeviceReady();
        byte abyte0[] = Utils.UUIDToByteArray(bluetoothconnectionnotifierparams.uuid);
        byte abyte1[];
        if (bluetoothconnectionnotifierparams.obex)
            abyte1 = null;
        else
            abyte1 = Utils.UUIDToByteArray(BluetoothConsts.SERIAL_PORT_UUID);
        long l = rfServerOpenImpl(abyte0, abyte1, bluetoothconnectionnotifierparams.obex, bluetoothconnectionnotifierparams.name, bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt);
        int i = rfServerSCN(l);
        DebugLog.debug("serverSCN", i);
        servicerecordimpl.populateRFCOMMAttributes(l, i, bluetoothconnectionnotifierparams.uuid, bluetoothconnectionnotifierparams.name, bluetoothconnectionnotifierparams.obex);
        return l;
    }

    public void rfServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        sdpServiceUpdateServiceRecord(l, 'r', servicerecordimpl);
    }

    public int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        return SearchServicesThread.startSearchServices(this, new SearchServicesRunnable() {

            final BluetoothStackWIDCOMM this$0;

            public int runSearchServices(SearchServicesThread searchservicesthread, int ai1[], UUID auuid1[], RemoteDevice remotedevice1, DiscoveryListener discoverylistener1)
                throws BluetoothStateException
            {
                com/intel/bluetooth/BluetoothStackWIDCOMM;
                JVM INSTR monitorenter ;
                byte abyte0[] = Utils.UUIDToByteArray(BluetoothConsts.L2CAP_PROTOCOL_UUID);
                int i = 0;
_L20:
                int j = auuid1.length;
                if (i < j) goto _L2; else goto _L1
_L1:
                long al[] = runSearchServicesImpl(searchservicesthread, abyte0, RemoteDeviceHelper.getAddress(remotedevice1));
                if (al != null) goto _L4; else goto _L3
_L3:
                DebugLog.debug("SERVICE_SEARCH_ERROR");
                com/intel/bluetooth/BluetoothStackWIDCOMM;
                JVM INSTR monitorexit ;
                return 3;
_L2:
                if (!auuid1[i].equals(BluetoothConsts.L2CAP_PROTOCOL_UUID)) goto _L6; else goto _L5
_L6:
                if (!auuid1[i].equals(BluetoothConsts.RFCOMM_PROTOCOL_UUID)) goto _L8; else goto _L7
_L7:
                abyte0 = Utils.UUIDToByteArray(auuid1[i]);
                  goto _L5
_L8:
                abyte0 = Utils.UUIDToByteArray(auuid1[i]);
                  goto _L1
                SearchServicesTerminatedException searchservicesterminatedexception;
                searchservicesterminatedexception;
                DebugLog.debug("SERVICE_SEARCH_TERMINATED");
                com/intel/bluetooth/BluetoothStackWIDCOMM;
                JVM INSTR monitorexit ;
                return 2;
_L4:
                if (al.length <= 0) goto _L10; else goto _L9
_L9:
                Vector vector;
                int ai2[];
                int ai3[];
                vector = new Vector();
                ai2 = (new int[] {
                    1, 4
                });
                ai3 = new int[3];
                ai3[1] = 2;
                ai3[2] = 3;
                int k = 0;
_L21:
                if (k < al.length) goto _L12; else goto _L11
_L11:
                if (vector.size() == 0) goto _L10; else goto _L13
_L13:
                DebugLog.debug("SERVICE_SEARCH_COMPLETED");
                ServiceRecord aservicerecord[] = (ServiceRecord[])Utils.vector2toArray(vector, new ServiceRecord[vector.size()]);
                discoverylistener1.servicesDiscovered(searchservicesthread.getTransID(), aservicerecord);
                com/intel/bluetooth/BluetoothStackWIDCOMM;
                JVM INSTR monitorexit ;
                return 1;
_L12:
                ServiceRecordImpl servicerecordimpl = new ServiceRecordImpl(BluetoothStackWIDCOMM.this, remotedevice1, al[k]);
                servicerecordimpl.populateRecord(ai2);
                int l = 0;
_L22:
                if (l < auuid1.length) goto _L15; else goto _L14
_L14:
                if (isServiceRecordDiscoverable(RemoteDeviceHelper.getAddress(remotedevice1), servicerecordimpl.getHandle())) goto _L17; else goto _L16
_L15:
                if (servicerecordimpl.hasServiceClassUUID(auuid1[l]) || servicerecordimpl.hasProtocolClassUUID(auuid1[l]))
                    break MISSING_BLOCK_LABEL_455;
                  goto _L16
_L17:
                vector.addElement(servicerecordimpl);
                servicerecordimpl.populateRecord(ai3);
                if (ai1 == null)
                    break MISSING_BLOCK_LABEL_339;
                servicerecordimpl.populateRecord(ai1);
                DebugLog.debug((new StringBuilder("ServiceRecord (")).append(k).append(") sr.handle").toString(), al[k]);
                DebugLog.debug((new StringBuilder("ServiceRecord (")).append(k).append(")").toString(), servicerecordimpl);
_L19:
                if (!searchservicesthread.isTerminated()) goto _L16; else goto _L18
_L18:
                DebugLog.debug("SERVICE_SEARCH_TERMINATED");
                com/intel/bluetooth/BluetoothStackWIDCOMM;
                JVM INSTR monitorexit ;
                return 2;
                Exception exception1;
                exception1;
                DebugLog.debug("populateRecord error", exception1);
                  goto _L19
                Exception exception;
                exception;
                com/intel/bluetooth/BluetoothStackWIDCOMM;
                JVM INSTR monitorexit ;
                throw exception;
_L10:
                DebugLog.debug("SERVICE_SEARCH_NO_RECORDS");
                com/intel/bluetooth/BluetoothStackWIDCOMM;
                JVM INSTR monitorexit ;
                return 4;
_L5:
                i++;
                  goto _L20
_L16:
                k++;
                  goto _L21
                l++;
                  goto _L22
            }

            
            {
                this$0 = BluetoothStackWIDCOMM.this;
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
        throw new NotSupportedRuntimeException(getStackID());
    }

    public boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        deviceDiscoveryListeners.addElement(discoverylistener);
        if (BlueCoveImpl.getConfigProperty("bluecove.inquiry.report_asap", false))
            deviceDiscoveryListenerFoundDevices.put(discoverylistener, new Hashtable());
        deviceDiscoveryListenerReportedDevices.put(discoverylistener, new Vector());
        return DeviceInquiryThread.startInquiry(this, new DeviceInquiryRunnable() {

            final BluetoothStackWIDCOMM this$0;

            public void deviceDiscoveredCallback(DiscoveryListener discoverylistener1, long l, int j, String s, boolean flag)
            {
                RemoteDevice remotedevice;
                Vector vector;
label0:
                {
                    DebugLog.debug("deviceDiscoveredCallback deviceName", s);
                    if (deviceDiscoveryListeners.contains(discoverylistener1))
                    {
                        remotedevice = RemoteDeviceHelper.createRemoteDevice(BluetoothStackWIDCOMM.this, l, s, flag);
                        vector = (Vector)deviceDiscoveryListenerReportedDevices.get(discoverylistener1);
                        if (vector != null && !vector.contains(remotedevice))
                        {
                            Hashtable hashtable = (Hashtable)deviceDiscoveryListenerFoundDevices.get(discoverylistener1);
                            if (hashtable == null)
                                break label0;
                            if ((Integer)hashtable.get(remotedevice) == null)
                            {
                                hashtable.put(remotedevice, new Integer(j));
                                return;
                            }
                            if (j != 0)
                            {
                                hashtable.put(remotedevice, new Integer(j));
                                return;
                            }
                        }
                    }
                    return;
                }
                DeviceClass deviceclass = new DeviceClass(j);
                vector.addElement(remotedevice);
                DebugLog.debug("deviceDiscoveredCallback address", remotedevice.getBluetoothAddress());
                DebugLog.debug("deviceDiscoveredCallback deviceClass", deviceclass);
                discoverylistener1.deviceDiscovered(remotedevice, deviceclass);
            }

            public int runDeviceInquiry(DeviceInquiryThread deviceinquirythread, int j, DiscoveryListener discoverylistener1)
                throws BluetoothStateException
            {
                int k = runDeviceInquiryImpl(this, deviceinquirythread, j, discoverylistener1);
                if (k != 0) goto _L2; else goto _L1
_L1:
                Hashtable hashtable = (Hashtable)deviceDiscoveryListenerFoundDevices.get(discoverylistener1);
                if (hashtable == null) goto _L2; else goto _L3
_L3:
                Vector vector;
                Enumeration enumeration;
                vector = (Vector)deviceDiscoveryListenerReportedDevices.get(discoverylistener1);
                enumeration = hashtable.keys();
_L6:
                boolean flag = enumeration.hasMoreElements();
                if (flag) goto _L4; else goto _L2
_L2:
                deviceDiscoveryListeners.removeElement(discoverylistener1);
                deviceDiscoveryListenerFoundDevices.remove(discoverylistener1);
                deviceDiscoveryListenerReportedDevices.remove(discoverylistener1);
                return k;
_L4:
                RemoteDevice remotedevice = (RemoteDevice)enumeration.nextElement();
                if (vector.contains(remotedevice)) goto _L6; else goto _L5
_L5:
                boolean flag1;
                vector.addElement(remotedevice);
                discoverylistener1.deviceDiscovered(remotedevice, new DeviceClass(((Integer)hashtable.get(remotedevice)).intValue()));
                flag1 = deviceDiscoveryListeners.contains(discoverylistener1);
                if (flag1) goto _L6; else goto _L7
_L7:
                deviceDiscoveryListeners.removeElement(discoverylistener1);
                deviceDiscoveryListenerFoundDevices.remove(discoverylistener1);
                deviceDiscoveryListenerReportedDevices.remove(discoverylistener1);
                return 5;
                Exception exception;
                exception;
                deviceDiscoveryListeners.removeElement(discoverylistener1);
                deviceDiscoveryListenerFoundDevices.remove(discoverylistener1);
                deviceDiscoveryListenerReportedDevices.remove(discoverylistener1);
                throw exception;
            }

            
            {
                this$0 = BluetoothStackWIDCOMM.this;
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
