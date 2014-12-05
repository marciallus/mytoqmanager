// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.PrintStream;
import java.security.*;
import java.util.*;
import javax.bluetooth.BluetoothStateException;

// Referenced classes of package com.intel.bluetooth:
//            BlueCoveConfigProperties, DebugLog, UtilsJavaSE, BluetoothStackWIDCOMM, 
//            BluetoothStackBlueSoleil, BluetoothStackMicrosoft, BluetoothStackToshiba, ThreadLocalWrapper, 
//            BluetoothStack, NativeLibLoader, BluetoothStackOSX, Utils, 
//            UtilsStringTokenizer, BluetoothConnectionNotifierBase, RemoteDeviceHelper

public class BlueCoveImpl
{
    private class AsynchronousShutdownThread extends Thread
    {

        final Object monitor = new Object();
        int shutdownStart;
        final BlueCoveImpl this$0;

        void deRegister()
        {
            shutdownStart = -1;
            synchronized (monitor)
            {
                monitor.notifyAll();
            }
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void run()
        {
            obj;
            JVM INSTR monitorenter ;
label0:
            {
                synchronized (monitor)
                {
                    if (shutdownStart == 0)
                        break label0;
                }
                if (shutdownStart == -1)
                    return;
                break MISSING_BLOCK_LABEL_44;
            }
            try
            {
                monitor.wait();
            }
            catch (InterruptedException interruptedexception) { }
            obj;
            JVM INSTR monitorexit ;
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
            if (BlueCoveImpl.stacks.isEmpty()) goto _L2; else goto _L1
_L1:
            Enumeration enumeration = BlueCoveImpl.stacks.elements();
_L6:
            if (enumeration.hasMoreElements()) goto _L4; else goto _L3
_L3:
            BlueCoveImpl.stacks.clear();
            System.out.println("BlueCove stack shutdown completed");
_L2:
            synchronized (monitor)
            {
                monitor.notifyAll();
            }
            return;
            exception1;
            obj1;
            JVM INSTR monitorexit ;
            throw exception1;
_L4:
            BluetoothStackHolder bluetoothstackholder = (BluetoothStackHolder)enumeration.nextElement();
            if (bluetoothstackholder.bluetoothStack == null) goto _L6; else goto _L5
_L5:
            bluetoothstackholder.bluetoothStack.destroy();
            bluetoothstackholder.bluetoothStack = null;
              goto _L6
            Exception exception2;
            exception2;
            bluetoothstackholder.bluetoothStack = null;
            throw exception2;
        }

        AsynchronousShutdownThread()
        {
            this$0 = BlueCoveImpl.this;
            super("BluecoveAsynchronousShutdownThread");
            shutdownStart = 0;
        }
    }

    private static class BluetoothStackHolder
    {

        private BluetoothStack bluetoothStack;
        Hashtable configProperties;

        private static BluetoothStack getBluetoothStack()
            throws BluetoothStateException
        {
            return BlueCoveImpl.instance().getBluetoothStack();
        }

        public String toString()
        {
            if (bluetoothStack == null)
                return "not initialized";
            else
                return bluetoothStack.toString();
        }




        private BluetoothStackHolder()
        {
            configProperties = new Hashtable();
        }

        BluetoothStackHolder(BluetoothStackHolder bluetoothstackholder)
        {
            this();
        }
    }

    private class ShutdownHookThread extends Thread
    {

        AsynchronousShutdownThread shutdownHookThread;
        final BlueCoveImpl this$0;

        void deRegister()
        {
            BlueCoveImpl.shutdownHookRegistered = null;
            UtilsJavaSE.runtimeRemoveShutdownHook(this);
            shutdownHookThread.deRegister();
        }

        public void run()
        {
            Object obj = shutdownHookThread.monitor;
            obj;
            JVM INSTR monitorenter ;
            boolean flag;
            shutdownHookThread.shutdownStart = 1;
            obj.notifyAll();
            flag = BlueCoveImpl.stacks.isEmpty();
            if (flag)
                break MISSING_BLOCK_LABEL_40;
            Exception exception;
            try
            {
                obj.wait(7000L);
            }
            catch (InterruptedException interruptedexception) { }
            obj;
            JVM INSTR monitorexit ;
            return;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        ShutdownHookThread(AsynchronousShutdownThread asynchronousshutdownthread)
        {
            this$0 = BlueCoveImpl.this;
            super("BluecoveShutdownHookThread");
            shutdownHookThread = asynchronousshutdownthread;
        }
    }


