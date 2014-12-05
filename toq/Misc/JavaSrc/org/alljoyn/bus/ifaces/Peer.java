// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus.ifaces;

import org.alljoyn.bus.BusException;

public interface Peer
{

    public abstract String GetMachineId()
        throws BusException;

    public abstract void Ping()
        throws BusException;
}
