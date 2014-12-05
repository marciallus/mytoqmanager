// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import java.io.IOException;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            ServiceRecordImpl, BluetoothStack

public class AndroidServiceRecord extends ServiceRecordImpl
{

    private boolean obex;
    private BluetoothSocket socket;
    private UUID uuid;

    public AndroidServiceRecord(BluetoothStack bluetoothstack, RemoteDevice remotedevice, BluetoothSocket bluetoothsocket, UUID uuid1, boolean flag)
    {
        super(bluetoothstack, remotedevice, 0L);
        socket = bluetoothsocket;
        obex = flag;
        uuid = uuid1;
    }

    public volatile int[] getAttributeIDs()
    {
        return super.getAttributeIDs();
    }

    public volatile DataElement getAttributeValue(int i)
    {
        return super.getAttributeValue(i);
    }

    public String getConnectionURL(int i, boolean flag)
    {
label0:
        {
            StringBuilder stringbuilder = new StringBuilder();
            String s;
            if (obex)
                s = "btgoep";
            else
                s = "btspp";
            stringbuilder.append(s);
            stringbuilder.append("://");
            stringbuilder.append(socket.getRemoteDevice().getAddress().replace(":", ""));
            stringbuilder.append(":");
            stringbuilder.append(uuid.toString());
            switch (i)
            {
            default:
                break label0;

            case 2: // '\002'
                stringbuilder.append(";authenticate=true;encrypt=true");
                break;

            case 1: // '\001'
                stringbuilder.append(";authenticate=true;encrypt=false");
                break;

            case 0: // '\0'
                stringbuilder.append(";authenticate=false;encrypt=false");
                break;
            }
            if (flag)
                stringbuilder.append(";master=true");
            else
                stringbuilder.append(";master=false");
            stringbuilder.append(";android=true");
            return stringbuilder.toString();
        }
        throw new IllegalArgumentException();
    }

    public volatile RemoteDevice getHostDevice()
    {
        return super.getHostDevice();
    }

    public volatile boolean populateRecord(int ai[])
        throws IOException
    {
        return super.populateRecord(ai);
    }

    public volatile boolean setAttributeValue(int i, DataElement dataelement)
    {
        return super.setAttributeValue(i, dataelement);
    }

    public volatile void setDeviceServiceClasses(int i)
    {
        super.setDeviceServiceClasses(i);
    }

    public volatile String toString()
    {
        return super.toString();
    }
}
