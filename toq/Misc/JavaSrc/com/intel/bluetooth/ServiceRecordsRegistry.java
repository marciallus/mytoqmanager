// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.util.Enumeration;
import java.util.Hashtable;
import javax.bluetooth.ServiceRecord;
import javax.bluetooth.ServiceRegistrationException;

// Referenced classes of package com.intel.bluetooth:
//            ServiceRecordImpl, BluetoothConnectionNotifierServiceRecordAccess

public abstract class ServiceRecordsRegistry
{

    private static Hashtable serviceRecordsMap = new Hashtable();

    private ServiceRecordsRegistry()
    {
    }

    static int getDeviceServiceClasses()
    {
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorenter ;
        int i = 0;
        Enumeration enumeration = serviceRecordsMap.keys();
_L1:
        boolean flag = enumeration.hasMoreElements();
        if (flag)
            break MISSING_BLOCK_LABEL_28;
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorexit ;
        return i;
        int j = ((ServiceRecordImpl)enumeration.nextElement()).deviceServiceClasses;
        i |= j;
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    static void register(BluetoothConnectionNotifierServiceRecordAccess bluetoothconnectionnotifierservicerecordaccess, ServiceRecordImpl servicerecordimpl)
    {
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorenter ;
        serviceRecordsMap.put(servicerecordimpl, bluetoothconnectionnotifierservicerecordaccess);
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void unregister(ServiceRecordImpl servicerecordimpl)
    {
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorenter ;
        serviceRecordsMap.remove(servicerecordimpl);
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void updateServiceRecord(ServiceRecord servicerecord)
        throws ServiceRegistrationException
    {
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorenter ;
        BluetoothConnectionNotifierServiceRecordAccess bluetoothconnectionnotifierservicerecordaccess = (BluetoothConnectionNotifierServiceRecordAccess)serviceRecordsMap.get(servicerecord);
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorexit ;
        Exception exception;
        if (bluetoothconnectionnotifierservicerecordaccess == null)
        {
            throw new IllegalArgumentException("Service record is not registered");
        } else
        {
            bluetoothconnectionnotifierservicerecordaccess.updateServiceRecord(false);
            return;
        }
        exception;
        com/intel/bluetooth/ServiceRecordsRegistry;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
