// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothRFCommConnection, BluetoothServerConnection, RemoteDeviceHelper, BluetoothStack, 
//            DebugLog

class BluetoothRFCommServerConnection extends BluetoothRFCommConnection
    implements BluetoothServerConnection
{

    protected BluetoothRFCommServerConnection(BluetoothStack bluetoothstack, long l, int i)
        throws IOException
    {
        super(bluetoothstack, l);
        securityOpt = i;
        RemoteDeviceHelper.connected(this);
        if (true)
            break MISSING_BLOCK_LABEL_30;
        bluetoothstack.connectionRfCloseServerConnection(handle);
        return;
        Exception exception;
        exception;
        if (true)
            try
            {
                bluetoothstack.connectionRfCloseServerConnection(handle);
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
        bluetoothStack.connectionRfCloseServerConnection(l);
    }
}
