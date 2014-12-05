// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus.ifaces;

import java.util.Map;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Variant;

public interface Properties
{

    public abstract Variant Get(String s, String s1)
        throws BusException;

    public abstract Map GetAll(String s)
        throws BusException;

    public abstract void Set(String s, String s1, Variant variant)
        throws BusException;
}
