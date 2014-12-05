// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.consumer;

import java.io.PrintStream;
import java.util.Map;
import org.alljoyn.bus.BusAttachment;
import org.alljoyn.bus.MessageContext;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.PayloadAdapter;
import org.alljoyn.ns.commons.*;
import org.alljoyn.ns.transport.Transport;
import org.alljoyn.ns.transport.TransportNotificationText;
import org.alljoyn.ns.transport.interfaces.NotificationTransport;
import org.alljoyn.ns.transport.interfaces.NotificationTransportSuperAgent;

class NotificationTransportConsumer
    implements NotificationTransport, NotificationTransportSuperAgent
{

    public static final String FROM_PRODUCER_RECEIVER_PATH = "/producerReceiver";
    public static final String FROM_SUPERAGENT_RECEIVER_PATH = "/superagentReceiver";
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/consumer/NotificationTransportConsumer.getSimpleName()).toString();
    private String servicePath;

    public NotificationTransportConsumer(String s)
    {
        servicePath = s;
    }

    public String getServicePath()
    {
        return servicePath;
    }

    public void notify(int i, int j, short word0, String s, String s1, byte abyte0[], String s2, 
            Map map, Map map1, TransportNotificationText atransportnotificationtext[])
    {
        Transport transport;
        BusAttachment busattachment;
        transport = Transport.getInstance();
        busattachment = transport.getBusAttachment();
        busattachment.enableConcurrentCallbacks();
        GenericLogger genericlogger = NativePlatformFactory.getPlatformObject().getNativeLogger();
        try
        {
            String s3 = busattachment.getMessageContext().sender;
            genericlogger.debug(TAG, (new StringBuilder()).append("Received notification from: '").append(s3).append("' by '").append(servicePath).append("' object, notification id: '").append(j).append("', handling").toString());
            if (!transport.getIsSuperAgentFound() && "/superagentReceiver".equals(servicePath))
            {
                genericlogger.debug(TAG, (new StringBuilder()).append("The received message id: '").append(j).append("' is the first we received from a SuperAgent, remove producer handling and handle current received message").toString());
                transport.onReceivedFirstSuperAgentNotification(s3);
            }
            genericlogger.debug(TAG, (new StringBuilder()).append("Forwarding the received notification id: '").append(j).append("' to PayloadAdapter").toString());
            PayloadAdapter.receivePayload(i, j, s3, word0, s, s1, abyte0, s2, map, map1, atransportnotificationtext);
            return;
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            try
            {
                genericlogger.error(TAG, (new StringBuilder()).append("Failed to read the received notification, Error: ").append(notificationserviceexception.getMessage()).toString());
                return;
            }
            catch (NativePlatformFactoryException nativeplatformfactoryexception)
            {
                System.out.println((new StringBuilder()).append(TAG).append(": Unexpected error occured: ").append(nativeplatformfactoryexception.getMessage()).toString());
            }
        }
        return;
    }

}
