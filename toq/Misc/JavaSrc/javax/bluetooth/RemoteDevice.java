// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package javax.bluetooth;

import com.intel.bluetooth.*;
import java.io.IOException;
import javax.microedition.io.Connection;

// Referenced classes of package javax.bluetooth:
//            BluetoothStateException, LocalDevice

public class RemoteDevice
{

    private long addressLong;
    private String addressStr;

    protected RemoteDevice(String s)
    {
        if (s == null)
            throw new NullPointerException("address is null");
        if (s.length() != 12)
            throw new IllegalArgumentException((new StringBuilder("Malformed address: ")).append(s).append("; should be 12 characters").toString());
        if (s.startsWith("-"))
            throw new IllegalArgumentException((new StringBuilder("Malformed address: ")).append(s).append("; can't be negative").toString());
        DebugLog.debug("new RemoteDevice", s);
        addressStr = RemoteDeviceHelper.formatBluetoothAddress(s);
        try
        {
            if (addressStr.equals(LocalDevice.getLocalDevice().getBluetoothAddress()))
                throw new IllegalArgumentException("can't use the LocalDevice address.");
        }
        catch (BluetoothStateException bluetoothstateexception)
        {
            throw (RuntimeException)UtilsJavaSE.initCause(new RuntimeException("Can't initialize bluetooth support"), bluetoothstateexception);
        }
        addressLong = RemoteDeviceHelper.getAddress(s);
    }

    public static RemoteDevice getRemoteDevice(Connection connection)
        throws IOException
    {
        return RemoteDeviceHelper.implGetRemoteDevice(connection);
    }

    public boolean authenticate()
        throws IOException
    {
        return RemoteDeviceHelper.authenticate(this);
    }

    public boolean authorize(Connection connection)
        throws IOException
    {
        return RemoteDeviceHelper.implAuthorize(this, connection);
    }

    public boolean encrypt(Connection connection, boolean flag)
        throws IOException
    {
        return RemoteDeviceHelper.implEncrypt(this, connection, flag);
    }

    public boolean equals(Object obj)
    {
        return obj != null && (obj instanceof RemoteDevice) && ((RemoteDevice)obj).addressLong == addressLong;
    }

    public final String getBluetoothAddress()
    {
        return addressStr;
    }

    public String getFriendlyName(boolean flag)
        throws IOException
    {
        return RemoteDeviceHelper.implGetFriendlyName(this, addressLong, flag);
    }

    public int hashCode()
    {
        return (new Long(addressLong)).hashCode();
    }

    public boolean isAuthenticated()
    {
        return RemoteDeviceHelper.implIsAuthenticated(this);
    }

    public boolean isAuthorized(Connection connection)
        throws IOException
    {
        return RemoteDeviceHelper.implIsAuthorized(this, connection);
    }

    public boolean isEncrypted()
    {
        return RemoteDeviceHelper.implIsEncrypted(this);
    }

    public boolean isTrustedDevice()
    {
        return RemoteDeviceHelper.implIsTrustedDevice(this);
    }
}
