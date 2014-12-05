// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;

import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.*;
import java.util.*;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.alljoyn.bus.annotation.BusSignalHandler;
import org.alljoyn.bus.ifaces.DBusProxyObj;

// Referenced classes of package org.alljoyn.bus:
//            ProxyBusObject, BusException, Status, AnnotationBusException, 
//            InterfaceDescription, KeyStoreListener, BusObject, SessionOpts, 
//            SessionListener, OnJoinSessionListener, SessionPortListener, MessageContext, 
//            AuthListener, BusListener, SecurityViolationListener

public class BusAttachment
{
    private class AuthListenerInternal
    {

        private static final int CERT_CHAIN = 4;
        private static final int EXPIRATION = 32;
        private static final int LOGON_ENTRY = 16;
        private static final int NEW_PASSWORD = 4097;
        private static final int ONE_TIME_PWD = 8193;
        private static final int PASSWORD = 1;
        private static final int PRIVATE_KEY = 8;
        private static final int USER_NAME = 2;
        private AuthListener authListener;
        final BusAttachment this$0;
        private SecurityViolationListener violationListener;

        public boolean authListenerSet()
        {
            return authListener != null;
        }

        public void authenticationComplete(String s, String s1, boolean flag)
        {
            if (authListener != null)
                authListener.completed(s, s1, flag);
        }

        public AuthListener.Credentials requestCredentials(String s, String s1, int i, String s2, int j)
            throws BusException
        {
            boolean flag = true;
            if (authListener == null)
                throw new BusException("No registered application AuthListener");
            AuthListener.Credentials credentials = new AuthListener.Credentials();
            ArrayList arraylist = new ArrayList();
            if ((j & 1) == flag)
            {
                boolean flag1;
                if ((j & 0x1001) == 4097)
                    flag1 = flag;
                else
                    flag1 = false;
                if ((j & 0x2001) != 8193)
                    flag = false;
                arraylist.add(new AuthListener.PasswordRequest(credentials, flag1, flag));
            }
            if ((j & 2) == 2)
                arraylist.add(new AuthListener.UserNameRequest(credentials));
            if ((j & 4) == 4)
                arraylist.add(new AuthListener.CertificateRequest(credentials));
            if ((j & 8) == 8)
                arraylist.add(new AuthListener.PrivateKeyRequest(credentials));
            if ((j & 0x10) == 16)
                arraylist.add(new AuthListener.LogonEntryRequest(credentials));
            arraylist.add(new AuthListener.ExpirationRequest(credentials));
            if (authListener.requested(s, s1, i, s2, (AuthListener.AuthRequest[])arraylist.toArray(new AuthListener.AuthRequest[0])))
                return credentials;
            else
                return null;
        }

        public void securityViolation(Status status)
        {
            if (violationListener != null)
                violationListener.violated(status);
        }

        public void setAuthListener(AuthListener authlistener)
        {
            authListener = authlistener;
        }

        public void setSecurityViolationListener(SecurityViolationListener securityviolationlistener)
        {
            violationListener = securityviolationlistener;
        }

        public boolean verifyCredentials(String s, String s1, String s2, String s3)
            throws BusException
        {
            if (authListener == null)
                throw new BusException("No registered application AuthListener");
            AuthListener authlistener = authListener;
            String s4;
            if (s2 == null)
                s4 = "";
            else
                s4 = s2;
            AuthListener.AuthRequest aauthrequest[] = new AuthListener.AuthRequest[1];
            aauthrequest[0] = new AuthListener.VerifyRequest(s3);
            return authlistener.requested(s, s1, 0, s4, aauthrequest);
        }

        private AuthListenerInternal()
        {
            this$0 = BusAttachment.this;
            super();
            authListener = null;
        }

        AuthListenerInternal(_cls1 _pcls1)
        {
            this();
        }
    }

    public static final class RemoteMessage extends Enum
    {

        private static final RemoteMessage $VALUES[];
        public static final RemoteMessage Ignore;
        public static final RemoteMessage Receive;

        public static RemoteMessage valueOf(String s)
        {
            return (RemoteMessage)Enum.valueOf(org/alljoyn/bus/BusAttachment$RemoteMessage, s);
        }

        public static RemoteMessage[] values()
        {
            return (RemoteMessage[])$VALUES.clone();
        }

        static 
        {
            Ignore = new RemoteMessage("Ignore", 0);
            Receive = new RemoteMessage("Receive", 1);
            RemoteMessage aremotemessage[] = new RemoteMessage[2];
            aremotemessage[0] = Ignore;
            aremotemessage[1] = Receive;
            $VALUES = aremotemessage;
        }

        private RemoteMessage(String s, int i)
        {
            super(s, i);
        }
    }

    private static class ShutdownHookThread extends Thread
    {

