// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.producer;

import java.util.*;
import org.alljoyn.about.AboutService;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.ns.NotificationMessageType;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.transport.*;

// Referenced classes of package org.alljoyn.ns.transport.producer:
//            TransportChannelObject, NotificationProducerImpl, SenderSessionListener

public class SenderTransport
{

    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/producer/SenderTransport.getSimpleName()).toString();
    private NativePlatform nativePlatform;
    private NotificationProducerImpl notifProducerBusObj;
    private SenderSessionListener sessionListener;
    private boolean stopSending;
    private Map transportSenderChannels;

    public SenderTransport(NativePlatform nativeplatform)
    {
        stopSending = false;
        nativePlatform = nativeplatform;
    }

    private void deleteNotificationById(int i)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, (new StringBuilder()).append("Trying to delete the notification by id: '").append(i).append("', searching for the relevant object").toString());
        Iterator iterator = transportSenderChannels.values().iterator();
        do
        {
            TransportChannelObject transportchannelobject;
label0:
            {
                boolean flag = iterator.hasNext();
                boolean flag1 = false;
                if (flag)
                {
                    transportchannelobject = (TransportChannelObject)iterator.next();
                    transportchannelobject.acquireLock();
                    Integer integer = transportchannelobject.getNotificationId();
                    if (integer == null || integer.intValue() != i)
                        break label0;
                    genericlogger.debug(TAG, (new StringBuilder()).append("Found the object with notifId: '").append(i).append("' to be cancelled").toString());
                    transportchannelobject.deleteNotification();
                    flag1 = true;
                    transportchannelobject.releaseLock();
                }
                if (!flag1)
                    genericlogger.debug(TAG, (new StringBuilder()).append("Failed to find the Notification with Id: '").append(i).append("'").toString());
                return;
            }
            transportchannelobject.releaseLock();
        } while (true);
    }

    public void deleteLastMessage(NotificationMessageType notificationmessagetype)
        throws NotificationServiceException
    {
        TransportChannelObject transportchannelobject = (TransportChannelObject)transportSenderChannels.get(notificationmessagetype);
        if (transportchannelobject == null)
        {
            throw new NotificationServiceException((new StringBuilder()).append("Received an unknown message type: '").append(notificationmessagetype).append("', can't find a transport channel to delete the notification").toString());
        } else
        {
            transportchannelobject.deleteNotification();
            return;
        }
    }

    public void dismiss(int i)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        Transport transport = Transport.getInstance();
        genericlogger.debug(TAG, (new StringBuilder()).append("Dismiss method has been called, trying to find and delete the notification by its id: '").append(i).append("'").toString());
        deleteNotificationById(i);
        try
        {
            DismissEmitter.send(i, transport.getAppId(transport.readAllProperties()));
            return;
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Unable to send the Dismiss signal for notifId: '").append(i).append("', Error: '").append(notificationserviceexception.getMessage()).append("'").toString());
        }
    }

    public void sendNotification(int i, int j, NotificationMessageType notificationmessagetype, String s, String s1, byte abyte0[], String s2, 
            Map map, Map map1, TransportNotificationText atransportnotificationtext[], int k)
        throws NotificationServiceException
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        if (stopSending)
        {
            genericlogger.debug(TAG, "In stopSending mode NOT sending notification!!!");
            return;
        }
        TransportChannelObject transportchannelobject = (TransportChannelObject)transportSenderChannels.get(notificationmessagetype);
        if (transportchannelobject == null)
        {
            throw new NotificationServiceException((new StringBuilder()).append("Received an unknown message type: '").append(notificationmessagetype).append("', can't find a transport channel to send the notification").toString());
        } else
        {
            transportchannelobject.sendNotification(i, j, notificationmessagetype.getTypeId(), s, s1, abyte0, s2, map, map1, atransportnotificationtext, k);
            return;
        }
    }

    public void startSenderTransport()
        throws NotificationServiceException
    {
        AboutService aboutservice;
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        org.alljoyn.bus.BusAttachment busattachment = Transport.getInstance().getBusAttachment();
        genericlogger.debug(TAG, "Starting a sender transport");
        aboutservice = AboutServiceImpl.getInstance();
        if (!aboutservice.isServerRunning())
        {
            genericlogger.error(TAG, "The AboutServer wasn't started, unable to send Announcement signals");
            throw new NotificationServiceException("The AboutServer wasn't started");
        }
        transportSenderChannels = new EnumMap(org/alljoyn/ns/NotificationMessageType);
        NotificationMessageType anotificationmessagetype[];
        int i;
        int j;
        NotificationMessageType notificationmessagetype;
        try
        {
            anotificationmessagetype = NotificationMessageType.values();
            i = anotificationmessagetype.length;
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            genericlogger.error(TAG, notificationserviceexception.getMessage());
            throw notificationserviceexception;
        }
        j = 0;
        if (j >= i)
            break; /* Loop/switch isn't completed */
        notificationmessagetype = anotificationmessagetype[j];
        transportSenderChannels.put(notificationmessagetype, new TransportChannelObject(notificationmessagetype, busattachment, nativePlatform));
        j++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_88;
_L1:
        notifProducerBusObj = new NotificationProducerImpl(this, nativePlatform);
        notifProducerBusObj.init();
        sessionListener = new SenderSessionListener(nativePlatform);
        sessionListener.init();
        aboutservice.announce();
        return;
    }

    public void stopSenderTransport()
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        org.alljoyn.bus.BusAttachment busattachment = Transport.getInstance().getBusAttachment();
        genericlogger.debug(TAG, "Stopping SenderTransport");
        if (transportSenderChannels != null)
        {
            NotificationMessageType notificationmessagetype;
            for (Iterator iterator = transportSenderChannels.keySet().iterator(); iterator.hasNext(); ((TransportChannelObject)transportSenderChannels.get(notificationmessagetype)).clean(busattachment))
                notificationmessagetype = (NotificationMessageType)iterator.next();

            transportSenderChannels = null;
        }
        if (sessionListener != null)
        {
            sessionListener.clean();
            sessionListener = null;
        }
        if (notifProducerBusObj != null)
        {
            notifProducerBusObj.clean();
            notifProducerBusObj = null;
        }
        AboutService aboutservice = AboutServiceImpl.getInstance();
        if (aboutservice.isServerRunning())
            aboutservice.announce();
    }

}
