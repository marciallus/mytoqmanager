// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.interfaces;

import org.alljoyn.bus.BusException;
import org.alljoyn.bus.BusObject;

public interface NotificationDismisser
    extends BusObject
{

    public static final String IF_NAME = "org.alljoyn.Notification.Dismisser";
    public static final short VERSION = 1;

    public abstract void dismiss(int i, byte abyte0[])
        throws BusException;

    public abstract short getVersion()
        throws BusException;
}
