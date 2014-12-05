// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.io.IOException;
import java.util.*;
import javax.bluetooth.BluetoothStateException;
import javax.bluetooth.RemoteDevice;
import javax.microedition.io.Connection;

// Referenced classes of package com.intel.bluetooth:
//            BluetoothConnectionAccess, BlueCoveImpl, DebugLog, Utils, 
//            UtilsJavaSE, BluetoothStack, BluetoothStackExtension, NotSupportedIOException, 
//            WeakVectorFactory, BluetoothServerConnection

public abstract class RemoteDeviceHelper
{
    private static class RemoteDeviceWithExtendedInfo extends RemoteDevice
    {

        long addressLong;
        BluetoothStack bluetoothStack;
        private WeakVectorFactory.WeakVector connections;
        String name;
        private boolean paired;
        private Hashtable stackAttributes;

        private void addConnection(Object obj)
        {
            this;
            JVM INSTR monitorenter ;
            if (connections == null)
                connections = WeakVectorFactory.createWeakVector();
            this;
            JVM INSTR monitorexit ;
            synchronized (connections)
            {
                connections.addElement(obj);
                DebugLog.debug("connection open, open now", connections.size());
            }
            return;
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
            exception1;
            weakvector;
            JVM INSTR monitorexit ;
            throw exception1;
        }

        private Object getStackAttributes(Object obj)
        {
            if (stackAttributes == null)
                return null;
            else
                return stackAttributes.get(obj);
        }

