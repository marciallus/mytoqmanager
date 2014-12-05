// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import org.alljoyn.bus.*;

public interface ClientBase
{

    public abstract Status connect();

    public abstract void disconnect();

    public abstract String getPeerName();

    public abstract int getSessionId();

    public abstract short getVersion()
        throws BusException;

    public abstract void initBus(BusAttachment busattachment)
        throws Exception;

    public abstract boolean isConnected();
}
