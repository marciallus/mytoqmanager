// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.io.InterruptedIOException;
import javax.bluetooth.ServiceRecord;
import javax.bluetooth.ServiceRegistrationException;
import javax.microedition.io.StreamConnection;
import javax.microedition.io.StreamConnectionNotifier;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionNotifierBase, BluetoothStack, BluetoothConsts, ServiceRecordImpl, 
//            BluetoothConnectionNotifierParams, Utils, BluetoothRFCommServerConnection

class BluetoothRFCommConnectionNotifier extends BluetoothConnectionNotifierBase
    implements StreamConnectionNotifier
{

    private int rfcommChannel;

    public BluetoothRFCommConnectionNotifier(BluetoothStack bluetoothstack, BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams)
        throws IOException
    {
        super(bluetoothstack, bluetoothconnectionnotifierparams);
        rfcommChannel = -1;
        handle = bluetoothstack.rfServerOpen(bluetoothconnectionnotifierparams, serviceRecord);
        rfcommChannel = serviceRecord.getChannel(BluetoothConsts.RFCOMM_PROTOCOL_UUID);
        serviceRecord.attributeUpdated = false;
        securityOpt = Utils.securityOpt(bluetoothconnectionnotifierparams.authenticate, bluetoothconnectionnotifierparams.encrypt);
        connectionCreated();
    }

    public StreamConnection acceptAndOpen()
        throws IOException
    {
        if (closed)
            throw new IOException("Notifier is closed");
        updateServiceRecord(true);
        BluetoothRFCommServerConnection bluetoothrfcommserverconnection;
        try
        {
            long l = bluetoothStack.rfServerAcceptAndOpenRfServerConnection(handle);
            int i = bluetoothStack.rfGetSecurityOpt(l, securityOpt);
            bluetoothrfcommserverconnection = new BluetoothRFCommServerConnection(bluetoothStack, l, i);
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
        return bluetoothrfcommserverconnection;
    }

    protected void stackServerClose(long l)
        throws IOException
    {
        bluetoothStack.rfServerClose(l, serviceRecord);
    }

    protected void updateStackServiceRecord(ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException
    {
        bluetoothStack.rfServerUpdateServiceRecord(handle, servicerecordimpl, flag);
    }

    protected void validateServiceRecord(ServiceRecord servicerecord)
    {
        if (rfcommChannel != serviceRecord.getChannel(BluetoothConsts.RFCOMM_PROTOCOL_UUID))
        {
            throw new IllegalArgumentException("Must not change the RFCOMM server channel number");
        } else
        {
            super.validateServiceRecord(servicerecord);
            return;
        }
    }
}
