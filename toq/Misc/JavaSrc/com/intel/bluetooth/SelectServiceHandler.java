// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.util.Hashtable;
import java.util.Vector;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            DebugLog

public class SelectServiceHandler
    implements DiscoveryListener
{
    private class ParallelSearchServicesThread extends Thread
    {

        private int processedNext;
        private int processedSize;
        private boolean stoped;
        final SelectServiceHandler this$0;
        private UUID uuid;

        public void interrupt()
        {
            stoped = true;
            synchronized (serviceSearchDeviceQueue)
            {
                serviceSearchDeviceQueue.notifyAll();
            }
            super.interrupt();
            return;
            exception;
            vector;
            JVM INSTR monitorexit ;
            throw exception;
        }

        boolean processedAll()
        {
            return processedNext == serviceSearchDeviceQueue.size();
        }

        public void run()
        {
_L3:
            if (!stoped && servRecordDiscovered == null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            synchronized (serviceSearchDeviceQueue)
            {
                if (!inquiryCompleted || processedSize != serviceSearchDeviceQueue.size())
                    break MISSING_BLOCK_LABEL_63;
            }
            return;
            exception;
            vector;
            JVM INSTR monitorexit ;
            throw exception;
            int i;
            int j;
            i = processedSize;
            j = serviceSearchDeviceQueue.size();
            if (i != j)
                break MISSING_BLOCK_LABEL_96;
            serviceSearchDeviceQueue.wait();
            processedSize = serviceSearchDeviceQueue.size();
            vector;
            JVM INSTR monitorexit ;
            int k = processedNext;
_L5:
            if (k < processedSize)
                break MISSING_BLOCK_LABEL_145;
            processedNext = 1 + processedSize;
              goto _L3
            InterruptedException interruptedexception;
            interruptedexception;
            vector;
            JVM INSTR monitorexit ;
            return;
            RemoteDevice remotedevice = (RemoteDevice)serviceSearchDeviceQueue.elementAt(k);
            if (findServiceOnDevice(uuid, remotedevice) != null) goto _L1; else goto _L4
_L4:
            k++;
              goto _L5
        }

        ParallelSearchServicesThread(UUID uuid1)
        {
            this$0 = SelectServiceHandler.this;
            super((new StringBuilder("SelectServiceThread-")).append(SelectServiceHandler.nextThreadNum()).toString());
            stoped = false;
            processedNext = 0;
            processedSize = 0;
            uuid = uuid1;
        }
    }


    private static int threadNumber;
    private DiscoveryAgent agent;
    private Hashtable devicesProcessed;
    private boolean inquiryCompleted;
    private Object inquiryCompletedEvent;
    private ServiceRecord servRecordDiscovered;
    private boolean serviceSearchCompleted;
    private Object serviceSearchCompletedEvent;
    private Vector serviceSearchDeviceQueue;

    public SelectServiceHandler(DiscoveryAgent discoveryagent)
    {
        inquiryCompletedEvent = new Object();
        serviceSearchCompletedEvent = new Object();
        devicesProcessed = new Hashtable();
        serviceSearchDeviceQueue = new Vector();
        agent = discoveryagent;
    }

    private ServiceRecord findServiceOnDevice(UUID uuid, RemoteDevice remotedevice)
    {
        if (devicesProcessed.containsKey(remotedevice))
            return null;
        devicesProcessed.put(remotedevice, remotedevice);
        DebugLog.debug("searchServices on ", remotedevice);
        Object obj = serviceSearchCompletedEvent;
        obj;
        JVM INSTR monitorenter ;
        serviceSearchCompleted = false;
        agent.searchServices(null, new UUID[] {
            uuid
        }, remotedevice, this);
_L1:
        if (!serviceSearchCompleted)
            break MISSING_BLOCK_LABEL_99;
        return servRecordDiscovered;
        BluetoothStateException bluetoothstateexception;
        bluetoothstateexception;
        DebugLog.error("searchServices", bluetoothstateexception);
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        serviceSearchCompletedEvent.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        obj;
        JVM INSTR monitorexit ;
        return null;
    }

    private static int nextThreadNum()
    {
        com/intel/bluetooth/SelectServiceHandler;
        JVM INSTR monitorenter ;
        int i;
        i = threadNumber;
        threadNumber = i + 1;
        com/intel/bluetooth/SelectServiceHandler;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public void deviceDiscovered(RemoteDevice remotedevice, DeviceClass deviceclass)
    {
        if (devicesProcessed.containsKey(remotedevice))
            return;
        synchronized (serviceSearchDeviceQueue)
        {
            serviceSearchDeviceQueue.addElement(remotedevice);
            serviceSearchDeviceQueue.notifyAll();
        }
        return;
        exception;
        vector;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void inquiryCompleted(int i)
    {
        synchronized (inquiryCompletedEvent)
        {
            inquiryCompleted = true;
            inquiryCompletedEvent.notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public String selectService(UUID uuid, int i, boolean flag)
        throws BluetoothStateException
    {
        RemoteDevice aremotedevice[];
        int j;
        if (uuid == null)
            throw new NullPointerException("uuid is null");
        switch (i)
        {
        default:
            throw new IllegalArgumentException();

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            aremotedevice = agent.retrieveDevices(1);
            break;
        }
        j = 0;
_L11:
        if (aremotedevice != null && j < aremotedevice.length) goto _L2; else goto _L1
_L1:
        RemoteDevice aremotedevice1[];
        int k;
        aremotedevice1 = agent.retrieveDevices(0);
        k = 0;
_L7:
        if (aremotedevice1 != null && k < aremotedevice1.length) goto _L4; else goto _L3
_L3:
        ParallelSearchServicesThread parallelsearchservicesthread;
        parallelsearchservicesthread = new ParallelSearchServicesThread(uuid);
        parallelsearchservicesthread.start();
        Object obj = inquiryCompletedEvent;
        obj;
        JVM INSTR monitorenter ;
        if (agent.startInquiry(0x9e8b33, this)) goto _L6; else goto _L5
_L5:
        return null;
_L2:
        ServiceRecord servicerecord1 = findServiceOnDevice(uuid, aremotedevice[j]);
        if (servicerecord1 != null)
            return servicerecord1.getConnectionURL(i, flag);
        j++;
        continue; /* Loop/switch isn't completed */
_L4:
        ServiceRecord servicerecord = findServiceOnDevice(uuid, aremotedevice1[k]);
        if (servicerecord != null)
            return servicerecord.getConnectionURL(i, flag);
        k++;
          goto _L7
_L9:
        inquiryCompletedEvent.wait();
_L6:
        if (!inquiryCompleted) goto _L9; else goto _L8
_L8:
        agent.cancelInquiry(this);
        obj;
        JVM INSTR monitorexit ;
        if (servRecordDiscovered != null || parallelsearchservicesthread.processedAll())
            break MISSING_BLOCK_LABEL_274;
        synchronized (serviceSearchDeviceQueue)
        {
            serviceSearchDeviceQueue.notifyAll();
        }
        parallelsearchservicesthread.join();
        parallelsearchservicesthread.interrupt();
        if (servRecordDiscovered != null)
            return servRecordDiscovered.getConnectionURL(i, flag);
          goto _L5
        InterruptedException interruptedexception1;
        interruptedexception1;
        obj;
        JVM INSTR monitorexit ;
        return null;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        vector;
        JVM INSTR monitorexit ;
        throw exception1;
        InterruptedException interruptedexception;
        interruptedexception;
        return null;
        if (true) goto _L11; else goto _L10
_L10:
    }

    public void serviceSearchCompleted(int i, int j)
    {
        synchronized (serviceSearchCompletedEvent)
        {
            serviceSearchCompleted = true;
            serviceSearchCompletedEvent.notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void servicesDiscovered(int i, ServiceRecord aservicerecord[])
    {
        if (aservicerecord.length > 0 && servRecordDiscovered == null)
        {
            servRecordDiscovered = aservicerecord[0];
            synchronized (serviceSearchCompletedEvent)
            {
                serviceSearchCompleted = true;
                serviceSearchCompletedEvent.notifyAll();
            }
            synchronized (inquiryCompletedEvent)
            {
                inquiryCompleted = true;
                inquiryCompletedEvent.notifyAll();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
    }





}
