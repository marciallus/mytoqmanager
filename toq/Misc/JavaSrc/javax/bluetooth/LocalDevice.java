// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import com.intel.bluetooth.*;
import java.util.Hashtable;
import javax.microedition.io.Connection;

// Referenced classes of package javax.bluetooth:
//            BluetoothStateException, DiscoveryAgent, ServiceRegistrationException, DeviceClass, 
//            ServiceRecord

public class LocalDevice
{

    private static Hashtable localDevices = new Hashtable();
    private String addressStr;
    private BluetoothStack bluetoothStack;
    private DiscoveryAgent discoveryAgent;

    private LocalDevice(BluetoothStack bluetoothstack)
        throws BluetoothStateException
    {
        bluetoothStack = bluetoothstack;
        discoveryAgent = new DiscoveryAgent(bluetoothStack);
        addressStr = RemoteDeviceHelper.formatBluetoothAddress(bluetoothStack.getLocalDeviceBluetoothAddress());
    }

    public static LocalDevice getLocalDevice()
        throws BluetoothStateException
    {
        return getLocalDeviceInstance();
    }

    private static LocalDevice getLocalDeviceInstance()
        throws BluetoothStateException
    {
        javax/bluetooth/LocalDevice;
        JVM INSTR monitorenter ;
        BluetoothStack bluetoothstack;
        LocalDevice localdevice;
        bluetoothstack = BlueCoveImpl.instance().getBluetoothStack();
        localdevice = (LocalDevice)localDevices.get(bluetoothstack);
        if (localdevice != null)
            break MISSING_BLOCK_LABEL_43;
        localdevice = new LocalDevice(bluetoothstack);
        localDevices.put(bluetoothstack, localdevice);
        javax/bluetooth/LocalDevice;
        JVM INSTR monitorexit ;
        return localdevice;
        Exception exception;
        exception;
        throw exception;
    }

    public static String getProperty(String s)
    {
        boolean flag;
        boolean flag1;
        String s1;
        try
        {
            flag = "bluetooth.api.version".equals(s);
        }
        catch (BluetoothStateException bluetoothstateexception)
        {
            throw (RuntimeException)UtilsJavaSE.initCause(new RuntimeException(bluetoothstateexception.getMessage()), bluetoothstateexception);
        }
        if (flag)
            return "1.1.1";
        flag1 = "obex.api.version".equals(s);
        if (flag1)
            return "1.1.1";
        if ("bluecove".equals(s))
            return BlueCoveImpl.version;
        if ("bluecove.stack".equals(s))
            return BlueCoveImpl.instance().getBluetoothStack().getStackID();
        if ("bluecove.feature.l2cap".equals(s))
            return BlueCoveImpl.instance().getLocalDeviceFeature(1);
        if ("bluecove.feature.service_attributes".equals(s))
            return BlueCoveImpl.instance().getLocalDeviceFeature(2);
        if ("bluecove.feature.set_device_service_classes".equals(s))
            return BlueCoveImpl.instance().getLocalDeviceFeature(4);
        if ("bluecove.feature.rssi".equals(s))
            return BlueCoveImpl.instance().getLocalDeviceFeature(8);
        if ("bluecove.connections".equals(s))
            return String.valueOf(RemoteDeviceHelper.openConnections());
        s1 = BlueCoveImpl.instance().getBluetoothStack().getLocalDeviceProperty(s);
        return s1;
    }

    public static boolean isPowerOn()
    {
        boolean flag;
        try
        {
            flag = BlueCoveImpl.instance().getBluetoothStack().isLocalDevicePowerOn();
        }
        catch (BluetoothStateException bluetoothstateexception)
        {
            return false;
        }
        return flag;
    }

    public String getBluetoothAddress()
    {
        return addressStr;
    }

    public DeviceClass getDeviceClass()
    {
        return bluetoothStack.getLocalDeviceClass();
    }

    public int getDiscoverable()
    {
        return bluetoothStack.getLocalDeviceDiscoverable();
    }

    public DiscoveryAgent getDiscoveryAgent()
    {
        return discoveryAgent;
    }

    public String getFriendlyName()
    {
        return bluetoothStack.getLocalDeviceName();
    }

    public ServiceRecord getRecord(Connection connection)
    {
        if (connection == null)
            throw new NullPointerException("notifier is null");
        if (!(connection instanceof BluetoothConnectionNotifierServiceRecordAccess))
            throw new IllegalArgumentException("connection is not a Bluetooth notifier");
        else
            return ((BluetoothConnectionNotifierServiceRecordAccess)connection).getServiceRecord();
    }

    public boolean setDiscoverable(int i)
        throws BluetoothStateException
    {
        if (i == 0x9e8b33 || i == 0x9e8b00 || i == 0 || i >= 0x9e8b00 && i <= 0x9e8b3f)
            return bluetoothStack.setLocalDeviceDiscoverable(i);
        else
            throw new IllegalArgumentException("Invalid discoverable mode");
    }

    public void updateRecord(ServiceRecord servicerecord)
        throws ServiceRegistrationException
    {
        if (servicerecord == null)
        {
            throw new NullPointerException("Service Record is null");
        } else
        {
            ServiceRecordsRegistry.updateServiceRecord(servicerecord);
            return;
        }
    }

}
