// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus.ifaces;

import org.alljoyn.bus.BusException;

public interface Introspectable
{

    public abstract String Introspect()
        throws BusException;
}