        public void run()
        {
            for (Iterator iterator = BusAttachment.busAttachmentSet.iterator(); iterator.hasNext(); iterator = BusAttachment.busAttachmentSet.iterator())
            {
                WeakReference weakreference = (WeakReference)iterator.next();
                BusAttachment busattachment = (BusAttachment)weakreference.get();
                if (busattachment != null)
                    busattachment.release();
                else
                    BusAttachment.busAttachmentSet.remove(weakreference);
            }

        }

        private ShutdownHookThread()
        {
        }

        ShutdownHookThread(_cls1 _pcls1)
        {
            this();
        }
    }


    public static final int ALLJOYN_MAX_ARRAY_LEN = 0x20000;
    public static final int ALLJOYN_MAX_PACKET_LEN = 0x20000;
    public static final int ALLJOYN_NAME_FLAG_ALLOW_REPLACEMENT = 1;
    public static final int ALLJOYN_REQUESTNAME_FLAG_DO_NOT_QUEUE = 4;
    public static final int ALLJOYN_REQUESTNAME_FLAG_REPLACE_EXISTING = 2;
    private static final int DEFAULT_CONCURRENCY = 4;
    public static final int SESSION_ID_ANY;
    public static final short SESSION_PORT_ANY;
    private static HashSet busAttachmentSet = new HashSet();
    private static boolean shutdownHookRegistered = false;
    private String address;
    private boolean allowRemoteMessages;
    private String authMechanisms;
    private AuthListenerInternal busAuthListener;
    private DBusProxyObj dbus;
    private ProxyBusObject dbusbo;
    private ExecutorService executor;
    private Method foundAdvertisedName;
    private long handle;
    private boolean isConnected;
    private boolean isShared;
    private String keyStoreFileName;
    private KeyStoreListener keyStoreListener;
    private Method lostAdvertisedName;

    public BusAttachment(String s)
    {
        this(s, RemoteMessage.Ignore, 4);
    }

    public BusAttachment(String s, RemoteMessage remotemessage)
    {
        this(s, remotemessage, 4);
    }

    public BusAttachment(String s, RemoteMessage remotemessage, int i)
    {
        isShared = false;
        isConnected = false;
        boolean flag;
        if (remotemessage == RemoteMessage.Receive)
            flag = true;
        else
            flag = false;
        allowRemoteMessages = flag;
        busAuthListener = new AuthListenerInternal(null);
        try
        {
            foundAdvertisedName = getClass().getDeclaredMethod("foundAdvertisedName", new Class[] {
                java/lang/String, java/lang/Short, java/lang/String
            });
            foundAdvertisedName.setAccessible(true);
            lostAdvertisedName = getClass().getDeclaredMethod("lostAdvertisedName", new Class[] {
                java/lang/String, java/lang/Short, java/lang/String
            });
            lostAdvertisedName.setAccessible(true);
        }
        catch (NoSuchMethodException nosuchmethodexception) { }
        create(s, allowRemoteMessages, i);
        dbusbo = new ProxyBusObject(this, "org.freedesktop.DBus", "/org/freedesktop/DBus", 0, new Class[] {
            org/alljoyn/bus/ifaces/DBusProxyObj
        });
        dbus = (DBusProxyObj)dbusbo.getInterface(org/alljoyn/bus/ifaces/DBusProxyObj);
        executor = Executors.newSingleThreadExecutor();
    }

    private native Status connect(String s, KeyStoreListener keystorelistener, String s1, AuthListenerInternal authlistenerinternal, String s2, boolean flag);

    private native void create(String s, boolean flag, int i);

    private synchronized native void destroy();

    private native void disconnect(String s);

    private native Status enablePeerSecurity(String s, AuthListenerInternal authlistenerinternal, String s1, Boolean boolean1);

    static byte[] encode(char ac[])
    {
        byte abyte0[];
        try
        {
            ByteBuffer bytebuffer = Charset.forName("UTF-8").newEncoder().encode(CharBuffer.wrap(ac));
            abyte0 = new byte[bytebuffer.limit()];
            bytebuffer.get(abyte0);
        }
        catch (CharacterCodingException charactercodingexception)
        {
            BusException.log(charactercodingexception);
            return null;
        }
        return abyte0;
    }

    private native boolean isSecureBusObject(BusObject busobject);

    private native Status joinSessionAsync(String s, short word0, SessionOpts sessionopts, SessionListener sessionlistener, OnJoinSessionListener onjoinsessionlistener, Object obj);

    private native Status registerBusObject(String s, BusObject busobject, InterfaceDescription ainterfacedescription[], boolean flag);

    private native Status registerNativeSignalHandler(String s, String s1, Object obj, Method method, String s2);

    public native Status addMatch(String s);

    public native Status advertiseName(String s, short word0);

    public native Status bindSessionPort(Mutable.ShortValue shortvalue, SessionOpts sessionopts, SessionPortListener sessionportlistener);