    public static final int BLUECOVE_STACK_DETECT_ANDROID_1_X = 256;
    public static final int BLUECOVE_STACK_DETECT_ANDROID_2_X = 512;
    static final int BLUECOVE_STACK_DETECT_BLUESOLEIL = 4;
    public static final int BLUECOVE_STACK_DETECT_BLUEZ = 32;
    public static final int BLUECOVE_STACK_DETECT_BLUEZ_DBUS = 128;
    public static final int BLUECOVE_STACK_DETECT_EMULATOR = 64;
    static final int BLUECOVE_STACK_DETECT_MICROSOFT = 1;
    static final int BLUECOVE_STACK_DETECT_OSX = 16;
    static final int BLUECOVE_STACK_DETECT_TOSHIBA = 8;
    static final int BLUECOVE_STACK_DETECT_WIDCOMM = 2;
    public static final String BLUETOOTH_API_VERSION = "1.1.1";
    static final String FALSE = "false";
    private static final String FQCN = com/intel/bluetooth/BlueCoveImpl.getName();
    public static final String NATIVE_LIB_BLUESOLEIL = "intelbth";
    public static final String NATIVE_LIB_BLUEZ = "bluecove";
    public static final String NATIVE_LIB_MS = "intelbth";
    public static final String NATIVE_LIB_OSX = "bluecove";
    public static final String NATIVE_LIB_TOSHIBA = "bluecove";
    public static final String NATIVE_LIB_WIDCOMM = "bluecove";
    public static final String OBEX_API_VERSION = "1.1.1";
    public static final String STACK_ANDROID_2_X = "android_2.x";
    public static final String STACK_BLUESOLEIL = "bluesoleil";
    public static final String STACK_BLUEZ = "bluez";
    public static final String STACK_BLUEZ_DBUS = "bluez-dbus";
    public static final String STACK_EMULATOR = "emulator";
    public static final String STACK_OSX = "mac";
    public static final String STACK_TOSHIBA = "toshiba";
    public static final String STACK_WIDCOMM = "widcomm";
    public static final String STACK_WINSOCK = "winsock";
    static final String TRUE = "true";
    private static final Vector fqcnSet;
    private static Vector initializationProperties;
    private static BlueCoveImpl instance;
    public static final int nativeLibraryVersionExpected = 0x1eabf4;
    private static final boolean oneDLLbuild = false;
    private static Hashtable resourceConfigProperties = new Hashtable();
    private static ShutdownHookThread shutdownHookRegistered;
    private static BluetoothStackHolder singleStack;
    private static Hashtable stacks = new Hashtable();
    private static ThreadLocalWrapper threadStack;
    private static BluetoothStackHolder threadStackIDDefault;
    public static final String version = (new StringBuilder(String.valueOf(String.valueOf(2)))).append(".").append(String.valueOf(1)).append(".").append(String.valueOf(1)).append("-SNAPSHOT").toString();
    public static final int versionBuild = 0;
    public static final int versionMajor1 = 2;
    public static final int versionMajor2 = 1;
    public static final int versionMinor = 1;
    public static final String versionSufix = "-SNAPSHOT";
    private Object accessControlContext;

    private BlueCoveImpl()
    {
        try
        {
            accessControlContext = AccessController.getContext();
        }
        catch (Throwable throwable) { }
        DebugLog.isDebugEnabled();
        copySystemProperties(null);
    }

    static void clearSystemProperties()
    {
        UtilsJavaSE.setSystemProperty("bluetooth.api.version", null);
        UtilsJavaSE.setSystemProperty("obex.api.version", null);
        String as[] = getSystemPropertiesList();
        int i = 0;
        do
        {
            if (i >= as.length)
                return;
            UtilsJavaSE.setSystemProperty(as[i], null);
            i++;
        } while (true);
    }

