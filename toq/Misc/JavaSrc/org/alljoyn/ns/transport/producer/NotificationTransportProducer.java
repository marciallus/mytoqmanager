// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.producer;

import java.util.EnumMap;
import java.util.Map;
import org.alljoyn.ns.NotificationMessageType;
import org.alljoyn.ns.transport.TransportNotificationText;
import org.alljoyn.ns.transport.interfaces.NotificationTransport;

class NotificationTransportProducer
    implements NotificationTransport
{

    private static Map servicePath;


    public static Map getServicePath()
    {
        return servicePath;
    }

    public void notify(int i, int j, short word0, String s, String s1, byte abyte0[], String s2, 
            Map map, Map map1, TransportNotificationText atransportnotificationtext[])
    {
    }

    static 
    {
        servicePath = new EnumMap(org/alljoyn/ns/NotificationMessageType);
        servicePath.put(NotificationMessageType.EMERGENCY, "/emergency");
        servicePath.put(NotificationMessageType.WARNING, "/warning");
        servicePath.put(NotificationMessageType.INFO, "/info");
    }
}
