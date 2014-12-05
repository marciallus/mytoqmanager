// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.io.InterruptedIOException;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionNotifierBase, BluetoothStack, BluetoothConsts, ServiceRecordImpl, 
//            BluetoothConnectionNotifierParams, Utils, BluetoothL2CAPServerConnection

class BluetoothL2CAPConnectionNotifier extends BluetoothConnectionNotifierBase
    implements L2CAPConnectionNotifier
{

    private int psm;
    private int transmitMTU;

    public BluetoothL2CAPConnectionNotifier(BluetoothStack bluetoothstack, BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams, int i, int j)
        throws IOException
    {
        super(bluetoothstack, bluetoothconnectionnotifierparams);
        psm = -1;
        handle = bluetoothstack.l2ServerOpen(bluetoothconnectionnotifierparams, i, j, serviceRecord);
        psm = serviceRecord.getChannel(BluetoothConsts.L2CAP_PROTOCOL_UUID);
        transmitMTU = j;
        serviceRecord.attributeUpdated = false;
        securityOpt = Utils.securityOpt(bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt);
        connectionCreated();
    }

    public L2CAPConnection acceptAndOpen()
        throws IOException
    {
        if (closed)
            throw new IOException("Notifier is closed");
        updateServiceRecord(true);
        BluetoothL2CAPServerConnection bluetoothl2capserverconnection;
        try
        {
            long l = bluetoothStack.l2ServerAcceptAndOpenServerConnection(handle);
            int i = bluetoothStack.l2GetSecurityOpt(l, securityOpt);
            bluetoothl2capserverconnection = new BluetoothL2CAPServerConnection(bluetoothStack, l, transmitMTU, i);
        }
        catch (InterruptedIOException interruptedioexception)
        {
            throw interruptedioexception;
        }
        catch (IOException ioexception)
        {
            if (closed)
                throw new InterruptedIOException((new StringBuilder("Notifier has been closed; ")).append(ioexception.getMessage()).toString());
            else
                throw ioexception;
        }
        return bluetoothl2capserverconnection;
    }

    protected void stackServerClose(long l)
        throws IOException
    {
        bluetoothStack.l2ServerClose(l, serviceRecord);
    }

    protected void updateStackServiceRecord(ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        bluetoothStack.l2ServerUpdateServiceRecord(handle, servicerecordimpl, flag);
    }

    protected void validateServiceRecord(ServiceRecord servicerecord)
    {
        if (psm != serviceRecord.getChannel(BluetoothConsts.L2CAP_PROTOCOL_UUID))
        {
            throw new IllegalArgumentException("Must not change the PSM");
        } else
        {
            super.validateServiceRecord(servicerecord);
            return;
        }
    }
}
