// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.interfaces;

import java.util.Map;
import org.alljoyn.bus.BusObject;
import org.alljoyn.ns.transport.TransportNotificationText;

public interface NotificationTransportSuperAgent
    extends BusObject
{

    public static final String IF_NAME = "org.alljoyn.Notification.Superagent";

    public abstract void notify(int i, int j, short word0, String s, String s1, byte abyte0[], String s2, 
            Map map, Map map1, TransportNotificationText atransportnotificationtext[]);
}
