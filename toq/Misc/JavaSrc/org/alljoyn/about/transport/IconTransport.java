// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about.transport;

import org.alljoyn.bus.BusException;
import org.alljoyn.bus.BusObject;

public interface IconTransport
    extends BusObject
{

    public static final String INTERFACE_NAME = "org.alljoyn.Icon";
    public static final String OBJ_PATH = "/About/DeviceIcon";

    public abstract byte[] GetContent()
        throws BusException;

    public abstract String GetUrl()
        throws BusException;

    public abstract String getMimeType()
        throws BusException;

    public abstract int getSize()
        throws BusException;

    public abstract short getVersion()
        throws BusException;
}
