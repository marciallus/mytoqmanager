// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothL2CAPConnection, BluetoothStack, BluetoothConnectionParams, Utils, 
//            RemoteDeviceHelper, DebugLog

class BluetoothL2CAPClientConnection extends BluetoothL2CAPConnection
{

    public BluetoothL2CAPClientConnection(BluetoothStack bluetoothstack, BluetoothConnectionParams bluetoothconnectionparams, int i, int j)
        throws IOException
    {
        super(bluetoothstack, bluetoothstack.l2OpenClientConnection(bluetoothconnectionparams, i, j));
        securityOpt = bluetoothstack.l2GetSecurityOpt(handle, Utils.securityOpt(bluetoothconnectionparams.authenticate, bluetoothconnectionparams.encrypt));
        transmitMTU = getTransmitMTU();
        if (j <= 0)
            break MISSING_BLOCK_LABEL_68;
        if (j < transmitMTU)
            transmitMTU = j;
        RemoteDeviceHelper.connected(this);
        if (true)
            break MISSING_BLOCK_LABEL_86;
        bluetoothstack.l2CloseClientConnection(handle);
        return;
        Exception exception;
        exception;
        if (true)
            try
            {
                bluetoothstack.l2CloseClientConnection(handle);
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
        bluetoothStack.l2CloseClientConnection(l);
    }
}
