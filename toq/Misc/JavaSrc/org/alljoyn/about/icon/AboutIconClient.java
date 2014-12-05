// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about.icon;

import org.alljoyn.bus.BusException;
import org.alljoyn.services.common.ClientBase;

public interface AboutIconClient
    extends ClientBase
{

    public abstract byte[] GetContent()
        throws BusException;

    public abstract String GetUrl()
        throws BusException;

    public abstract String getMimeType()
        throws BusException;

    public abstract int getSize()
        throws BusException;
}
