// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication.interfaces;

import java.util.Map;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.Variant;

public interface PropertyControlSuper
{

    public abstract void MetadataChanged()
        throws BusException;

    public abstract void ValueChanged(Variant variant)
        throws BusException;

    public abstract Map getOptParams()
        throws BusException;

    public abstract int getStates()
        throws BusException;

    public abstract Variant getValue()
        throws BusException;

    public abstract short getVersion()
        throws BusException;

    public abstract void setValue(Variant variant)
        throws BusException;
}
