// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import javax.bluetooth.BluetoothStateException;
import javax.bluetooth.DiscoveryListener;

// Referenced classes of package com.intel.bluetooth:
//            BlueCoveImpl, UtilsJavaSE, DebugLog, DeviceInquiryRunnable, 
//            Utils, BluetoothStack

class DeviceInquiryThread extends Thread
{

    private static int threadNumber;
    private int accessCode;
    private DeviceInquiryRunnable inquiryRunnable;
    private Object inquiryStartedEvent;
    private DiscoveryListener listener;
    private BluetoothStack stack;
    private BluetoothStateException startException;
    private boolean started;
    private boolean terminated;

    private DeviceInquiryThread(BluetoothStack bluetoothstack, DeviceInquiryRunnable deviceinquiryrunnable, int i, DiscoveryListener discoverylistener)
    {
        super((new StringBuilder("DeviceInquiryThread-")).append(nextThreadNum()).toString());
        started = false;
        terminated = false;
        inquiryStartedEvent = new Object();
        stack = bluetoothstack;
        inquiryRunnable = deviceinquiryrunnable;
        accessCode = i;
        listener = discoverylistener;
    }

    public static int getConfigDeviceInquiryDuration()
    {
        return BlueCoveImpl.getConfigProperty("bluecove.inquiry.duration", 11);
    }

    private static int nextThreadNum()
    {
        com/intel/bluetooth/DeviceInquiryThread;
        JVM INSTR monitorenter ;
        int i;
        i = threadNumber;
        threadNumber = i + 1;
        com/intel/bluetooth/DeviceInquiryThread;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean startInquiry(BluetoothStack bluetoothstack, DeviceInquiryRunnable deviceinquiryrunnable, int i, DiscoveryListener discoverylistener)
        throws BluetoothStateException
    {
        DeviceInquiryThread deviceinquirythread;
        deviceinquirythread = new DeviceInquiryThread(bluetoothstack, deviceinquiryrunnable, i, discoverylistener);
        UtilsJavaSE.threadSetDaemon(deviceinquirythread);
        Object obj = deviceinquirythread.inquiryStartedEvent;
        obj;
        JVM INSTR monitorenter ;
        deviceinquirythread.start();
_L2:
        if (deviceinquirythread.started || deviceinquirythread.terminated)
        {
            DebugLog.debug("startInquiry return", deviceinquirythread.started);
            return deviceinquirythread.started;
        }
        deviceinquirythread.inquiryStartedEvent.wait();
        if (deviceinquirythread.startException == null) goto _L2; else goto _L1
_L1:
        throw deviceinquirythread.startException;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        InterruptedException interruptedexception;
        interruptedexception;
        obj;
        JVM INSTR monitorexit ;
        return false;
    }

    public void deviceInquiryStartedCallback()
    {
        DebugLog.debug("deviceInquiryStartedCallback");
        started = true;
        synchronized (inquiryStartedEvent)
        {
            inquiryStartedEvent.notifyAll();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void run()
    {
        int i;
        BlueCoveImpl.setThreadBluetoothStack(stack);
        i = inquiryRunnable.runDeviceInquiry(this, accessCode, listener);
        terminated = true;
        synchronized (inquiryStartedEvent)
        {
            inquiryStartedEvent.notifyAll();
        }
        DebugLog.debug("runDeviceInquiry ends");
        if (started)
        {
            Utils.j2meUsagePatternDellay();
            listener.inquiryCompleted(i);
        }
_L2:
        return;
        BluetoothStateException bluetoothstateexception;
        bluetoothstateexception;
        DebugLog.debug("runDeviceInquiry throw", bluetoothstateexception);
        startException = bluetoothstateexception;
        terminated = true;
        synchronized (inquiryStartedEvent)
        {
            inquiryStartedEvent.notifyAll();
        }
        DebugLog.debug("runDeviceInquiry ends");
        if (!started) goto _L2; else goto _L1
_L1:
        Utils.j2meUsagePatternDellay();
        listener.inquiryCompleted(7);
        return;
        exception3;
        obj2;
        JVM INSTR monitorexit ;
        throw exception3;
        Throwable throwable;
        throwable;
        DebugLog.error("runDeviceInquiry", throwable);
        terminated = true;
        synchronized (inquiryStartedEvent)
        {
            inquiryStartedEvent.notifyAll();
        }
        DebugLog.debug("runDeviceInquiry ends");
        if (!started) goto _L2; else goto _L3
_L3:
        Utils.j2meUsagePatternDellay();
        listener.inquiryCompleted(7);
        return;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        Exception exception;
        exception;
        terminated = true;
        synchronized (inquiryStartedEvent)
        {
            inquiryStartedEvent.notifyAll();
        }
        DebugLog.debug("runDeviceInquiry ends");
        if (started)
        {
            Utils.j2meUsagePatternDellay();
            listener.inquiryCompleted(7);
        }
        throw exception;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
        exception4;
        obj3;
        JVM INSTR monitorexit ;
        throw exception4;
    }
}
