// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus;

import java.lang.reflect.*;

// Referenced classes of package org.alljoyn.bus:
//            MessageContext, BusException, BusObject, Status, 
//            InterfaceDescription

public class SignalEmitter
{
    private class Emitter
        implements InvocationHandler
    {

        final SignalEmitter this$0;

        public Object invoke(Object obj, Method method, Object aobj[])
            throws BusException
        {
            Class aclass[] = obj.getClass().getInterfaces();
            int i = aclass.length;
            for (int j = 0; j < i; j++)
            {
                Class class1 = aclass[j];
                Method amethod[] = class1.getMethods();
                int k = amethod.length;
                for (int l = 0; l < k; l++)
                {
                    Method method1 = amethod[l];
                    if (method.getName().equals(method1.getName()))
                        signal(source, destination, sessionId, InterfaceDescription.getName(class1), InterfaceDescription.getName(method1), InterfaceDescription.getInputSig(method1), aobj, timeToLive, flags, msgContext);
                }

            }

            return null;
        }

        private Emitter()
        {
            this$0 = SignalEmitter.this;
            super();
        }

        Emitter(_cls1 _pcls1)
        {
            this();
        }
    }

    public static final class GlobalBroadcast extends Enum
    {

        private static final GlobalBroadcast $VALUES[];
        public static final GlobalBroadcast Off;
        public static final GlobalBroadcast On;

        public static GlobalBroadcast valueOf(String s)
        {
            return (GlobalBroadcast)Enum.valueOf(org/alljoyn/bus/SignalEmitter$GlobalBroadcast, s);
        }

        public static GlobalBroadcast[] values()
        {
            return (GlobalBroadcast[])$VALUES.clone();
        }

        static 
        {
            Off = new GlobalBroadcast("Off", 0);
            On = new GlobalBroadcast("On", 1);
            GlobalBroadcast aglobalbroadcast[] = new GlobalBroadcast[2];
            aglobalbroadcast[0] = Off;
            aglobalbroadcast[1] = On;
            $VALUES = aglobalbroadcast;
        }

        private GlobalBroadcast(String s, int i)
        {
            super(s, i);
        }
    }


    private static final int COMPRESSED = 64;
    private static final int GLOBAL_BROADCAST = 32;
    private static final int SESSIONLESS = 16;
    private String destination;
    private int flags;
    private MessageContext msgContext;
    private Object proxy;
    private int sessionId;
    private BusObject source;
    private int timeToLive;

    public SignalEmitter(BusObject busobject)
    {
        this(busobject, null, 0, GlobalBroadcast.Off);
    }

    public SignalEmitter(BusObject busobject, int i, GlobalBroadcast globalbroadcast)
    {
        this(busobject, null, i, globalbroadcast);
    }

    public SignalEmitter(BusObject busobject, String s, int i, GlobalBroadcast globalbroadcast)
    {
        source = busobject;
        destination = s;
        sessionId = i;
        int j;
        if (globalbroadcast == GlobalBroadcast.On)
            j = 0x20 | flags;
        else
            j = 0xffffffdf & flags;
        flags = j;
        proxy = Proxy.newProxyInstance(busobject.getClass().getClassLoader(), busobject.getClass().getInterfaces(), new Emitter(null));
        msgContext = new MessageContext();
    }

    public SignalEmitter(BusObject busobject, GlobalBroadcast globalbroadcast)
    {
        this(busobject, null, 0, globalbroadcast);
    }

    private native Status cancelSessionlessSignal(BusObject busobject, int i);

    private native void signal(BusObject busobject, String s, int i, String s1, String s2, String s3, Object aobj[], 
            int j, int k, MessageContext messagecontext)
        throws BusException;

    public Status cancelSessionlessSignal(int i)
    {
        return cancelSessionlessSignal(source, i);
    }

    public Object getInterface(Class class1)
    {
        return proxy;
    }

    public MessageContext getMessageContext()
    {
        return msgContext;
    }

    public void setCompressHeader(boolean flag)
    {
        int i;
        if (flag)
            i = 0x40 | flags;
        else
            i = 0xffffffbf & flags;
        flags = i;
    }

    public void setSessionlessFlag(boolean flag)
    {
        int i;
        if (flag)
            i = 0x10 | flags;
        else
            i = 0xffffffef & flags;
        flags = i;
    }

    public void setTimeToLive(int i)
    {
        timeToLive = i;
    }







}