        private void removeConnection(Object obj)
        {
            if (connections == null)
                return;
            synchronized (connections)
            {
                connections.removeElement(obj);
                DebugLog.debug("connection closed, open now", connections.size());
            }
            return;
            exception;
            weakvector;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private void setStackAttributes(Object obj, Object obj1)
        {
            if (stackAttributes == null)
                stackAttributes = new Hashtable();
            if (obj1 == null)
            {
                stackAttributes.remove(obj);
                return;
            } else
            {
                stackAttributes.put(obj, obj1);
                return;
            }
        }

        private void updateConnectionMarkAuthenticated()
        {
            if (connections == null)
                return;
            WeakVectorFactory.WeakVector weakvector = connections;
            weakvector;
            JVM INSTR monitorenter ;
            Enumeration enumeration = connections.elements();
_L1:
            if (enumeration.hasMoreElements())
                break MISSING_BLOCK_LABEL_42;
            return;
            Exception exception;
            exception;
            weakvector;
            JVM INSTR monitorexit ;
            throw exception;
            ((BluetoothConnectionAccess)enumeration.nextElement()).markAuthenticated();
              goto _L1
        }

        public boolean authenticate()
            throws IOException
        {
            if (!hasConnections())
                throw new IOException("No open connections to this RemoteDevice");
            boolean flag;
            if (isAuthenticated())
            {
                flag = true;
            } else
            {
                flag = bluetoothStack.authenticateRemoteDevice(addressLong);
                paired = flag;
                if (flag)
                {
                    updateConnectionMarkAuthenticated();
                    return flag;
                }
            }
            return flag;
        }

        boolean authenticate(String s)
            throws IOException
        {
            boolean flag = bluetoothStack.authenticateRemoteDevice(addressLong, s);
            paired = flag;
            if (flag)
                updateConnectionMarkAuthenticated();
            return flag;
        }

        public boolean authorize(Connection connection)
            throws IOException
        {
            if (!(connection instanceof BluetoothConnectionAccess))
                throw new IllegalArgumentException("Connection is not a Bluetooth connection");
            if (((BluetoothConnectionAccess)connection).isClosed())
                throw new IOException("Connection is already closed");
            if (!(connection instanceof BluetoothServerConnection))
                throw new IllegalArgumentException("Connection is not an incomming Bluetooth connection");
            return isTrustedDevice() || isAuthenticated();
        }

        int connectionsCount()
        {
            if (connections == null)
                return 0;
            else
                return connections.size();
        }

        public boolean encrypt(Connection connection, boolean flag)
            throws IOException
        {
            if (!(connection instanceof BluetoothConnectionAccess))
                throw new IllegalArgumentException("Connection is not a Bluetooth connection");
            if (((BluetoothConnectionAccess)connection).getRemoteAddress() != addressLong)
                throw new IllegalArgumentException("Connection is not to this device");
            boolean flag1;
            if (((BluetoothConnectionAccess)connection).getSecurityOpt() == 2)
                flag1 = true;
            else
                flag1 = false;
            if (flag1 == flag)
                return true;
            else
                return ((BluetoothConnectionAccess)connection).encrypt(addressLong, flag);
        }

        boolean hasConnections()
        {
            return connectionsCount() != 0;
        }

        public boolean isAuthenticated()
        {
            if (!hasConnections())
            {
                DebugLog.debug("no connections, Authenticated = false");
                return false;
            }
            Boolean boolean1 = bluetoothStack.isRemoteDeviceAuthenticated(addressLong);
            if (boolean1 != null)
                return boolean1.booleanValue();
            WeakVectorFactory.WeakVector weakvector = connections;
            weakvector;
            JVM INSTR monitorenter ;
            Enumeration enumeration = connections.elements();
_L2:
            if (enumeration.hasMoreElements())
                continue; /* Loop/switch isn't completed */
            return false;
            Exception exception;
            exception;
            weakvector;
            JVM INSTR monitorexit ;
            throw exception;
            if (((BluetoothConnectionAccess)enumeration.nextElement()).getSecurityOpt() == 0) goto _L2; else goto _L1
_L1:
            weakvector;
            JVM INSTR monitorexit ;
            return true;
        }

        public boolean isAuthorized(Connection connection)
            throws IOException
        {
            if (!(connection instanceof BluetoothConnectionAccess))
                throw new IllegalArgumentException("Connection is not a Bluetooth connection");
            if (((BluetoothConnectionAccess)connection).isClosed())
                throw new IOException("Connection is already closed");
            if (!(connection instanceof BluetoothServerConnection))
                throw new IllegalArgumentException("Connection is not an incomming Bluetooth connection");
            else
                return isTrustedDevice();
        }

        public boolean isEncrypted()
        {
            if (!hasConnections())
                return false;
            WeakVectorFactory.WeakVector weakvector = connections;
            weakvector;
            JVM INSTR monitorenter ;
            Enumeration enumeration = connections.elements();
_L2:
            if (enumeration.hasMoreElements())
                continue; /* Loop/switch isn't completed */
            return false;
            Exception exception;
            exception;
            weakvector;
            JVM INSTR monitorexit ;
            throw exception;
            if (((BluetoothConnectionAccess)enumeration.nextElement()).getSecurityOpt() != 2) goto _L2; else goto _L1
_L1:
            weakvector;
            JVM INSTR monitorexit ;
            return true;
        }

        public boolean isTrustedDevice()
        {
            Boolean boolean1 = bluetoothStack.isRemoteDeviceTrusted(addressLong);
            if (boolean1 == null)
                return paired;
            else
                return boolean1.booleanValue();
        }

        void removeAuthentication()
            throws IOException
        {
            bluetoothStack.removeAuthenticationWithRemoteDevice(addressLong);
            paired = false;
        }

        void shutdownConnections()
        {
            Enumeration enumeration;
            if (!hasConnections())
                return;
            new Vector();
            Vector vector;
            synchronized (connections)
            {
                vector = Utils.clone(connections.elements());
            }
            enumeration = vector.elements();
_L2:
            if (!enumeration.hasMoreElements())
            {
                synchronized (connections)
                {
                    connections.removeAllElements();
                }
                return;
            }
            break MISSING_BLOCK_LABEL_91;
            exception1;
            weakvector1;
            JVM INSTR monitorexit ;
            throw exception1;
            exception;
            weakvector;
            JVM INSTR monitorexit ;
            throw exception;
            BluetoothConnectionAccess bluetoothconnectionaccess = (BluetoothConnectionAccess)enumeration.nextElement();
            try
            {
                bluetoothconnectionaccess.shutdown();
            }
            catch (IOException ioexception)
            {
                DebugLog.debug("connection shutdown", ioexception);
            }
            if (true) goto _L2; else goto _L1
_L1:
        }

        public String toString()
        {
            return super.getBluetoothAddress();
        }






        private RemoteDeviceWithExtendedInfo(BluetoothStack bluetoothstack, long l, String s)
        {
            super(RemoteDeviceHelper.getBluetoothAddress(l));
            bluetoothStack = bluetoothstack;
            name = s;
            addressLong = l;
        }

        RemoteDeviceWithExtendedInfo(BluetoothStack bluetoothstack, long l, String s, RemoteDeviceWithExtendedInfo remotedevicewithextendedinfo)
        {
            this(bluetoothstack, l, s);
        }
    }


