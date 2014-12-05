// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.util.*;
import javax.bluetooth.*;

// Referenced classes of package com.intel.bluetooth:
//            RemoteDeviceHelper, BluetoothStack, UtilsJavaSE, BlueCoveImpl, 
//            SearchServicesRunnable, DebugLog, Utils

class SearchServicesThread extends Thread
{

    private static Hashtable threads = new Hashtable();
    private static int transIDGenerator = 0;
    private int attrSet[];
    private RemoteDevice device;
    private boolean finished;
    private DiscoveryListener listener;
    private SearchServicesRunnable serachRunnable;
    private Object serviceSearchStartedEvent;
    private Vector servicesRecords;
    private BluetoothStack stack;
    private BluetoothStateException startException;
    private boolean started;
    private boolean terminated;
    private int transID;
    UUID uuidSet[];

    private SearchServicesThread(int i, BluetoothStack bluetoothstack, SearchServicesRunnable searchservicesrunnable, int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
    {
        super((new StringBuilder("SearchServicesThread-")).append(i).toString());
        servicesRecords = new Vector();
        started = false;
        finished = false;
        terminated = false;
        serviceSearchStartedEvent = new Object();
        stack = bluetoothstack;
        serachRunnable = searchservicesrunnable;
        transID = i;
        attrSet = ai;
        listener = discoverylistener;
        uuidSet = auuid;
        device = RemoteDeviceHelper.getStackBoundDevice(bluetoothstack, remotedevice);
    }

    private static int countRunningSearchServicesThreads(BluetoothStack bluetoothstack)
    {
        int i = 0;
        Enumeration enumeration = threads.elements();
        do
        {
            do
                if (!enumeration.hasMoreElements())
                    return i;
            while (((SearchServicesThread)enumeration.nextElement()).stack != bluetoothstack);
            i++;
        } while (true);
    }

    static SearchServicesThread getServiceSearchThread(int i)
    {
        return (SearchServicesThread)threads.get(new Integer(i));
    }

    private static int nextThreadNum()
    {
        com/intel/bluetooth/SearchServicesThread;
        JVM INSTR monitorenter ;
        int i;
        i = 1 + transIDGenerator;
        transIDGenerator = i;
        com/intel/bluetooth/SearchServicesThread;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    static int startSearchServices(BluetoothStack bluetoothstack, SearchServicesRunnable searchservicesrunnable, int ai[], UUID auuid[], RemoteDevice remotedevice, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        Hashtable hashtable = threads;
        hashtable;
        JVM INSTR monitorenter ;
        int i = countRunningSearchServicesThreads(bluetoothstack);
        if (i >= Integer.valueOf(bluetoothstack.getLocalDeviceProperty("bluetooth.sd.trans.max")).intValue())
            throw new BluetoothStateException((new StringBuilder("Already running ")).append(i).append(" service discovery transactions").toString());
        break MISSING_BLOCK_LABEL_71;
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
        SearchServicesThread searchservicesthread;
        searchservicesthread = new SearchServicesThread(nextThreadNum(), bluetoothstack, searchservicesrunnable, ai, auuid, remotedevice, discoverylistener);
        threads.put(new Integer(searchservicesthread.getTransID()), searchservicesthread);
        hashtable;
        JVM INSTR monitorexit ;
        UtilsJavaSE.threadSetDaemon(searchservicesthread);
        Object obj = searchservicesthread.serviceSearchStartedEvent;
        obj;
        JVM INSTR monitorenter ;
        searchservicesthread.start();
_L2:
        Exception exception1;
        InterruptedException interruptedexception;
        if (searchservicesthread.started || searchservicesthread.finished)
            if (searchservicesthread.started)
                return searchservicesthread.getTransID();
            else
                throw new BluetoothStateException();
        searchservicesthread.serviceSearchStartedEvent.wait();
        if (searchservicesthread.startException == null) goto _L2; else goto _L1
_L1:
        throw searchservicesthread.startException;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        interruptedexception;
        obj;
        JVM INSTR monitorexit ;
        return 0;
    }

    private void unregisterThread()
    {
        synchronized (threads)
        {
            threads.remove(new Integer(getTransID()));
        }
        return;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void addServicesRecords(ServiceRecord servicerecord)
    {
        servicesRecords.addElement(servicerecord);
    }

    public int[] getAttrSet()
    {
        int ai[];
        int i;
        int j;
        ai = new int[5];
        ai[1] = 1;
        ai[2] = 2;
        ai[3] = 3;
        ai[4] = 4;
        if (attrSet == null)
            return ai;
        i = ai.length + attrSet.length;
        j = 0;
_L2:
        if (j >= attrSet.length)
        {
            int ai1[] = new int[i];
            System.arraycopy(ai, 0, ai1, 0, ai.length);
            int l = ai.length;
            int i1 = 0;
            do
            {
                if (i1 >= attrSet.length)
                    return ai1;
                int j1 = 0;
                do
                {
                    if (j1 >= ai.length)
                    {
                        ai1[l] = attrSet[i1];
                        l++;
                        break;
                    }
                    if (ai[j1] == attrSet[i1])
                        break;
                    j1++;
                } while (true);
                i1++;
            } while (true);
        }
        int k = 0;
        do
        {
label0:
            {
                if (k < ai.length)
                {
                    if (ai[k] != attrSet[j])
                        break label0;
                    i--;
                }
                j++;
            }
            if (true)
                continue;
            k++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    RemoteDevice getDevice()
    {
        return device;
    }

    DiscoveryListener getListener()
    {
        return listener;
    }

    Vector getServicesRecords()
    {
        return servicesRecords;
    }

    int getTransID()
    {
        return transID;
    }

    boolean isTerminated()
    {
        return terminated;
    }

    public void run()
    {
        int i;
        BlueCoveImpl.setThreadBluetoothStack(stack);
        i = serachRunnable.runSearchServices(this, attrSet, uuidSet, device, listener);
        finished = true;
        unregisterThread();
        synchronized (serviceSearchStartedEvent)
        {
            serviceSearchStartedEvent.notifyAll();
        }
        DebugLog.debug("runSearchServices ends", getTransID());
        if (started)
        {
            Utils.j2meUsagePatternDellay();
            listener.serviceSearchCompleted(getTransID(), i);
        }
_L2:
        return;
        BluetoothStateException bluetoothstateexception;
        bluetoothstateexception;
        startException = bluetoothstateexception;
        finished = true;
        unregisterThread();
        synchronized (serviceSearchStartedEvent)
        {
            serviceSearchStartedEvent.notifyAll();
        }
        DebugLog.debug("runSearchServices ends", getTransID());
        if (!started) goto _L2; else goto _L1
_L1:
        Utils.j2meUsagePatternDellay();
        listener.serviceSearchCompleted(getTransID(), 3);
        return;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        Exception exception;
        exception;
        finished = true;
        unregisterThread();
        synchronized (serviceSearchStartedEvent)
        {
            serviceSearchStartedEvent.notifyAll();
        }
        DebugLog.debug("runSearchServices ends", getTransID());
        if (started)
        {
            Utils.j2meUsagePatternDellay();
            listener.serviceSearchCompleted(getTransID(), 3);
        }
        throw exception;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        exception3;
        obj2;
        JVM INSTR monitorexit ;
        throw exception3;
    }

    public void searchServicesStartedCallback()
    {
        DebugLog.debug("searchServicesStartedCallback", getTransID());
        started = true;
        synchronized (serviceSearchStartedEvent)
        {
            serviceSearchStartedEvent.notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    boolean setTerminated()
    {
        if (isTerminated())
        {
            return false;
        } else
        {
            terminated = true;
            unregisterThread();
            return true;
        }
    }

}