    private BluetoothStack createDetectorOnWindows(String s)
        throws BluetoothStateException
    {
label0:
        {
label1:
            {
label2:
                {
                    if (s == null)
                        break label1;
                    DebugLog.debug("detector stack", s);
                    Object obj;
                    if ("widcomm".equalsIgnoreCase(s))
                    {
                        obj = new BluetoothStackWIDCOMM();
                        if (!isNativeLibrariesAvailable(((BluetoothStack) (obj))))
                            break label1;
                    } else
                    {
                        if (!"bluesoleil".equalsIgnoreCase(s))
                            break label2;
                        obj = new BluetoothStackBlueSoleil();
                        if (!isNativeLibrariesAvailable(((BluetoothStack) (obj))))
                            break label1;
                    }
                    return ((BluetoothStack) (obj));
                }
                if ("winsock".equalsIgnoreCase(s))
                {
                    BluetoothStackMicrosoft bluetoothstackmicrosoft1 = new BluetoothStackMicrosoft();
                    if (isNativeLibrariesAvailable(bluetoothstackmicrosoft1))
                        return bluetoothstackmicrosoft1;
                } else
                {
                    if (!"toshiba".equalsIgnoreCase(s))
                        break label0;
                    BluetoothStackToshiba bluetoothstacktoshiba = new BluetoothStackToshiba();
                    if (isNativeLibrariesAvailable(bluetoothstacktoshiba))
                        return bluetoothstacktoshiba;
                }
            }
            BluetoothStackMicrosoft bluetoothstackmicrosoft = new BluetoothStackMicrosoft();
            if (isNativeLibrariesAvailable(bluetoothstackmicrosoft))
                return bluetoothstackmicrosoft;
            BluetoothStackWIDCOMM bluetoothstackwidcomm = new BluetoothStackWIDCOMM();
            if (isNativeLibrariesAvailable(bluetoothstackwidcomm))
                return bluetoothstackwidcomm;
            else
                throw new BluetoothStateException("BlueCove libraries not available");
        }
        throw new IllegalArgumentException((new StringBuilder("Invalid BlueCove detector stack [")).append(s).append("]").toString());
    }

