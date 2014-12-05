// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.interfaces;

import org.alljoyn.bus.BusException;
import org.alljoyn.bus.BusObject;

public interface NotificationProducer
    extends BusObject
{

    public static final String IFNAME = "org.alljoyn.Notification.Producer";
    public static final String OBJ_PATH = "/notificationProducer";
    public static final short VERSION = 1;

    public abstract void dismiss(int i)
        throws BusException;

    public abstract short getVersion()
        throws BusException;
}
