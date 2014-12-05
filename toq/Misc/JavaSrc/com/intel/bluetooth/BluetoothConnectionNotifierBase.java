// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.util.*;
import javax.bluetooth.*;
import javax.microedition.io.Connection;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionNotifierServiceRecordAccess, BluetoothConnectionNotifierParams, ServiceRecordImpl, Utils, 
//            DebugLog, ServiceRecordsRegistry, BluetoothStack, BluetoothConsts

abstract class BluetoothConnectionNotifierBase
    implements BluetoothConnectionNotifierServiceRecordAccess, Connection
{

    private static Hashtable stackConnections = new Hashtable();
    protected BluetoothStack bluetoothStack;
    protected boolean closed;
    protected volatile long handle;
    protected int securityOpt;
    protected ServiceRecordImpl serviceRecord;

    protected BluetoothConnectionNotifierBase(BluetoothStack bluetoothstack, BluetoothConnectionNotifierParams bluetoothconnectionnotifierparams)
        throws BluetoothStateException, Error
    {
        bluetoothStack = bluetoothstack;
        closed = false;
        if (bluetoothconnectionnotifierparams.name == null)
        {
            throw new NullPointerException("Service name is null");
        } else
        {
            serviceRecord = new ServiceRecordImpl(bluetoothStack, null, 0L);
            return;
        }
    }

    static void shutdownConnections(BluetoothStack bluetoothstack)
    {
        Vector vector;
        synchronized (stackConnections)
        {
            vector = (Vector)stackConnections.get(bluetoothstack);
        }
        if (vector == null)
            return;
        break MISSING_BLOCK_LABEL_29;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        new Vector();
        for (Enumeration enumeration = Utils.clone(vector.elements()).elements(); enumeration.hasMoreElements();)
        {
            BluetoothConnectionNotifierBase bluetoothconnectionnotifierbase = (BluetoothConnectionNotifierBase)enumeration.nextElement();
            try
            {
                bluetoothconnectionnotifierbase.shutdown();
            }
            catch (IOException ioexception)
            {
                DebugLog.debug("connection shutdown", ioexception);
            }
        }

        return;
    }

    public void close()
        throws IOException
    {
        if (!closed)
            shutdown();
    }

    protected void connectionCreated()
    {
        Hashtable hashtable = stackConnections;
        hashtable;
        JVM INSTR monitorenter ;
        Vector vector = (Vector)stackConnections.get(bluetoothStack);
        if (vector != null)
            break MISSING_BLOCK_LABEL_44;
        vector = new Vector();
        stackConnections.put(bluetoothStack, vector);
        hashtable;
        JVM INSTR monitorexit ;
        vector.addElement(this);
        return;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ServiceRecord getServiceRecord()
    {
        if (closed)
        {
            throw new IllegalArgumentException("ConnectionNotifier is closed");
        } else
        {
            ServiceRecordsRegistry.register(this, serviceRecord);
            return serviceRecord;
        }
    }

    public void shutdown()
        throws IOException
    {
        closed = true;
        if (handle == 0L)
            break MISSING_BLOCK_LABEL_122;
        DebugLog.debug("closing ConnectionNotifier", handle);
        Vector vector;
        synchronized (stackConnections)
        {
            vector = (Vector)stackConnections.get(bluetoothStack);
        }
        vector.removeElement(this);
        this;
        JVM INSTR monitorenter ;
        long l;
        l = handle;
        handle = 0L;
        this;
        JVM INSTR monitorexit ;
        if (l != 0L)
        {
            ServiceRecordsRegistry.unregister(serviceRecord);
            if (serviceRecord.deviceServiceClasses != 0 && (4 & bluetoothStack.getFeatureSet()) != 0)
                bluetoothStack.setLocalDeviceServiceClasses(ServiceRecordsRegistry.getDeviceServiceClasses());
            stackServerClose(l);
        }
        return;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        Exception exception1;
        exception1;
        this;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    protected abstract void stackServerClose(long l)
        throws IOException;

    public void updateServiceRecord(boolean flag)
        throws ServiceRegistrationException
    {
        if (!serviceRecord.attributeUpdated && flag)
            break MISSING_BLOCK_LABEL_39;
        try
        {
            validateServiceRecord(serviceRecord);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            if (flag)
                throw new ServiceRegistrationException(illegalargumentexception.getMessage());
            else
                throw illegalargumentexception;
        }
        updateStackServiceRecord(serviceRecord, flag);
        serviceRecord.attributeUpdated = false;
        if (serviceRecord.deviceServiceClasses != serviceRecord.deviceServiceClassesRegistered && (4 & bluetoothStack.getFeatureSet()) != 0)
        {
            bluetoothStack.setLocalDeviceServiceClasses(ServiceRecordsRegistry.getDeviceServiceClasses());
            serviceRecord.deviceServiceClassesRegistered = serviceRecord.deviceServiceClasses;
        }
        return;
        Exception exception;
        exception;
        serviceRecord.attributeUpdated = false;
        throw exception;
    }

    protected abstract void updateStackServiceRecord(ServiceRecordImpl servicerecordimpl, boolean flag)
        throws ServiceRegistrationException;

    protected void validateServiceRecord(ServiceRecord servicerecord)
    {
        DataElement dataelement = servicerecord.getAttributeValue(4);
        if (dataelement != null && dataelement.getDataType() == 48)
        {
            DataElement dataelement1 = servicerecord.getAttributeValue(1);
            if (dataelement1 != null && dataelement1.getDataType() == 48 && dataelement1.getSize() != 0)
            {
                Enumeration enumeration = (Enumeration)dataelement.getValue();
                boolean flag1;
                do
                {
                    boolean flag = enumeration.hasMoreElements();
                    flag1 = false;
                    if (!flag)
                        break;
                    DataElement dataelement2 = (DataElement)enumeration.nextElement();
                    if (dataelement2.getDataType() != 48)
                        continue;
                    Enumeration enumeration1 = (Enumeration)dataelement2.getValue();
                    if (!enumeration1.hasMoreElements())
                        continue;
                    DataElement dataelement3 = (DataElement)enumeration1.nextElement();
                    if (dataelement3.getDataType() != 24 || !BluetoothConsts.L2CAP_PROTOCOL_UUID.equals(dataelement3.getValue()))
                        continue;
                    flag1 = true;
                    break;
                } while (true);
                if (!flag1)
                    throw new IllegalArgumentException("L2CAP UUID is mandatory in ProtocolDescriptorList");
                else
                    return;
            } else
            {
                throw new IllegalArgumentException("ServiceClassIDList is mandatory");
            }
        } else
        {
            throw new IllegalArgumentException("ProtocolDescriptorList is mandatory");
        }
    }

}