    public native Status cancelAdvertiseName(String s, short word0);

    public native Status cancelFindAdvertisedName(String s);

    public native Status cancelFindAdvertisedNameByTransport(String s, short word0);

    public native void clearKeyStore();

    public native Status clearKeys(String s);

    public Status connect()
    {
        if (System.getProperty("os.name").startsWith("Windows"))
            address = System.getProperty("org.alljoyn.bus.address", "tcp:addr=127.0.0.1,port=9956");
        else
            address = System.getProperty("org.alljoyn.bus.address", "unix:abstract=alljoyn");
        if (address != null)
        {
            Status status = connect(address, keyStoreListener, authMechanisms, busAuthListener, keyStoreFileName, isShared);
            if (status == Status.OK)
            {
                synchronized (busAttachmentSet)
                {
                    if (!shutdownHookRegistered)
                    {
                        Runtime.getRuntime().addShutdownHook(new ShutdownHookThread(null));
                        shutdownHookRegistered = true;
                    }
                    busAttachmentSet.add(new WeakReference(this));
                }
                isConnected = true;
            }
            return status;
        } else
        {
            return Status.INVALID_CONNECT_ARGS;
        }
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void disconnect()
    {
        if (address != null)
        {
            disconnect(address);
            isConnected = false;
        }
    }

    public native void emitChangedSignal(BusObject busobject, String s, String s1, Object obj, int i);

    public native void enableConcurrentCallbacks();

    void execute(Runnable runnable)
    {
        executor.execute(runnable);
    }

    protected void finalize()
        throws Throwable
    {
        if (isConnected)
            disconnect();
        dbusbo = null;
        dbus = null;
        destroy();
        super.finalize();
        return;
        Exception exception;
        exception;
        super.finalize();
        throw exception;
    }

    public native Status findAdvertisedName(String s);

    public native Status findAdvertisedNameByTransport(String s, short word0);

    public DBusProxyObj getDBusProxyObj()
    {
        return dbus;
    }

    public native String getGlobalGUIDString();

    public native Status getKeyExpiration(String s, Mutable.IntegerValue integervalue);

    public native MessageContext getMessageContext();

    public native Status getPeerGUID(String s, Mutable.StringValue stringvalue);

    public ProxyBusObject getProxyBusObject(String s, String s1, int i, Class aclass[])
    {
        return new ProxyBusObject(this, s, s1, i, aclass);
    }

    public ProxyBusObject getProxyBusObject(String s, String s1, int i, Class aclass[], boolean flag)
    {
        return new ProxyBusObject(this, s, s1, i, aclass, flag);
    }

    public native Status getSessionFd(int i, Mutable.IntegerValue integervalue);

    public native String getUniqueName();

    public boolean isBusObjectSecure(BusObject busobject)
    {
        return isSecureBusObject(busobject);
    }

    public native boolean isConnected();

    public native Status joinSession(String s, short word0, Mutable.IntegerValue integervalue, SessionOpts sessionopts, SessionListener sessionlistener);

    public Status joinSession(String s, short word0, SessionOpts sessionopts, SessionListener sessionlistener, OnJoinSessionListener onjoinsessionlistener, Object obj)
    {
        return joinSessionAsync(s, word0, sessionopts, sessionlistener, onjoinsessionlistener, obj);
    }

    public native Status leaveSession(int i);

    public Status registerAuthListener(String s, AuthListener authlistener)
    {
        return registerAuthListener(s, authlistener, null, false);
    }

    public Status registerAuthListener(String s, AuthListener authlistener, String s1)
    {
        return registerAuthListener(s, authlistener, s1, false);
    }

    public Status registerAuthListener(String s, AuthListener authlistener, String s1, boolean flag)
    {
        Status status;
        if (busAuthListener.authListenerSet())
        {
            status = Status.ALREADY_REGISTERED;
        } else
        {
            authMechanisms = s;
            busAuthListener.setAuthListener(authlistener);
            keyStoreFileName = s1;
            isShared = flag;
            status = enablePeerSecurity(authMechanisms, busAuthListener, keyStoreFileName, Boolean.valueOf(flag));
            if (status != Status.OK)
            {
                busAuthListener.setAuthListener(null);
                authMechanisms = null;
                return status;
            }
        }
        return status;
    }

    public native void registerBusListener(BusListener buslistener);

    public Status registerBusObject(BusObject busobject, String s)
    {
        return registerBusObject(busobject, s, false);
    }

    public Status registerBusObject(BusObject busobject, String s, boolean flag)
    {
        ArrayList arraylist;
        Status status;
        arraylist = new ArrayList();
        status = InterfaceDescription.create(this, busobject.getClass().getInterfaces(), arraylist);
        if (status != Status.OK)
            return status;
        Status status1;
        try
        {
            status1 = registerBusObject(s, busobject, (InterfaceDescription[])arraylist.toArray(new InterfaceDescription[0]), flag);
        }
        catch (AnnotationBusException annotationbusexception)
        {
            BusException.log(annotationbusexception);
            return Status.BAD_ANNOTATION;
        }
        return status1;
    }

    public void registerKeyStoreListener(KeyStoreListener keystorelistener)
    {
        keyStoreListener = keystorelistener;
    }

    public void registerSecurityViolationListener(SecurityViolationListener securityviolationlistener)
    {
        busAuthListener.setSecurityViolationListener(securityviolationlistener);
    }

    public Status registerSignalHandler(String s, String s1, Object obj, Method method)
    {
        return registerSignalHandler(s, s1, obj, method, "");
    }

    public Status registerSignalHandler(String s, String s1, Object obj, Method method, String s2)
    {
        Status status = registerNativeSignalHandler(s, s1, obj, method, s2);
        if (status != Status.BUS_NO_SUCH_INTERFACE) goto _L2; else goto _L1
_L1:
        Class class1;
        class1 = Class.forName(s);
        status = (new InterfaceDescription()).create(this, class1);
        if (status != Status.OK) goto _L2; else goto _L3
_L3:
        String s3 = InterfaceDescription.getName(class1);
        String s5 = InterfaceDescription.getName(class1.getMethod(s1, method.getParameterTypes()));
        String s4 = s5;
_L5:
        NoSuchMethodException nosuchmethodexception;
        Status status1;
        try
        {
            status1 = registerNativeSignalHandler(s3, s4, obj, method, s2);
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            BusException.log(classnotfoundexception);
            return Status.BUS_NO_SUCH_INTERFACE;
        }
        catch (AnnotationBusException annotationbusexception)
        {
            BusException.log(annotationbusexception);
            return Status.BAD_ANNOTATION;
        }
        status = status1;
_L2:
        return status;
        nosuchmethodexception;
        s4 = s1;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public Status registerSignalHandlers(Object obj)
    {
        Status status = Status.OK;
        Method amethod[] = obj.getClass().getMethods();
        int i = amethod.length;
        for (int j = 0; j < i;)
        {
            Method method = amethod[j];
            BusSignalHandler bussignalhandler = (BusSignalHandler)method.getAnnotation(org/alljoyn/bus/annotation/BusSignalHandler);
            Status status1;
            if (bussignalhandler != null)
            {
                status1 = registerSignalHandler(bussignalhandler.iface(), bussignalhandler.signal(), obj, method, bussignalhandler.source());
                if (status1 != Status.OK)
                    return status1;
            } else
            {
                status1 = status;
            }
            j++;
            status = status1;
        }

        return status;
    }

    public void release()
    {
        if (isConnected)
            disconnect();
        if (dbusbo != null)
        {
            dbusbo.release();
            dbusbo = null;
        }
        dbus = null;
        destroy();
        HashSet hashset = busAttachmentSet;
        hashset;
        JVM INSTR monitorenter ;
        Iterator iterator = busAttachmentSet.iterator();
_L2:
        BusAttachment busattachment;
        do
        {
            if (!iterator.hasNext())
                break MISSING_BLOCK_LABEL_107;
            busattachment = (BusAttachment)((WeakReference)iterator.next()).get();
        } while (busattachment == null);
        if (!busattachment.equals(this)) goto _L2; else goto _L1
_L1:
        iterator.remove();
          goto _L2
        Exception exception;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
        hashset;
        JVM INSTR monitorexit ;
    }

    public native Status releaseName(String s);

    public native Status reloadKeyStore();

    public native Status removeMatch(String s);

    public native Status removeSessionMember(int i, String s);

    public native Status requestName(String s, int i);

    public native Status setDaemonDebug(String s, int i);

    public native void setDebugLevel(String s, int i);

    public native Status setKeyExpiration(String s, int i);

    public native Status setLinkTimeout(int i, Mutable.IntegerValue integervalue);

    public native void setLogLevels(String s);

    public native Status setSessionListener(int i, SessionListener sessionlistener);

    public native Status unbindSessionPort(short word0);

    public native void unregisterBusListener(BusListener buslistener);

    public native void unregisterBusObject(BusObject busobject);

    public native void unregisterSignalHandler(Object obj, Method method);

    public void unregisterSignalHandlers(Object obj)
    {
        Method amethod[] = obj.getClass().getMethods();
        int i = amethod.length;
        for (int j = 0; j < i; j++)
        {
            Method method = amethod[j];
            if ((BusSignalHandler)method.getAnnotation(org/alljoyn/bus/annotation/BusSignalHandler) != null)
                unregisterSignalHandler(obj, method);
        }

    }

    public native void useOSLogging(boolean flag);


}