    private static Hashtable stackDevicesCashed = new Hashtable();

    private RemoteDeviceHelper()
    {
    }

    public static boolean authenticate(RemoteDevice remotedevice)
        throws IOException
    {
        return remoteDeviceImpl(remotedevice).authenticate();
    }

    public static boolean authenticate(RemoteDevice remotedevice, String s)
        throws IOException
    {
        return remoteDeviceImpl(remotedevice).authenticate(s);
    }

    static void connected(BluetoothConnectionAccess bluetoothconnectionaccess)
        throws IOException
    {
        RemoteDeviceWithExtendedInfo remotedevicewithextendedinfo = (RemoteDeviceWithExtendedInfo)implGetRemoteDevice((Connection)bluetoothconnectionaccess);
        bluetoothconnectionaccess.setRemoteDevice(remotedevicewithextendedinfo);
        remotedevicewithextendedinfo.addConnection(bluetoothconnectionaccess);
    }

    public static int connectedDevices()
    {
        int i = 0;
        Hashtable hashtable = devicesCashed(getBluetoothStack());
        hashtable;
        JVM INSTR monitorenter ;
        Enumeration enumeration = hashtable.elements();
_L2:
        if (!enumeration.hasMoreElements())
            return i;
        if (((RemoteDeviceWithExtendedInfo)enumeration.nextElement()).hasConnections())
            i++;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static RemoteDevice createRemoteDevice(BluetoothStack bluetoothstack, long l, String s, boolean flag)
    {
        RemoteDeviceWithExtendedInfo remotedevicewithextendedinfo = getCashedDeviceWithExtendedInfo(bluetoothstack, l);
        if (remotedevicewithextendedinfo != null) goto _L2; else goto _L1
_L1:
        Object obj = BlueCoveImpl.getCurrentThreadBluetoothStackID();
        BlueCoveImpl.setThreadBluetoothStack(bluetoothstack);
        remotedevicewithextendedinfo = new RemoteDeviceWithExtendedInfo(bluetoothstack, l, s, null);
        if (obj != null)
            BlueCoveImpl.setThreadBluetoothStackID(obj);
        devicesCashed(bluetoothstack).put(new Long(l), remotedevicewithextendedinfo);
        DebugLog.debug0x("new devicesCashed", l);
_L4:
        if (flag)
            remotedevicewithextendedinfo.paired = flag;
        return remotedevicewithextendedinfo;
        Exception exception;
        exception;
        if (obj != null)
            BlueCoveImpl.setThreadBluetoothStackID(obj);
        throw exception;
_L2:
        if (!Utils.isStringSet(remotedevicewithextendedinfo.name))
            remotedevicewithextendedinfo.name = s;
        else
        if (Utils.isStringSet(s))
            remotedevicewithextendedinfo.name = s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    static RemoteDevice createRemoteDevice(BluetoothStack bluetoothstack, RemoteDevice remotedevice)
        throws RuntimeException
    {
        if (remotedevice instanceof RemoteDeviceWithExtendedInfo)
            return remotedevice;
        if (bluetoothstack == null)
            bluetoothstack = getBluetoothStack();
        return createRemoteDevice(bluetoothstack, getAddress(remotedevice), null, false);
    }

    private static Hashtable devicesCashed(BluetoothStack bluetoothstack)
    {
        com/intel/bluetooth/RemoteDeviceHelper;
        JVM INSTR monitorenter ;
        Hashtable hashtable = (Hashtable)stackDevicesCashed.get(bluetoothstack);
        if (hashtable != null)
            break MISSING_BLOCK_LABEL_35;
        hashtable = new Hashtable();
        stackDevicesCashed.put(bluetoothstack, hashtable);
        com/intel/bluetooth/RemoteDeviceHelper;
        JVM INSTR monitorexit ;
        return hashtable;
        Exception exception;
        exception;
        throw exception;
    }

    static void disconnected(BluetoothConnectionAccess bluetoothconnectionaccess)
    {
        RemoteDevice remotedevice = bluetoothconnectionaccess.getRemoteDevice();
        if (remotedevice != null)
        {
            ((RemoteDeviceWithExtendedInfo)remotedevice).removeConnection(bluetoothconnectionaccess);
            bluetoothconnectionaccess.setRemoteDevice(null);
        }
    }

    public static String formatBluetoothAddress(String s)
    {
        String s1 = s.toUpperCase();
        return (new StringBuilder(String.valueOf("000000000000".substring(s1.length())))).append(s1).toString();
    }

    public static long getAddress(String s)
    {
        if (s.indexOf('-') != -1)
            throw new IllegalArgumentException((new StringBuilder("Illegal bluetoothAddress {")).append(s).append("}").toString());
        long l;
        try
        {
            l = Long.parseLong(s, 16);
        }
        catch (NumberFormatException numberformatexception)
        {
            throw new IllegalArgumentException((new StringBuilder("Illegal bluetoothAddress {")).append(s).append("}; should be hex number").toString());
        }
        return l;
    }

    static long getAddress(RemoteDevice remotedevice)
    {
        if (remotedevice instanceof RemoteDeviceWithExtendedInfo)
            return ((RemoteDeviceWithExtendedInfo)remotedevice).addressLong;
        else
            return getAddress(remotedevice.getBluetoothAddress());
    }

    public static String getBluetoothAddress(long l)
    {
        return formatBluetoothAddress(Utils.toHexString(l));
    }

    private static BluetoothStack getBluetoothStack()
        throws RuntimeException
    {
        BluetoothStack bluetoothstack;
        try
        {
            bluetoothstack = BlueCoveImpl.instance().getBluetoothStack();
        }
        catch (BluetoothStateException bluetoothstateexception)
        {
            throw (RuntimeException)UtilsJavaSE.initCause(new RuntimeException("Can't initialize bluetooth support"), bluetoothstateexception);
        }
        return bluetoothstack;
    }

    static RemoteDevice getCashedDevice(BluetoothStack bluetoothstack, long l)
    {
        return getCashedDeviceWithExtendedInfo(bluetoothstack, l);
    }

    private static RemoteDeviceWithExtendedInfo getCashedDeviceWithExtendedInfo(BluetoothStack bluetoothstack, long l)
    {
        Long long1 = new Long(l);
        return (RemoteDeviceWithExtendedInfo)devicesCashed(bluetoothstack).get(long1);
    }

    static Object getStackAttributes(BluetoothStack bluetoothstack, RemoteDevice remotedevice, Object obj)
    {
        RemoteDeviceWithExtendedInfo remotedevicewithextendedinfo;
        if (remotedevice instanceof RemoteDeviceWithExtendedInfo)
            remotedevicewithextendedinfo = (RemoteDeviceWithExtendedInfo)remotedevice;
        else
            remotedevicewithextendedinfo = getCashedDeviceWithExtendedInfo(bluetoothstack, getAddress(remotedevice));
        if (remotedevicewithextendedinfo != null)
            return remotedevicewithextendedinfo.getStackAttributes(obj);
        else
            return null;
    }

    static RemoteDevice getStackBoundDevice(BluetoothStack bluetoothstack, RemoteDevice remotedevice)
    {
        if ((remotedevice instanceof RemoteDeviceWithExtendedInfo) && ((RemoteDeviceWithExtendedInfo)remotedevice).bluetoothStack == bluetoothstack)
            return remotedevice;
        else
            return createRemoteDevice(bluetoothstack, getAddress(remotedevice), null, false);
    }

    public static boolean implAuthorize(RemoteDevice remotedevice, Connection connection)
        throws IOException
    {
        return remoteDeviceImpl(remotedevice).authorize(connection);
    }

    public static boolean implEncrypt(RemoteDevice remotedevice, Connection connection, boolean flag)
        throws IOException
    {
        return remoteDeviceImpl(remotedevice).encrypt(connection, flag);
    }

    public static String implGetFriendlyName(RemoteDevice remotedevice, long l, boolean flag)
        throws IOException
    {
        if (!(remotedevice instanceof RemoteDeviceWithExtendedInfo))
            remotedevice = createRemoteDevice(null, remotedevice);
        String s = ((RemoteDeviceWithExtendedInfo)remotedevice).name;
        if (flag || s == null)
        {
            s = ((RemoteDeviceWithExtendedInfo)remotedevice).bluetoothStack.getRemoteDeviceFriendlyName(l);
            if (s != null)
                ((RemoteDeviceWithExtendedInfo)remotedevice).name = s;
        }
        return s;
    }

    public static RemoteDevice implGetRemoteDevice(Connection connection)
        throws IOException
    {
        if (!(connection instanceof BluetoothConnectionAccess))
            throw new IllegalArgumentException((new StringBuilder("Not a Bluetooth connection ")).append(connection.getClass().getName()).toString());
        else
            return createRemoteDevice(((BluetoothConnectionAccess)connection).getBluetoothStack(), ((BluetoothConnectionAccess)connection).getRemoteAddress(), null, false);
    }

    public static boolean implIsAuthenticated(RemoteDevice remotedevice)
    {
        return remoteDeviceImpl(remotedevice).isAuthenticated();
    }

    public static boolean implIsAuthorized(RemoteDevice remotedevice, Connection connection)
        throws IOException
    {
        return remoteDeviceImpl(remotedevice).isAuthorized(connection);
    }

    public static boolean implIsEncrypted(RemoteDevice remotedevice)
    {
        return remoteDeviceImpl(remotedevice).isEncrypted();
    }

    public static boolean implIsTrustedDevice(RemoteDevice remotedevice)
    {
        return remoteDeviceImpl(remotedevice).isTrustedDevice();
    }

    public static RemoteDevice[] implRetrieveDevices(BluetoothStack bluetoothstack, int i)
    {
        if (i != 1 && i != 0)
            throw new IllegalArgumentException("invalid option");
        RemoteDevice aremotedevice[] = bluetoothstack.retrieveDevices(i);
        if (aremotedevice != null)
        {
            if (aremotedevice.length == 0)
                aremotedevice = null;
            return aremotedevice;
        }
        Hashtable hashtable = devicesCashed(bluetoothstack);
        switch (i)
        {
        case 0: // '\0'
            if (hashtable.size() == 0)
                return null;
            RemoteDevice aremotedevice1[] = new RemoteDevice[hashtable.size()];
            int j = 0;
            Enumeration enumeration1 = hashtable.elements();
            do
            {
                if (!enumeration1.hasMoreElements())
                    return aremotedevice1;
                int k = j + 1;
                aremotedevice1[j] = (RemoteDevice)enumeration1.nextElement();
                j = k;
            } while (true);

        case 1: // '\001'
            if (hashtable.size() == 0)
                return null;
            Vector vector = new Vector();
            Enumeration enumeration = hashtable.elements();
            do
            {
                RemoteDeviceWithExtendedInfo remotedevicewithextendedinfo;
                do
                {
                    if (!enumeration.hasMoreElements())
                        if (vector.size() == 0)
                            return null;
                        else
                            return remoteDeviceListToArray(vector);
                    remotedevicewithextendedinfo = (RemoteDeviceWithExtendedInfo)enumeration.nextElement();
                } while (!remotedevicewithextendedinfo.isTrustedDevice());
                vector.addElement(remotedevicewithextendedinfo);
            } while (true);
        }
        throw new IllegalArgumentException("invalid option");
    }

    public static int openConnections()
    {
        int i = 0;
        Hashtable hashtable = devicesCashed(getBluetoothStack());
        hashtable;
        JVM INSTR monitorenter ;
        Enumeration enumeration = hashtable.elements();
_L1:
        if (enumeration.hasMoreElements())
            break MISSING_BLOCK_LABEL_29;
        return i;
        i += ((RemoteDeviceWithExtendedInfo)enumeration.nextElement()).connectionsCount();
          goto _L1
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static int openConnections(long l)
    {
        RemoteDeviceWithExtendedInfo remotedevicewithextendedinfo = getCashedDeviceWithExtendedInfo(getBluetoothStack(), l);
        if (remotedevicewithextendedinfo == null)
            return 0;
        else
            return remotedevicewithextendedinfo.connectionsCount();
    }

    public static int readRSSI(RemoteDevice remotedevice)
        throws IOException
    {
        RemoteDeviceWithExtendedInfo remotedevicewithextendedinfo = remoteDeviceImpl(remotedevice);
        if (remotedevicewithextendedinfo.bluetoothStack instanceof BluetoothStackExtension)
            return ((BluetoothStackExtension)remotedevicewithextendedinfo.bluetoothStack).readRemoteDeviceRSSI(remotedevicewithextendedinfo.addressLong);
        else
            throw new NotSupportedIOException(remotedevicewithextendedinfo.bluetoothStack.getStackID());
    }

    private static RemoteDeviceWithExtendedInfo remoteDeviceImpl(RemoteDevice remotedevice)
    {
        return (RemoteDeviceWithExtendedInfo)createRemoteDevice(null, remotedevice);
    }

    static RemoteDevice[] remoteDeviceListToArray(Vector vector)
    {
        RemoteDevice aremotedevice[] = new RemoteDevice[vector.size()];
        int i = 0;
        Enumeration enumeration = vector.elements();
        do
        {
            if (!enumeration.hasMoreElements())
                return aremotedevice;
            int j = i + 1;
            aremotedevice[i] = (RemoteDevice)enumeration.nextElement();
            i = j;
        } while (true);
    }

    public static void removeAuthentication(RemoteDevice remotedevice)
        throws IOException
    {
        remoteDeviceImpl(remotedevice).removeAuthentication();
    }

    static void setStackAttributes(BluetoothStack bluetoothstack, RemoteDevice remotedevice, Object obj, Object obj1)
    {
        ((RemoteDeviceWithExtendedInfo)createRemoteDevice(bluetoothstack, remotedevice)).setStackAttributes(obj, obj1);
    }

    static void shutdownConnections(BluetoothStack bluetoothstack)
    {
        Hashtable hashtable = devicesCashed(bluetoothstack);
        hashtable;
        JVM INSTR monitorenter ;
        Enumeration enumeration = hashtable.elements();
_L2:
        if (enumeration.hasMoreElements())
            break MISSING_BLOCK_LABEL_24;
        return;
        ((RemoteDeviceWithExtendedInfo)enumeration.nextElement()).shutdownConnections();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        hashtable;
        JVM INSTR monitorexit ;
        throw exception;
    }

}
