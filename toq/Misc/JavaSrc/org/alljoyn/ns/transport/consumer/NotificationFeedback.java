// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.consumer;

import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.alljoyn.bus.*;
import org.alljoyn.ns.Notification;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.transport.DismissEmitter;
import org.alljoyn.ns.transport.Transport;
import org.alljoyn.ns.transport.interfaces.NotificationProducer;
import org.alljoyn.ns.transport.producer.SenderSessionListener;

public class NotificationFeedback extends OnJoinSessionListener
{
    private class NFSessionListener extends SessionListener
    {

        final NotificationFeedback this$0;

        public void sessionLost(int i, int j)
        {
            if (logger != null)
                logger.debug(NotificationFeedback.TAG, (new StringBuilder()).append("Received session lost for sid: '").append(i).append("', reason: '").append(j).append("'").toString());
        }

        private NFSessionListener()
        {
            this$0 = NotificationFeedback.this;
            super();
        }

    }


    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/consumer/NotificationFeedback.getSimpleName()).toString();
    private static ExecutorService taskDispatcher = Executors.newSingleThreadExecutor();
    private final UUID appId;
    private GenericLogger logger;
    private final int notifId;
    private final String origSender;
    private Transport transport;
    private final int version;

    public NotificationFeedback(Notification notification)
        throws NotificationServiceException
    {
        transport = Transport.getInstance();
        logger = transport.getLogger();
        version = notification.getVersion();
        origSender = notification.getOriginalSenderBusName();
        notifId = notification.getMessageId();
        appId = notification.getAppId();
    }

    private Status establishSession(BusAttachment busattachment, org.alljoyn.bus.Mutable.IntegerValue integervalue)
    {
        return busattachment.joinSession(origSender, (short)1010, integervalue, SenderSessionListener.getSessionOpts(), new NFSessionListener());
    }

    private NotificationProducer getProxyObject(BusAttachment busattachment, int i)
    {
        logger.debug(TAG, (new StringBuilder()).append("Creating ProxyBusObject with sender: '").append(origSender).append("', SID: '").append(i).append("'").toString());
        return (NotificationProducer)busattachment.getProxyBusObject(origSender, "/notificationProducer", i, new Class[] {
            org/alljoyn/ns/transport/interfaces/NotificationProducer
        }).getInterface(org/alljoyn/ns/transport/interfaces/NotificationProducer);
    }

    private void invokeDismiss()
    {
        BusAttachment busattachment = transport.getBusAttachment();
        if (busattachment != null) goto _L2; else goto _L1
_L1:
        logger.error(TAG, (new StringBuilder()).append("Failed to call Dismiss for notifId: '").append(notifId).append("', BusAttachment is not defined, returning...").toString());
_L3:
        return;
_L2:
        org.alljoyn.bus.Mutable.IntegerValue integervalue;
        Status status;
        NotificationProducer notificationproducer;
        integervalue = new org.alljoyn.bus.Mutable.IntegerValue();
        status = establishSession(busattachment, integervalue);
        if (status != Status.OK && status != Status.ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED)
        {
            logger.error(TAG, (new StringBuilder()).append("Failed to call Dismiss method for notifId: '").append(notifId).append("', session is not established, Error: '").append(status).append("', Sending a Dismiss signal").toString());
            DismissEmitter.send(notifId, appId);
            return;
        }
        logger.debug(TAG, (new StringBuilder()).append("Handling Dismiss method call for notifId: '").append(notifId).append("', session: '").append(integervalue.value).append("', SessionJoin status: '").append(status).append("'").toString());
        notificationproducer = getProxyObject(busattachment, integervalue.value);
        notificationproducer.dismiss(notifId);
        if (status != Status.ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED)
        {
            leaveSession(busattachment, integervalue.value);
            return;
        }
          goto _L3
        ErrorReplyBusException errorreplybusexception;
        errorreplybusexception;
        logger.error(TAG, (new StringBuilder()).append("Failed to call Dismiss for notifId: '").append(notifId).append("', ErrorName: '").append(errorreplybusexception.getErrorName()).append("', ErrorMessage: '").append(errorreplybusexception.getErrorMessage()).append("', sending Dismiss signal").toString());
        DismissEmitter.send(notifId, appId);
        if (status != Status.ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED)
        {
            leaveSession(busattachment, integervalue.value);
            return;
        }
          goto _L3
        BusException busexception;
        busexception;
        logger.error(TAG, (new StringBuilder()).append("Failed to call Dismiss method for notifId: '").append(notifId).append("', Error: '").append(busexception.getMessage()).append("', Sending Dismiss signal").toString());
        DismissEmitter.send(notifId, appId);
        if (status == Status.ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED) goto _L3; else goto _L4
_L4:
        leaveSession(busattachment, integervalue.value);
        return;
        Exception exception;
        exception;
        if (status != Status.ALLJOYN_JOINSESSION_REPLY_ALREADY_JOINED)
            leaveSession(busattachment, integervalue.value);
        throw exception;
    }

    private void leaveSession(BusAttachment busattachment, int i)
    {
        Status status = busattachment.leaveSession(i);
        if (status == Status.OK)
        {
            logger.debug(TAG, (new StringBuilder()).append("The session: '").append(i).append("' was disconnected successfully").toString());
            return;
        } else
        {
            logger.error(TAG, (new StringBuilder()).append("Failed to disconnect the session: '").append(i).append("', Error: '").append(status).append("'").toString());
            return;
        }
    }

    public void dismiss()
    {
        taskDispatcher.execute(new Runnable() {

            final NotificationFeedback this$0;

            public void run()
            {
                if (version >= 2 && origSender != null)
                {
                    invokeDismiss();
                    return;
                } else
                {
                    logger.debug(NotificationFeedback.TAG, (new StringBuilder()).append("The notification sender version: '").append(version).append("', doesn't support the NotificationProducer interface, notifId: '").append(notifId).append("', can't call the Dismiss method, sending the Dismiss signal").toString());
                    DismissEmitter.send(notifId, appId);
                    return;
                }
            }

            
            {
                this$0 = NotificationFeedback.this;
                super();
            }
        }
);
    }








}
