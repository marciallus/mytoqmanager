// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.producer;

import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import org.alljoyn.about.AboutService;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.bus.*;
import org.alljoyn.ns.NotificationMessageType;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.transport.TransportNotificationText;
import org.alljoyn.ns.transport.interfaces.NotificationTransport;

// Referenced classes of package org.alljoyn.ns.transport.producer:
//            NotificationTransportProducer

class TransportChannelObject
{

    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/producer/TransportChannelObject.getSimpleName()).toString();
    private final ReentrantLock LOCK = new ReentrantLock(true);
    private SignalEmitter emitter;
    private volatile Integer lastMsgSerialId;
    private volatile Integer lastNotifId;
    private NotificationMessageType messageType;
    private NativePlatform nativePlatform;
    private String servicePath;
    private NotificationTransport transportObj;

    public TransportChannelObject(NotificationMessageType notificationmessagetype, BusAttachment busattachment, NativePlatform nativeplatform)
        throws NotificationServiceException
    {
        messageType = notificationmessagetype;
        nativePlatform = nativeplatform;
        GenericLogger genericlogger = nativeplatform.getNativeLogger();
        transportObj = new NotificationTransportProducer();
        lastMsgSerialId = null;
        servicePath = (String)NotificationTransportProducer.getServicePath().get(notificationmessagetype);
        Status status = busattachment.registerBusObject(transportObj, servicePath);
        if (status != Status.OK)
        {
            genericlogger.debug(TAG, (new StringBuilder()).append("Failed to registerBusObject status: '").append(status).append("'").toString());
            throw new NotificationServiceException("Failed to prepare sending channel");
        } else
        {
            AboutServiceImpl.getInstance().addObjectDescription(servicePath, new String[] {
                "org.alljoyn.Notification"
            });
            genericlogger.debug(TAG, (new StringBuilder()).append("Initializing signal emitter for sessionless signal, MessageType: '").append(notificationmessagetype).append("'").toString());
            emitter = new SignalEmitter(transportObj, org.alljoyn.bus.SignalEmitter.GlobalBroadcast.Off);
            emitter.setSessionlessFlag(true);
            return;
        }
    }

    public void acquireLock()
    {
        LOCK.lock();
    }

    public void clean(BusAttachment busattachment)
    {
        busattachment.unregisterBusObject(transportObj);
        AboutServiceImpl.getInstance().removeObjectDescription(servicePath, new String[] {
            "org.alljoyn.Notification"
        });
        transportObj = null;
        emitter = null;
        lastMsgSerialId = null;
        lastNotifId = null;
    }

    public void deleteNotification()
    {
        GenericLogger genericlogger;
        genericlogger = nativePlatform.getNativeLogger();
        LOCK.lock();
        if (lastMsgSerialId != null)
            break MISSING_BLOCK_LABEL_68;
        genericlogger.warn(TAG, (new StringBuilder()).append("Unable to delete last message for  messageType: '").append(messageType).append("'. No message was previously sent from this object, lastMsgSerialId is NULL").toString());
        LOCK.unlock();
        return;
        Status status;
        genericlogger.debug(TAG, (new StringBuilder()).append("Deleting last notification message for messageType: '").append(messageType).append("', MsgSerialId: '").append(lastMsgSerialId).append("'").toString());
        status = emitter.cancelSessionlessSignal(lastMsgSerialId.intValue());
        if (status != Status.OK) goto _L2; else goto _L1
_L1:
        genericlogger.debug(TAG, (new StringBuilder()).append("The notification message deleted successfully, messageType: '").append(messageType).append("', MsgSerialId: '").append(lastMsgSerialId).append("', lastNotifId: '").append(lastNotifId).append("'").toString());
        lastMsgSerialId = null;
        lastNotifId = null;
_L4:
        LOCK.unlock();
        return;
_L2:
        genericlogger.warn(TAG, (new StringBuilder()).append("Failed to delete last message for  messageType: '").append(messageType).append("'. Status: '").append(status).append("'").toString());
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        LOCK.unlock();
        throw exception;
    }

    public Integer getNotificationId()
    {
        return lastNotifId;
    }

    public void releaseLock()
    {
        LOCK.unlock();
    }

    public void sendNotification(int i, int j, short word0, String s, String s1, byte abyte0[], String s2, 
            Map map, Map map1, TransportNotificationText atransportnotificationtext[], int k)
        throws NotificationServiceException
    {
        GenericLogger genericlogger;
        NotificationTransport notificationtransport;
        genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, (new StringBuilder()).append("Sending notification message for messageType: '").append(word0).append("' message id: '").append(j).append("', ttl: '").append(k).append("'").toString());
        emitter.setTimeToLive(k);
        notificationtransport = (NotificationTransport)emitter.getInterface(org/alljoyn/ns/transport/interfaces/NotificationTransport);
        LOCK.lock();
        notificationtransport.notify(i, j, word0, s, s1, abyte0, s2, map, map1, atransportnotificationtext);
        lastMsgSerialId = Integer.valueOf(emitter.getMessageContext().serial);
        lastNotifId = Integer.valueOf(j);
        genericlogger.debug(TAG, (new StringBuilder()).append("The message was sent successfully. messageType: '").append(word0).append("' message id: '").append(j).append("' SerialId: '").append(lastMsgSerialId).append("'").toString());
        LOCK.unlock();
        return;
        Exception exception1;
        exception1;
        genericlogger.error(TAG, "Failed to call notify to send notification");
        throw new NotificationServiceException("Failed to send notification", exception1);
        Exception exception;
        exception;
        LOCK.unlock();
        throw exception;
    }

}
