// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth.obex;

import com.intel.bluetooth.BluetoothConnectionNotifierServiceRecordAccess;
import com.intel.bluetooth.Utils;
import java.io.IOException;
import java.util.Vector;
import javax.bluetooth.ServiceRecord;
import javax.bluetooth.ServiceRegistrationException;
import javax.microedition.io.*;
import javax.obex.*;

// Referenced classes of package com.intel.bluetooth.obex:
//            OBEXServerSessionImpl, OBEXTCPServiceRecordImpl, OBEXConnectionParams

public class OBEXSessionNotifierImpl
    implements BluetoothConnectionNotifierServiceRecordAccess, SessionNotifier
{

    private static final String FQCN = com/intel/bluetooth/obex/OBEXSessionNotifierImpl.getName();
    private static final Vector fqcnSet;
    private StreamConnectionNotifier notifier;
    private OBEXConnectionParams obexConnectionParams;

    public OBEXSessionNotifierImpl(StreamConnectionNotifier streamconnectionnotifier, OBEXConnectionParams obexconnectionparams)
        throws IOException, Error
    {
        Utils.isLegalAPICall(fqcnSet);
        notifier = streamconnectionnotifier;
        obexConnectionParams = obexconnectionparams;
    }

    public Connection acceptAndOpen(ServerRequestHandler serverrequesthandler)
        throws IOException
    {
        return acceptAndOpen(serverrequesthandler, null);
    }

    public Connection acceptAndOpen(ServerRequestHandler serverrequesthandler, Authenticator authenticator)
        throws IOException
    {
        this;
        JVM INSTR monitorenter ;
        if (notifier == null)
            throw new IOException("Session closed");
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (serverrequesthandler != null)
            break MISSING_BLOCK_LABEL_38;
        throw new NullPointerException("handler is null");
        OBEXServerSessionImpl obexserversessionimpl;
        obexserversessionimpl = new OBEXServerSessionImpl(notifier.acceptAndOpen(), serverrequesthandler, authenticator, obexConnectionParams);
        obexserversessionimpl.startSessionHandlerThread();
        this;
        JVM INSTR monitorexit ;
        return obexserversessionimpl;
    }

    public void close()
        throws IOException
    {
        StreamConnectionNotifier streamconnectionnotifier = notifier;
        notifier = null;
        if (streamconnectionnotifier != null)
            streamconnectionnotifier.close();
    }

    public ServiceRecord getServiceRecord()
    {
        if (notifier instanceof ServerSocketConnection)
            return new OBEXTCPServiceRecordImpl((ServerSocketConnection)notifier);
        if (!(notifier instanceof BluetoothConnectionNotifierServiceRecordAccess))
            throw new IllegalArgumentException("connection is not a Bluetooth notifier");
        else
            return ((BluetoothConnectionNotifierServiceRecordAccess)notifier).getServiceRecord();
    }

    public void updateServiceRecord(boolean flag)
        throws ServiceRegistrationException
    {
        if (!(notifier instanceof BluetoothConnectionNotifierServiceRecordAccess))
        {
            throw new IllegalArgumentException("connection is not a Bluetooth notifier");
        } else
        {
            ((BluetoothConnectionNotifierServiceRecordAccess)notifier).updateServiceRecord(flag);
            return;
        }
    }

    static 
    {
        fqcnSet = new Vector();
        fqcnSet.addElement(FQCN);
    }
}