    private void createShutdownHook()
    {
        this;
        JVM INSTR monitorenter ;
        ShutdownHookThread shutdownhookthread = shutdownHookRegistered;
        if (shutdownhookthread == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        AsynchronousShutdownThread asynchronousshutdownthread = new AsynchronousShutdownThread();
        ShutdownHookThread shutdownhookthread1 = new ShutdownHookThread(asynchronousshutdownthread);
        shutdownHookRegistered = shutdownhookthread1;
        if (UtilsJavaSE.runtimeAddShutdownHook(shutdownhookthread1))
        {
            UtilsJavaSE.threadSetDaemon(asynchronousshutdownthread);
            asynchronousshutdownthread.start();
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    private static BluetoothStackHolder currentStackHolder(boolean flag)
    {
        if (threadStack != null)
        {
            BluetoothStackHolder bluetoothstackholder = (BluetoothStackHolder)threadStack.get();
            if (bluetoothstackholder == null && threadStackIDDefault != null)
                bluetoothstackholder = threadStackIDDefault;
            else
            if (bluetoothstackholder == null && flag)
            {
                BluetoothStackHolder bluetoothstackholder1 = new BluetoothStackHolder(null);
                threadStack.set(bluetoothstackholder1);
                return bluetoothstackholder1;
            }
            return bluetoothstackholder;
        }
        if (singleStack == null && flag)
            singleStack = new BluetoothStackHolder(null);
        return singleStack;
    }

    private BluetoothStack detectStack()
        throws BluetoothStateException
    {
        String s;
        String s1;
        s = getConfigProperty("bluecove.stack.first");
        s1 = getConfigProperty("bluecove.stack");
        if (s == null)
            s = s1;
        if (!"emulator".equals(s1)) goto _L2; else goto _L1
_L1:
        Object obj = loadStack("bluecove.emulator.class", "com.intel.bluetooth.BluetoothEmulator");
_L4:
        int i = ((BluetoothStack) (obj)).getLibraryVersion();
        if (0x1eabf4 != i)
        {
            DebugLog.fatal((new StringBuilder("BlueCove native library version mismatch ")).append(i).append(" expected ").append(0x1eabf4).toString());
            throw new BluetoothStateException("BlueCove native library version mismatch");
        }
        break; /* Loop/switch isn't completed */
_L2:
        switch (NativeLibLoader.getOS())
        {
        default:
            throw new BluetoothStateException("BlueCove not available");

        case 1: // '\001'
        case 5: // '\005'
            obj = newStackInstance(loadStackClass("bluecove.bluez.class", "com.intel.bluetooth.BluetoothStackBlueZ|com.intel.bluetooth.BluetoothStackBlueZDBus"));
            loadNativeLibraries(((BluetoothStack) (obj)));
            s1 = ((BluetoothStack) (obj)).getStackID();
            break;

        case 6: // '\006'
            String s3;
            try
            {
                obj = newStackInstance(Class.forName("com.intel.bluetooth.BluetoothStackAndroid"));
                s3 = ((BluetoothStack) (obj)).getStackID();
            }
            catch (ClassNotFoundException classnotfoundexception)
            {
                throw new BluetoothStateException((new StringBuilder("BlueCove ")).append("com.intel.bluetooth.BluetoothStackAndroid").append(" not available").toString());
            }
            s1 = s3;
            break;

        case 4: // '\004'
            obj = new BluetoothStackOSX();
            loadNativeLibraries(((BluetoothStack) (obj)));
            s1 = ((BluetoothStack) (obj)).getStackID();
            break;

        case 2: // '\002'
        case 3: // '\003'
            obj = createDetectorOnWindows(s);
            if (DebugLog.isDebugEnabled())
                ((BluetoothStack) (obj)).enableNativeDebug(com/intel/bluetooth/DebugLog, true);
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (s1 == null)
        {
            int j = ((BluetoothStack) (obj)).detectBluetoothStack();
            DebugLog.debug("BluetoothStack detected", j);
            BluetoothStack bluetoothstack;
            String s2;
            if ((j & getStackId(((BluetoothStack) (obj)).getStackID())) != 0)
                s1 = ((BluetoothStack) (obj)).getStackID();
            else
            if ((j & 1) != 0)
                s1 = "winsock";
            else
            if ((j & 2) != 0)
                s1 = "widcomm";
            else
            if ((j & 4) != 0)
                s1 = "bluesoleil";
            else
            if ((j & 8) != 0)
                s1 = "toshiba";
            else
            if ((j & 0x10) != 0)
            {
                s1 = "mac";
            } else
            {
                DebugLog.fatal("BluetoothStack not detected");
                throw new BluetoothStateException("BluetoothStack not detected");
            }
        } else
        {
            DebugLog.debug("BluetoothStack selected", s1);
        }
        bluetoothstack = setBluetoothStack(s1, ((BluetoothStack) (obj)));
        s2 = bluetoothstack.getStackID();
        copySystemProperties(bluetoothstack);
        if (!s2.equals("emulator"))
            System.out.println((new StringBuilder("BlueCove version ")).append(version).append(" on ").append(s2).toString());
        return bluetoothstack;
    }

    private BluetoothStack detectStackPrivileged()
        throws BluetoothStateException
    {
        BluetoothStack bluetoothstack;
        try
        {
            bluetoothstack = (BluetoothStack)AccessController.doPrivileged(new PrivilegedExceptionAction() {

                final BlueCoveImpl this$0;

                public Object run()
                    throws BluetoothStateException
                {
                    return detectStack();
                }

            
            {
                this$0 = BlueCoveImpl.this;
                super();
            }
            }
, (AccessControlContext)accessControlContext);
        }
        catch (PrivilegedActionException privilegedactionexception)
        {
            Throwable throwable = UtilsJavaSE.getCause(privilegedactionexception);
            if (throwable instanceof BluetoothStateException)
                throw (BluetoothStateException)throwable;
            else
                throw (BluetoothStateException)UtilsJavaSE.initCause(new BluetoothStateException(privilegedactionexception.getMessage()), throwable);
        }
        return bluetoothstack;
    }

    public static Object getConfigObject(String s)
    {
        Object obj;
        if (s == null)
            throw new NullPointerException("key is null");
        BluetoothStackHolder bluetoothstackholder = currentStackHolder(false);
        obj = null;
        if (bluetoothstackholder != null)
            obj = bluetoothstackholder.configProperties.get(s);
        if (obj != null) goto _L2; else goto _L1
_L1:
        String s2 = System.getProperty(s);
        Object obj1 = s2;
_L9:
        if (obj1 != null) goto _L4; else goto _L3
_L3:
        Hashtable hashtable = resourceConfigProperties;
        hashtable;
        JVM INSTR monitorenter ;
        Object obj2 = resourceConfigProperties.get(s);
        if (obj2 == null) goto _L6; else goto _L5
_L5:
        if (obj2 instanceof String)
            obj1 = (String)obj2;
_L7:
        hashtable;
        JVM INSTR monitorexit ;
        return obj1;
_L6:
        String s1 = Utils.getResourceProperty(com/intel/bluetooth/BlueCoveImpl, s);
        if (s1 != null)
            break MISSING_BLOCK_LABEL_127;
        resourceConfigProperties.put(s, new Object());
        obj1 = s1;
          goto _L7
        resourceConfigProperties.put(s, s1);
        obj1 = s1;
          goto _L7
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        obj1 = obj;
        continue; /* Loop/switch isn't completed */
_L4:
        return obj1;
        SecurityException securityexception;
        securityexception;
        obj1 = obj;
        if (true) goto _L9; else goto _L8
_L8:
    }

    static int getConfigProperty(String s, int i)
    {
        String s1 = getConfigProperty(s);
        if (s1 != null)
            i = Integer.parseInt(s1);
        return i;
    }

    public static String getConfigProperty(String s)
    {
        return (String)getConfigObject(s);
    }

    public static boolean getConfigProperty(String s, boolean flag)
    {
label0:
        {
            String s1 = getConfigProperty(s);
            if (s1 != null)
            {
                if ("true".equals(s1) || "1".equals(s1))
                    break label0;
                flag = false;
            }
            return flag;
        }
        return true;
    }

    public static Object getCurrentThreadBluetoothStackID()
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        ThreadLocalWrapper threadlocalwrapper = threadStack;
        if (threadlocalwrapper != null) goto _L2; else goto _L1
_L1:
        Object obj1 = null;
_L4:
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        return obj1;
_L2:
        Object obj = threadStack.get();
        obj1 = obj;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static Vector getLocalDevicesID()
        throws BluetoothStateException
    {
        Vector vector = new Vector();
        String s = BluetoothStackHolder.getBluetoothStack().getLocalDeviceProperty("bluecove.local_devices_ids");
        if (s != null)
        {
            for (UtilsStringTokenizer utilsstringtokenizer = new UtilsStringTokenizer(s, ","); utilsstringtokenizer.hasMoreTokens(); vector.addElement(utilsstringtokenizer.nextToken()));
        }
        return vector;
    }

    static int getNativeLibraryVersion()
    {
        return 0x1eabf4;
    }

    private int getStackId(String s)
    {
        if ("widcomm".equalsIgnoreCase(s))
            return 2;
        if ("bluesoleil".equalsIgnoreCase(s))
            return 4;
        if ("toshiba".equalsIgnoreCase(s))
            return 8;
        if ("winsock".equalsIgnoreCase(s))
            return 1;
        if ("bluez".equalsIgnoreCase(s))
            return 32;
        if ("bluez-dbus".equalsIgnoreCase(s))
            return 128;
        if ("winsock".equalsIgnoreCase(s))
            return 16;
        return !"emulator".equalsIgnoreCase(s) ? 0 : 64;
    }

    static String[] getSystemPropertiesList()
    {
        return (new String[] {
            "bluetooth.master.switch", "bluetooth.sd.attr.retrievable.max", "bluetooth.connected.devices.max", "bluetooth.l2cap.receiveMTU.max", "bluetooth.sd.trans.max", "bluetooth.connected.inquiry.scan", "bluetooth.connected.page.scan", "bluetooth.connected.inquiry", "bluetooth.connected.page"
        });
    }

    public static Object getThreadBluetoothStackID()
        throws BluetoothStateException
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        Object obj;
        useThreadLocalBluetoothStack();
        BluetoothStackHolder.getBluetoothStack();
        obj = threadStack.get();
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        return obj;
        Exception exception;
        exception;
        throw exception;
    }

    public static BlueCoveImpl instance()
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        BlueCoveImpl bluecoveimpl;
        if (instance == null)
            instance = new BlueCoveImpl();
        bluecoveimpl = instance;
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        return bluecoveimpl;
        Exception exception;
        exception;
        throw exception;
    }

    private static boolean isNativeLibrariesAvailable(BluetoothStack bluetoothstack)
    {
        boolean flag = true;
        if (!UtilsJavaSE.canCallNotLoadedNativeMethod) goto _L2; else goto _L1
_L1:
        boolean flag1 = bluetoothstack.isNativeCodeLoaded();
        flag = flag1;
_L4:
        return flag;
        Error error;
        error;
_L2:
        BluetoothStack.LibraryInformation alibraryinformation[] = bluetoothstack.requireNativeLibraries();
        if (alibraryinformation != null && alibraryinformation.length != 0)
        {
            int i = 0;
            while (i < alibraryinformation.length) 
            {
                Class class1 = alibraryinformation[i].stackClass;
                if (class1 == null)
                    class1 = bluetoothstack.getClass();
                if (!NativeLibLoader.isAvailable(alibraryinformation[i].libraryName, class1))
                    return false;
                i++;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static void loadNativeLibraries(BluetoothStack bluetoothstack)
        throws BluetoothStateException
    {
        if (!UtilsJavaSE.canCallNotLoadedNativeMethod) goto _L2; else goto _L1
_L1:
        boolean flag = bluetoothstack.isNativeCodeLoaded();
        if (!flag) goto _L2; else goto _L3
_L3:
        return;
        Error error;
        BluetoothStack.LibraryInformation alibraryinformation[];
        error;
_L2:
        if ((alibraryinformation = bluetoothstack.requireNativeLibraries()) != null && alibraryinformation.length != 0)
        {
            int i = 0;
            while (i < alibraryinformation.length) 
            {
                Class class1 = alibraryinformation[i].stackClass;
                if (class1 == null)
                    class1 = bluetoothstack.getClass();
                if (!NativeLibLoader.isAvailable(alibraryinformation[i].libraryName, class1, alibraryinformation[i].required))
                {
                    if (alibraryinformation[i].required)
                        throw new BluetoothStateException((new StringBuilder("BlueCove library ")).append(alibraryinformation[i].libraryName).append(" not available;").append(NativeLibLoader.getLoadErrors(alibraryinformation[i].libraryName)).toString());
                    DebugLog.debug((new StringBuilder("library ")).append(alibraryinformation[i].libraryName).append(" not available").toString());
                }
                i++;
            }
        }
        if (true) goto _L3; else goto _L4
_L4:
    }

    private BluetoothStack loadStack(String s, String s1)
        throws BluetoothStateException
    {
        return newStackInstance(loadStackClass(s, s1));
    }

    private Class loadStackClass(String s, String s1)
        throws BluetoothStateException
    {
        String s2;
        UtilsStringTokenizer utilsstringtokenizer;
        s2 = getConfigProperty(s);
        if (s2 == null)
            s2 = s1;
        utilsstringtokenizer = new UtilsStringTokenizer(s2, "|");
_L2:
        String s3;
        if (!utilsstringtokenizer.hasMoreTokens())
            throw new BluetoothStateException((new StringBuilder("BlueCove ")).append(s2).append(" not available").toString());
        s3 = utilsstringtokenizer.nextToken();
        Class class1 = Class.forName(s3);
        return class1;
        ClassNotFoundException classnotfoundexception;
        classnotfoundexception;
        DebugLog.error(s3, classnotfoundexception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    private BluetoothStack newStackInstance(Class class1)
        throws BluetoothStateException
    {
        String s = class1.getName();
        BluetoothStack bluetoothstack = (BluetoothStack)class1.newInstance();
        return bluetoothstack;
        InstantiationException instantiationexception;
        instantiationexception;
        DebugLog.error(s, instantiationexception);
_L2:
        throw new BluetoothStateException((new StringBuilder("BlueCove ")).append(s).append(" can't instantiate").toString());
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        DebugLog.error(s, illegalaccessexception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void releaseThreadBluetoothStack()
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        if (threadStack == null)
            throw new IllegalArgumentException("ThreadLocal configuration is not initialized");
        break MISSING_BLOCK_LABEL_26;
        Exception exception;
        exception;
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        throw exception;
        threadStack.set(null);
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
    }

    private BluetoothStack setBluetoothStack(String s, BluetoothStack bluetoothstack)
        throws BluetoothStateException
    {
        this;
        JVM INSTR monitorenter ;
        if (singleStack == null) goto _L2; else goto _L1
_L1:
        if (singleStack.bluetoothStack != null)
        {
            singleStack.bluetoothStack.destroy();
            stacks.remove(singleStack.bluetoothStack);
            singleStack.bluetoothStack = null;
        }
_L10:
        if (bluetoothstack == null) goto _L4; else goto _L3
_L3:
        if (!bluetoothstack.getStackID().equalsIgnoreCase(s)) goto _L4; else goto _L5
_L5:
        Object obj = bluetoothstack;
_L8:
        int i;
        loadNativeLibraries(((BluetoothStack) (obj)));
        i = ((BluetoothStack) (obj)).getLibraryVersion();
        if (0x1eabf4 == i) goto _L7; else goto _L6
_L6:
        DebugLog.fatal((new StringBuilder("BlueCove native library version mismatch ")).append(i).append(" expected ").append(0x1eabf4).toString());
        throw new BluetoothStateException("BlueCove native library version mismatch");
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        BluetoothStackHolder bluetoothstackholder;
        if (threadStack == null)
            continue; /* Loop/switch isn't completed */
        bluetoothstackholder = (BluetoothStackHolder)threadStack.get();
        if (bluetoothstackholder == null)
            continue; /* Loop/switch isn't completed */
        if (bluetoothstackholder.bluetoothStack != null)
        {
            bluetoothstackholder.bluetoothStack.destroy();
            stacks.remove(bluetoothstackholder.bluetoothStack);
            bluetoothstackholder.bluetoothStack = null;
        }
        continue; /* Loop/switch isn't completed */
_L4:
label0:
        {
            if (!"widcomm".equalsIgnoreCase(s))
                break label0;
            obj = new BluetoothStackWIDCOMM();
        }
          goto _L8
label1:
        {
            if (!"bluesoleil".equalsIgnoreCase(s))
                break label1;
            obj = new BluetoothStackBlueSoleil();
        }
          goto _L8
label2:
        {
            if (!"toshiba".equalsIgnoreCase(s))
                break label2;
            obj = new BluetoothStackToshiba();
        }
          goto _L8
        obj = new BluetoothStackMicrosoft();
          goto _L8
_L7:
        if (DebugLog.isDebugEnabled())
            ((BluetoothStack) (obj)).enableNativeDebug(com/intel/bluetooth/DebugLog, true);
        ((BluetoothStack) (obj)).initialize();
        createShutdownHook();
        BluetoothStackHolder bluetoothstackholder1 = currentStackHolder(true);
        bluetoothstackholder1.bluetoothStack = ((BluetoothStack) (obj));
        stacks.put(obj, bluetoothstackholder1);
        if (threadStack != null)
            threadStack.set(bluetoothstackholder1);
        this;
        JVM INSTR monitorexit ;
        return ((BluetoothStack) (obj));
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static void setConfigObject(String s, Object obj)
    {
        if (s == null)
            throw new NullPointerException("key is null");
        BluetoothStackHolder bluetoothstackholder = currentStackHolder(true);
        if (bluetoothstackholder.bluetoothStack != null && initializationProperties.contains(s))
            throw new IllegalArgumentException("BlueCove Stack already initialized");
        if (obj == null)
        {
            bluetoothstackholder.configProperties.remove(s);
            return;
        } else
        {
            bluetoothstackholder.configProperties.put(s, obj);
            return;
        }
    }

    public static void setConfigProperty(String s, String s1)
    {
        setConfigObject(s, s1);
    }

    public static void setDefaultThreadBluetoothStackID(Object obj)
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        if (obj == null)
            break MISSING_BLOCK_LABEL_31;
        if (!(obj instanceof BluetoothStackHolder))
            throw new IllegalArgumentException("stackID is not valid");
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        throw exception;
        if (threadStack == null)
            throw new IllegalArgumentException("ThreadLocal configuration is not initialized");
        threadStackIDDefault = (BluetoothStackHolder)obj;
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
    }

    static void setThreadBluetoothStack(BluetoothStack bluetoothstack)
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        ThreadLocalWrapper threadlocalwrapper = threadStack;
        if (threadlocalwrapper != null) goto _L2; else goto _L1
_L1:
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        return;
_L2:
        BluetoothStackHolder bluetoothstackholder = (BluetoothStackHolder)threadStack.get();
        if (bluetoothstackholder == null) goto _L4; else goto _L3
_L3:
        if (bluetoothstackholder.bluetoothStack == bluetoothstack) goto _L1; else goto _L4
_L4:
        BluetoothStackHolder bluetoothstackholder1 = (BluetoothStackHolder)stacks.get(bluetoothstack);
        if (bluetoothstackholder1 != null)
            break MISSING_BLOCK_LABEL_71;
        throw new RuntimeException("ThreadLocal not found for BluetoothStack");
        Exception exception;
        exception;
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        throw exception;
        threadStack.set(bluetoothstackholder1);
          goto _L1
    }

    public static void setThreadBluetoothStackID(Object obj)
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        if (obj == null)
            break MISSING_BLOCK_LABEL_31;
        if (!(obj instanceof BluetoothStackHolder))
            throw new IllegalArgumentException("stackID is not valid");
        break MISSING_BLOCK_LABEL_31;
        Exception exception;
        exception;
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        throw exception;
        if (threadStack == null)
            throw new IllegalArgumentException("ThreadLocal configuration is not initialized");
        threadStack.set(obj);
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
    }

    public static void shutdown()
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        Enumeration enumeration = stacks.elements();
_L4:
        if (enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        stacks.clear();
        singleStack = null;
        threadStackIDDefault = null;
        if (shutdownHookRegistered != null)
            shutdownHookRegistered.deRegister();
        clearSystemProperties();
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        return;
_L2:
        BluetoothStackHolder bluetoothstackholder;
        bluetoothstackholder = (BluetoothStackHolder)enumeration.nextElement();
        bluetoothstackholder.configProperties.clear();
        if (bluetoothstackholder.bluetoothStack == null) goto _L4; else goto _L3
_L3:
        BluetoothConnectionNotifierBase.shutdownConnections(bluetoothstackholder.bluetoothStack);
        RemoteDeviceHelper.shutdownConnections(bluetoothstackholder.bluetoothStack);
        bluetoothstackholder.bluetoothStack.destroy();
        bluetoothstackholder.bluetoothStack = null;
          goto _L4
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        bluetoothstackholder.bluetoothStack = null;
        throw exception1;
    }

    public static void shutdownThreadBluetoothStack()
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        ThreadLocalWrapper threadlocalwrapper = threadStack;
        if (threadlocalwrapper != null) goto _L2; else goto _L1
_L1:
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        return;
_L2:
        BluetoothStackHolder bluetoothstackholder = (BluetoothStackHolder)threadStack.get();
        if (bluetoothstackholder == null)
            continue; /* Loop/switch isn't completed */
        if (threadStackIDDefault == bluetoothstackholder)
            threadStackIDDefault = null;
        bluetoothstackholder.configProperties.clear();
        if (bluetoothstackholder.bluetoothStack != null)
        {
            BluetoothConnectionNotifierBase.shutdownConnections(bluetoothstackholder.bluetoothStack);
            RemoteDeviceHelper.shutdownConnections(bluetoothstackholder.bluetoothStack);
            bluetoothstackholder.bluetoothStack.destroy();
            stacks.remove(bluetoothstackholder.bluetoothStack);
            bluetoothstackholder.bluetoothStack = null;
        }
        if (true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static void useThreadLocalBluetoothStack()
    {
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorenter ;
        if (threadStack == null)
            threadStack = new ThreadLocalWrapper();
        if ((BluetoothStackHolder)threadStack.get() != null) goto _L2; else goto _L1
_L1:
        BluetoothStackHolder bluetoothstackholder;
        if (singleStack == null)
            break MISSING_BLOCK_LABEL_56;
        bluetoothstackholder = singleStack;
        singleStack = null;
_L3:
        threadStack.set(bluetoothstackholder);
_L2:
        com/intel/bluetooth/BlueCoveImpl;
        JVM INSTR monitorexit ;
        return;
        bluetoothstackholder = new BluetoothStackHolder(null);
          goto _L3
        Exception exception;
        exception;
        throw exception;
    }

    void copySystemProperties(BluetoothStack bluetoothstack)
    {
        UtilsJavaSE.setSystemProperty("bluetooth.api.version", "1.1.1");
        UtilsJavaSE.setSystemProperty("obex.api.version", "1.1.1");
        if (bluetoothstack != null)
        {
            String as[] = getSystemPropertiesList();
            for (int i = 0; i < as.length; i++)
                UtilsJavaSE.setSystemProperty(as[i], bluetoothstack.getLocalDeviceProperty(as[i]));

        }
    }

    public void enableNativeDebug(boolean flag)
    {
        BluetoothStackHolder bluetoothstackholder = currentStackHolder(false);
        if (bluetoothstackholder != null && bluetoothstackholder.bluetoothStack != null)
            bluetoothstackholder.bluetoothStack.enableNativeDebug(com/intel/bluetooth/DebugLog, flag);
    }

    public BluetoothStack getBluetoothStack()
        throws BluetoothStateException
    {
        this;
        JVM INSTR monitorenter ;
        BluetoothStackHolder bluetoothstackholder;
        Utils.isLegalAPICall(fqcnSet);
        bluetoothstackholder = currentStackHolder(false);
        if (bluetoothstackholder == null) goto _L2; else goto _L1
_L1:
        if (bluetoothstackholder.bluetoothStack == null) goto _L2; else goto _L3
_L3:
        BluetoothStack bluetoothstack2 = bluetoothstackholder.bluetoothStack;
        BluetoothStack bluetoothstack1 = bluetoothstack2;
_L5:
        this;
        JVM INSTR monitorexit ;
        return bluetoothstack1;
_L2:
        if (bluetoothstackholder != null)
            break MISSING_BLOCK_LABEL_65;
        if (threadStack != null)
            throw new BluetoothStateException("No BluetoothStack or Adapter for current thread");
        break MISSING_BLOCK_LABEL_65;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (accessControlContext == null)
        {
            bluetoothstack1 = detectStack();
            continue; /* Loop/switch isn't completed */
        }
        BluetoothStack bluetoothstack = detectStackPrivileged();
        bluetoothstack1 = bluetoothstack;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String getLocalDeviceFeature(int i)
        throws BluetoothStateException
    {
        if ((i & BluetoothStackHolder.getBluetoothStack().getFeatureSet()) != 0)
            return "true";
        else
            return "false";
    }

    public String setBluetoothStack(String s)
        throws BluetoothStateException
    {
        return setBluetoothStack(s, null).getStackID();
    }

    static 
    {
        fqcnSet = new Vector();
        initializationProperties = new Vector();
        fqcnSet.addElement(FQCN);
        int i = 0;
        do
        {
            if (i >= BlueCoveConfigProperties.INITIALIZATION_PROPERTIES.length)
                return;
            initializationProperties.addElement(BlueCoveConfigProperties.INITIALIZATION_PROPERTIES[i]);
            i++;
        } while (true);
    }



}
