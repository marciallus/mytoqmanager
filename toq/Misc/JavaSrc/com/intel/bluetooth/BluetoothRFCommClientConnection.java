// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothRFCommConnection, BluetoothStack, BluetoothConnectionParams, Utils, 
//            RemoteDeviceHelper, DebugLog

class BluetoothRFCommClientConnection extends BluetoothRFCommConnection
{

    public BluetoothRFCommClientConnection(BluetoothStack bluetoothstack, BluetoothConnectionParams bluetoothconnectionparams)
        throws IOException
    {
        super(bluetoothstack, bluetoothstack.connectionRfOpenClientConnection(bluetoothconnectionparams));
        securityOpt = bluetoothstack.rfGetSecurityOpt(handle, Utils.securityOpt(bluetoothconnectionparams.authenticate, bluetoothconnectionparams.encrypt));
        RemoteDeviceHelper.connected(this);
        if (true)
            break MISSING_BLOCK_LABEL_55;
        bluetoothstack.connectionRfCloseClientConnection(handle);
        return;
        Exception exception;
        exception;
        if (true)
            try
            {
                bluetoothstack.connectionRfCloseClientConnection(handle);
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
        bluetoothStack.connectionRfCloseClientConnection(l);
    }
}
