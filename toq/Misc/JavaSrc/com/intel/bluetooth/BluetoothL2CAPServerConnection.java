// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothL2CAPConnection, BluetoothServerConnection, RemoteDeviceHelper, BluetoothStack, 
//            DebugLog

class BluetoothL2CAPServerConnection extends BluetoothL2CAPConnection
    implements BluetoothServerConnection
{

    protected BluetoothL2CAPServerConnection(BluetoothStack bluetoothstack, long l, int i, int j)
        throws IOException
    {
        super(bluetoothstack, l);
        securityOpt = j;
        transmitMTU = getTransmitMTU();
        if (i <= 0)
            break MISSING_BLOCK_LABEL_40;
        if (i < transmitMTU)
            transmitMTU = i;
        RemoteDeviceHelper.connected(this);
        if (true)
            break MISSING_BLOCK_LABEL_58;
        bluetoothstack.l2CloseServerConnection(handle);
        return;
        Exception exception;
        exception;
        if (true)
            try
            {
                bluetoothstack.l2CloseServerConnection(handle);
            }
            catch (IOException ioexception)
            {
                DebugLog.error("close error", ioexception);
            }
        throw exception;
        IOException ioexception1;
        ioexception1;
        DebugLog.error("close error", ioexception1);
        return;
    }

    void closeConnectionHandle(long l)
        throws IOException
    {
        RemoteDeviceHelper.disconnected(this);
        bluetoothStack.l2CloseServerConnection(l);
    }
}
