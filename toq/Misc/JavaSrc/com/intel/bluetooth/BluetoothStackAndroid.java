// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothClass;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothServerSocket;
import android.bluetooth.BluetoothSocket;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.bluetooth.BluetoothStateException;
import javax.bluetooth.DeviceClass;
import javax.bluetooth.DiscoveryListener;
import javax.bluetooth.RemoteDevice;
import javax.bluetooth.ServiceRecord;
import javax.bluetooth.ServiceRegistrationException;
import javax.bluetooth.UUID;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothStack, RemoteDeviceHelper, AndroidServiceRecord, SearchServicesThread, 
//            AndroidBluetoothConnection, AndroidBluetoothConnectionParams, BluetoothConnectionParams, BlueCoveImpl, 
//            UtilsJavaSE, NotSupportedIOException, BluetoothConnectionNotifierParams, ServiceRecordImpl, 
//            SearchServicesRunnable

public class BluetoothStackAndroid
    implements BluetoothStack
{
    private class DiscoveryBroadcastReceiver extends BroadcastReceiver
    {

        private boolean cancelled;
        private DiscoveryListener discoveryListener;
        final BluetoothStackAndroid this$0;

        public void onReceive(Context context1, Intent intent)
        {
            String s = intent.getAction();
            if ("android.bluetooth.device.action.FOUND".equals(s))
            {
                BluetoothDevice bluetoothdevice = (BluetoothDevice)intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                BluetoothClass bluetoothclass = (BluetoothClass)intent.getParcelableExtra("android.bluetooth.device.extra.CLASS");
                RemoteDevice remotedevice = createRemoteDevice(bluetoothdevice);
                DeviceClass deviceclass = createDeviceClass(bluetoothclass);
                discoveryListener.deviceDiscovered(remotedevice, deviceclass);
            } else
            if ("android.bluetooth.adapter.action.DISCOVERY_FINISHED".equals(s))
            {
                context1.unregisterReceiver(this);
                DiscoveryListener discoverylistener = discoveryListener;
                byte byte0;
                if (cancelled)
                    byte0 = 5;
                else
                    byte0 = 0;
                discoverylistener.inquiryCompleted(byte0);
                return;
            }
        }


        public DiscoveryBroadcastReceiver(DiscoveryListener discoverylistener)
        {
            this$0 = BluetoothStackAndroid.this;
            super();
            discoveryListener = discoverylistener;
            cancelled = false;
        }
    }


    private static final int ATTR_RETRIEVABLE_MAX = 256;
    private static final int REQUEST_CODE_CHANGE_DISCOVERABLE;
    private static final UUID UUID_OBEX = new UUID(8L);
    private static final UUID UUID_OBEX_FILE_TRANSFER = new UUID(4358L);
    private static final UUID UUID_OBEX_OBJECT_PUSH = new UUID(4357L);
    private Context context;
    private boolean justEnabled;
    private Map listenerMap;
    private BluetoothAdapter localBluetoothAdapter;
    private List obexUUIDs;
    private Map propertiesMap;


    private DeviceClass createDeviceClass(BluetoothClass bluetoothclass)
    {
        int i = bluetoothclass.getDeviceClass();
        int j = 16384;
        do
        {
            if (j >= '\0')
                return new DeviceClass(i);
            if (bluetoothclass.hasService(j))
                i |= j;
            j <<= 1;
        } while (true);
    }

    private java.util.UUID createJavaUUID(UUID uuid)
    {
        String s = uuid.toString();
        String s1 = s.substring(0, 8);
        String s2 = s.substring(8, 16);
        String s3 = s.substring(16, 24);
        String s4 = s.substring(24, 32);
        long l = Long.parseLong(s1, 16);
        long l1 = Long.parseLong(s2, 16);
        long l2 = Long.parseLong(s3, 16);
        long l3 = Long.parseLong(s4, 16);
        return new java.util.UUID(l1 | l << 32, l3 | l2 << 32);
    }

    private RemoteDevice createRemoteDevice(BluetoothDevice bluetoothdevice)
    {
        long l = getAddressAsLong(bluetoothdevice.getAddress());
        String s = bluetoothdevice.getName();
        boolean flag;
        if (bluetoothdevice.getBondState() == 12)
            flag = true;
        else
            flag = false;
        return RemoteDeviceHelper.createRemoteDevice(this, l, s, flag);
    }

    private ServiceRecord createServiceRecord(RemoteDevice remotedevice, BluetoothSocket bluetoothsocket, UUID uuid, boolean flag)
    {
        return new AndroidServiceRecord(this, remotedevice, bluetoothsocket, uuid, flag);
    }

    private String formatAddressInAndroid(String s)
    {
        StringBuilder stringbuilder = new StringBuilder((new StringBuilder(String.valueOf("000000000000".substring(s.length())))).append(s).toString());
        int i = 2;
        do
        {
            if (i >= stringbuilder.length())
                return stringbuilder.toString().toUpperCase();
            stringbuilder.insert(i, ':');
            i += 3;
        } while (true);
    }

    private long getAddressAsLong(String s)
    {
        return Long.parseLong(s.replace(":", ""), 16);
    }

    private String getAddressAsString(long l)
    {
        return formatAddressInAndroid(Long.toHexString(l));
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
        ((DiscoveryBroadcastReceiver)listenerMap.get(discoverylistener)).cancelled = true;
        return localBluetoothAdapter.cancelDiscovery();
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
        AndroidBluetoothConnection androidbluetoothconnection = AndroidBluetoothConnection.getBluetoothConnection(l);
        if (androidbluetoothconnection != null)
            androidbluetoothconnection.close();
    }

    public void connectionRfCloseServerConnection(long l)
        throws IOException
    {
        AndroidBluetoothConnection androidbluetoothconnection = AndroidBluetoothConnection.getBluetoothConnection(l);
        if (androidbluetoothconnection != null)
            androidbluetoothconnection.close();
    }

    public void connectionRfFlush(long l)
        throws IOException
    {
        AndroidBluetoothConnection.getBluetoothConnection(l).getOutputStream().flush();
    }

    public long connectionRfOpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams)
        throws IOException
    {
        BluetoothDevice bluetoothdevice;
        java.util.UUID uuid;
        boolean flag;
        Method method;
        AndroidBluetoothConnectionParams androidbluetoothconnectionparams = (AndroidBluetoothConnectionParams)bluetoothconnectionparams;
        bluetoothdevice = localBluetoothAdapter.getRemoteDevice(getAddressAsString(androidbluetoothconnectionparams.address));
        uuid = createJavaUUID(new UUID(androidbluetoothconnectionparams.serviceUUID, false));
        flag = true;
        boolean flag1 = bluetoothconnectionparams.encrypt;
        method = null;
        if (flag1)
            break MISSING_BLOCK_LABEL_82;
        Method method1 = android/bluetooth/BluetoothDevice.getMethod("createInsecureRfcommSocketToServiceRecord", new Class[] {
            java/util/UUID
        });
        method = method1;
        flag = false;
_L6:
        if (!flag) goto _L2; else goto _L1
_L1:
        BluetoothSocket bluetoothsocket = bluetoothdevice.createRfcommSocketToServiceRecord(uuid);
_L4:
        return AndroidBluetoothConnection.createConnection(bluetoothsocket, false).getHandle();
_L2:
        try
        {
            bluetoothsocket = (BluetoothSocket)method.invoke(bluetoothdevice, new Object[] {
                uuid
            });
        }
        catch (Exception exception)
        {
            if (exception instanceof InvocationTargetException)
            {
                Throwable throwable = exception.getCause();
                if (throwable instanceof IOException)
                    throw (IOException)throwable;
            }
            throw new IOException();
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        method = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public int connectionRfRead(long l)
        throws IOException
    {
        return AndroidBluetoothConnection.getBluetoothConnection(l).getInputStream().read();
    }

    public int connectionRfRead(long l, byte abyte0[], int i, int j)
    {
        int k;
        try
        {
            k = AndroidBluetoothConnection.getBluetoothConnection(l).getInputStream().read(abyte0, i, j);
        }
        catch (Exception exception)
        {
            System.out.println("error in com.intel.BluetoothStackAndroid.connectionRfread");
            return 1;
        }
        return k;
    }

    public int connectionRfReadAvailable(long l)
        throws IOException
    {
        return AndroidBluetoothConnection.getBluetoothConnection(l).getInputStream().available();
    }

    public void connectionRfWrite(long l, int i)
        throws IOException
    {
        AndroidBluetoothConnection.getBluetoothConnection(l).getOutputStream().write(i);
    }

    public void connectionRfWrite(long l, byte abyte0[], int i, int j)
        throws IOException
    {
        AndroidBluetoothConnection.getBluetoothConnection(l).getOutputStream().write(abyte0, i, j);
    }

    public void destroy()
    {
        if (justEnabled)
            localBluetoothAdapter.disable();
    }

    public int detectBluetoothStack()
    {
        return 512;
    }

    public void enableNativeDebug(Class class1, boolean flag)
    {
    }

    public long getConnectionRfRemoteAddress(long l)
        throws IOException
    {
        return getAddressAsLong(AndroidBluetoothConnection.getBluetoothConnection(l).getSocket().getRemoteDevice().getAddress());
    }

    public int getFeatureSet()
    {
        return 10;
    }

    public int getLibraryVersion()
        throws BluetoothStateException
    {
        return 0x1eabf4;
    }

    public String getLocalDeviceBluetoothAddress()
        throws BluetoothStateException
    {
        return localBluetoothAdapter.getAddress().replace(":", "");
    }

    public DeviceClass getLocalDeviceClass()
    {
        return null;
    }

    public int getLocalDeviceDiscoverable()
    {
        switch (localBluetoothAdapter.getScanMode())
        {
        case 23: // '\027'
            return 0x9e8b33;

        case 21: // '\025'
            return 0x9e8b00;

        case 20: // '\024'
            return 0;

        case 22: // '\026'
        default:
            throw new RuntimeException((new StringBuilder("Unexpected scan mode returned: ")).append(localBluetoothAdapter.getScanMode()).toString());
        }
    }

    public String getLocalDeviceName()
    {
        return localBluetoothAdapter.getName();
    }

    public String getLocalDeviceProperty(String s)
    {
        return (String)propertiesMap.get(s);
    }

    public String getRemoteDeviceFriendlyName(long l)
        throws IOException
    {
        String s = getAddressAsString(l).toUpperCase();
        return localBluetoothAdapter.getRemoteDevice(s).getName();
    }

    public String getStackID()
    {
        return "android_2.x";
    }

    public void initialize()
        throws BluetoothStateException
    {
        int i;
        String s;
        i = 0;
        localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
        if (localBluetoothAdapter == null)
            throw new BluetoothStateException("Bluetooth isn't supported on this device");
        Object obj = BlueCoveImpl.getConfigObject("bluecove.android.context");
        if (obj == null)
            throw new BluetoothStateException("Property bluecove.android.context MUST be correctly set before initializing the stack. Call BlueCoveImpl.setConfigObject(BluecoveConfigProperties.PROPERTY_ANDROID_CONTEXT, <a reference to a context>) before calling LocalDevice.getLocalDevice()");
        context = (Context)obj;
        listenerMap = new HashMap();
        obexUUIDs = new ArrayList();
        obexUUIDs.add(UUID_OBEX);
        obexUUIDs.add(UUID_OBEX_OBJECT_PUSH);
        obexUUIDs.add(UUID_OBEX_FILE_TRANSFER);
        s = BlueCoveImpl.getConfigProperty("bluecove.android.obex_uuids");
        if (s == null) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        as = s.split(",");
        j = as.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        String s1;
        try
        {
            if (!localBluetoothAdapter.isEnabled() && localBluetoothAdapter.enable())
                justEnabled = true;
            propertiesMap = new HashMap();
            propertiesMap.put("bluetooth.connected.devices.max", "7");
            propertiesMap.put("bluetooth.sd.trans.max", "7");
            propertiesMap.put("bluetooth.connected.inquiry.scan", "true");
            propertiesMap.put("bluetooth.connected.page.scan", "true");
            propertiesMap.put("bluetooth.connected.inquiry", "true");
            propertiesMap.put("bluetooth.connected.page", "true");
            propertiesMap.put("bluetooth.sd.attr.retrievable.max", String.valueOf(256));
            propertiesMap.put("bluetooth.master.switch", "false");
            propertiesMap.put("bluetooth.l2cap.receiveMTU.max", "0");
            return;
        }
        catch (Exception exception)
        {
            throw new BluetoothStateException(exception.toString());
        }
_L3:
        s1 = as[i];
        try
        {
            UUID uuid = new UUID(s1, false);
            obexUUIDs.add(uuid);
        }
        catch (Exception exception1) { }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean isCurrentThreadInterruptedCallback()
    {
        return UtilsJavaSE.isCurrentThreadInterrupted();
    }

    public boolean isLocalDevicePowerOn()
    {
        return localBluetoothAdapter.isEnabled();
    }

    public boolean isNativeCodeLoaded()
    {
        return true;
    }

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
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void l2CloseServerConnection(long l)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public boolean l2Encrypt(long l, long l1, boolean flag)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public int l2GetReceiveMTU(long l)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public int l2GetSecurityOpt(long l, int i)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public int l2GetTransmitMTU(long l)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public long l2OpenClientConnection(BluetoothConnectionParams bluetoothconnectionparams, int i, int j)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public boolean l2Ready(long l)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public int l2Receive(long l, byte abyte0[])
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public long l2RemoteAddress(long l)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void l2Send(long l, byte abyte0[], int i)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public long l2ServerAcceptAndOpenServerConnection(long l)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void l2ServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public long l2ServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, int i, int j, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public void l2ServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        throw new UnsupportedOperationException("Not supported yet.");
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
        return null;
    }

    public RemoteDevice[] retrieveDevices(int i)
    {
        Set set = localBluetoothAdapter.getBondedDevices();
        RemoteDevice aremotedevice[] = new RemoteDevice[set.size()];
        int j = 0;
        Iterator iterator = set.iterator();
        do
        {
            if (!iterator.hasNext())
                return aremotedevice;
            BluetoothDevice bluetoothdevice = (BluetoothDevice)iterator.next();
            int k = j + 1;
            long l = getAddressAsLong(bluetoothdevice.getAddress());
            String s = bluetoothdevice.getName();
            boolean flag;
            if (bluetoothdevice.getBondState() == 12)
                flag = true;
            else
                flag = false;
            aremotedevice[j] = RemoteDeviceHelper.createRemoteDevice(this, l, s, flag);
            j = k;
        } while (true);
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

    public long rfServerAcceptAndOpenRfServerConnection(long l)
        throws IOException
    {
        BluetoothServerSocket bluetoothserversocket = AndroidBluetoothConnection.getBluetoothConnection(l).getServerSocket();
        BluetoothSocket bluetoothsocket = bluetoothserversocket.accept();
        bluetoothserversocket.close();
        return AndroidBluetoothConnection.createConnection(bluetoothsocket, true).getHandle();
    }

    public void rfServerClose(long l, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        AndroidBluetoothConnection.getBluetoothConnection(l).getServerSocket().close();
    }

    public long rfServerOpen(BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, ServiceRecordImpl servicerecordimpl)
        throws IOException
    {
        java.util.UUID uuid;
        boolean flag;
        Method method;
        uuid = createJavaUUID(bluetoothconnectionnotifierparams.uuid);
        flag = true;
        boolean flag1 = bluetoothconnectionnotifierparams.encrypt;
        method = null;
        if (flag1)
            break MISSING_BLOCK_LABEL_57;
        Method method1 = android/bluetooth/BluetoothAdapter.getMethod("listenUsingInsecureRfcommWithServiceRecord", new Class[] {
            java/lang/String, java/util/UUID
        });
        method = method1;
        flag = false;
_L6:
        if (!flag) goto _L2; else goto _L1
_L1:
        BluetoothServerSocket bluetoothserversocket = localBluetoothAdapter.listenUsingRfcommWithServiceRecord(bluetoothconnectionnotifierparams.name, uuid);
_L4:
        return AndroidBluetoothConnection.createServerConnection(bluetoothserversocket).getHandle();
_L2:
        try
        {
            BluetoothAdapter bluetoothadapter = localBluetoothAdapter;
            Object aobj[] = new Object[2];
            aobj[0] = bluetoothconnectionnotifierparams.name;
            aobj[1] = uuid;
            bluetoothserversocket = (BluetoothServerSocket)method.invoke(bluetoothadapter, aobj);
        }
        catch (Exception exception)
        {
            if (exception instanceof InvocationTargetException)
            {
                Throwable throwable = exception.getCause();
                if (throwable instanceof IOException)
                    throw (IOException)throwable;
            }
            throw new IOException();
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        method = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void rfServerUpdateServiceRecord(long l, ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    public int searchServices(int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        if (auuid.length != 1)
            throw new BluetoothStateException("Searching for services with more than one UUID isn't supported on Android");
        else
            return SearchServicesThread.startSearchServices(this, new SearchServicesRunnable() {

                final BluetoothStackAndroid this$0;

                public int runSearchServices(SearchServicesThread searchservicesthread, int ai1[], UUID auuid1[], RemoteDevice remotedevice1, DiscoveryListener discoverylistener1)
                    throws BluetoothStateException
                {
                    int i;
                    int j;
                    UUID uuid;
                    java.util.UUID uuid1;
                    String s;
                    BluetoothSocket bluetoothsocket;
                    boolean flag;
                    int k;
                    ServiceRecord aservicerecord[];
                    try
                    {
                        searchservicesthread.searchServicesStartedCallback();
                        i = auuid1.length;
                    }
                    catch (IOException ioexception)
                    {
                        return 3;
                    }
                    j = 0;
                      goto _L1
_L3:
                    uuid = auuid1[j];
                    uuid1 = createJavaUUID(uuid);
                    s = formatAddressInAndroid(remotedevice1.getBluetoothAddress());
                    bluetoothsocket = localBluetoothAdapter.getRemoteDevice(s).createRfcommSocketToServiceRecord(uuid1);
                    if (bluetoothsocket == null)
                        break MISSING_BLOCK_LABEL_127;
                    flag = obexUUIDs.contains(uuid);
                    k = searchservicesthread.getTransID();
                    aservicerecord = new ServiceRecord[1];
                    aservicerecord[0] = createServiceRecord(remotedevice1, bluetoothsocket, uuid, flag);
                    discoverylistener1.servicesDiscovered(k, aservicerecord);
                    bluetoothsocket.close();
                    j++;
_L1:
                    if (j < i) goto _L3; else goto _L2
_L2:
                    return 1;
                }

            
            {
                this$0 = BluetoothStackAndroid.this;
                super();
            }
            }
, ai, auuid, remotedevice, discoverylistener);
    }

    public boolean setLocalDeviceDiscoverable(int i)
        throws BluetoothStateException
    {
        Intent intent = new Intent("android.bluetooth.adapter.action.REQUEST_DISCOVERABLE");
        byte byte0 = 0;
        switch (i)
        {
        case 0: // '\0'
            byte0 = 20;
            break;

        case 10390272: 
            byte0 = 21;
            break;

        case 10390323: 
            byte0 = 23;
            break;
        }
        intent.putExtra("android.bluetooth.adapter.extra.SCAN_MODE", byte0);
        int j;
        if (i == 0)
            j = 0;
        else
            j = BlueCoveImpl.getConfigProperty("bluecove.android.discoverable_duration", 120);
        intent.putExtra("android.bluetooth.adapter.extra.DISCOVERABLE_DURATION", j);
        context.startActivity(intent);
        return true;
    }

    public void setLocalDeviceServiceClasses(int i)
    {
    }

    public boolean startInquiry(int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        DiscoveryBroadcastReceiver discoverybroadcastreceiver = new DiscoveryBroadcastReceiver(discoverylistener);
        listenerMap.put(discoverylistener, discoverybroadcastreceiver);
        IntentFilter intentfilter = new IntentFilter("android.bluetooth.device.action.FOUND");
        IntentFilter intentfilter1 = new IntentFilter("android.bluetooth.adapter.action.DISCOVERY_FINISHED");
        context.registerReceiver(discoverybroadcastreceiver, intentfilter);
        context.registerReceiver(discoverybroadcastreceiver, intentfilter1);
        return localBluetoothAdapter.startDiscovery();
    }








}
