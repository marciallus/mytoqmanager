// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.consumer;

import java.lang.reflect.Method;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicBoolean;
import org.alljoyn.about.AboutService;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.bus.*;
import org.alljoyn.bus.annotation.BusSignal;
import org.alljoyn.ns.*;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.transport.TaskManager;
import org.alljoyn.ns.transport.Transport;
import org.alljoyn.ns.transport.interfaces.NotificationDismisser;
import org.alljoyn.ns.transport.interfaces.NotificationTransport;
import org.alljoyn.services.common.AnnouncementHandler;
import org.alljoyn.services.common.BusObjectDescription;

// Referenced classes of package org.alljoyn.ns.transport.consumer:
//            NotificationTransportConsumer, DismissConsumer

public class ReceiverTransport
    implements AnnouncementHandler
{

    private static final String DISMISSER_MATCH_RULE = "type='signal',interface='org.alljoyn.Notification.Dismisser'";
    private static final String DISMISS_SIGNAL_NAME = "dismiss";
    private static final String NOTIF_SIGNAL_NAME = "notify";
    private static final String NOTIF_TRANS_MATCH_RULE = "type='signal',interface='org.alljoyn.Notification'";
    private static final String SUPER_AGENT_MATCH_RULE = "type='signal',interface='org.alljoyn.Notification.Superagent'";
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/consumer/ReceiverTransport.getSimpleName()).toString();
    private DismissConsumer dismissSignalHandler;
    private NotificationTransport fromProducerChannel;
    private NotificationTransport fromSuperAgentChannel;
    private boolean isNeedSearchSA;
    private AtomicBoolean isSuperAgentFound;
    private NativePlatform nativePlatform;
    private NotificationReceiver notificationReceiver;
    private boolean stopReceiving;
    private String superAgentSenderName;
    private String superAgentSpecificRule;

    public ReceiverTransport(NativePlatform nativeplatform, NotificationReceiver notificationreceiver)
    {
        isNeedSearchSA = true;
        stopReceiving = false;
        notificationReceiver = notificationreceiver;
        nativePlatform = nativeplatform;
    }

    private void addMatchRule(String s)
        throws NotificationServiceException
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, (new StringBuilder()).append("Call AddMatch rule: '").append(s).append("'").toString());
        Status status = Transport.getInstance().getBusAttachment().addMatch(s);
        if (status != Status.OK)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to call AddMatch rule: '").append(s).append("', Error: '").append(status).append("'").toString());
            throw new NotificationServiceException((new StringBuilder()).append("Failed to call AddMatch rule: '").append(s).append("', Error: '").append(status).append("'").toString());
        } else
        {
            return;
        }
    }

    private Method getDismissSignalMethod()
    {
        Method method;
        try
        {
            Class aclass[] = new Class[2];
            aclass[0] = Integer.TYPE;
            aclass[1] = [B;
            method = org/alljoyn/ns/transport/interfaces/NotificationDismisser.getMethod("dismiss", aclass);
        }
        catch (Exception exception)
        {
            nativePlatform.getNativeLogger().error(TAG, (new StringBuilder()).append("Failed to get a reflection of the signal method: 'dismiss', Error: ").append(exception.getMessage()).toString());
            return null;
        }
        return method;
    }

    private Method getNotificationConsumerSignalMethod()
    {
        Method method;
        try
        {
            Class aclass[] = new Class[10];
            aclass[0] = Integer.TYPE;
            aclass[1] = Integer.TYPE;
            aclass[2] = Short.TYPE;
            aclass[3] = java/lang/String;
            aclass[4] = java/lang/String;
            aclass[5] = [B;
            aclass[6] = java/lang/String;
            aclass[7] = java/util/Map;
            aclass[8] = java/util/Map;
            aclass[9] = [Lorg/alljoyn/ns/transport/TransportNotificationText;;
            method = org/alljoyn/ns/transport/interfaces/NotificationTransport.getMethod("notify", aclass);
        }
        catch (Exception exception)
        {
            nativePlatform.getNativeLogger().error(TAG, (new StringBuilder()).append("Failed to get a reflection of the signal method: 'notify', Error: ").append(exception.getMessage()).toString());
            return null;
        }
        return method;
    }

    private boolean registerDismissSignalHandler(DismissConsumer dismissconsumer)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, "Registering signal handler for interface: 'org.alljoyn.Notification.Dismisser' servicePath: '/dismissReceiver'");
        Method method = getDismissSignalMethod();
        if (method == null)
            return false;
        String s = ((BusSignal)method.getAnnotation(org/alljoyn/bus/annotation/BusSignal)).name();
        if (!Transport.getInstance().registerObjectAndSetSignalHandler(genericlogger, "org.alljoyn.Notification.Dismisser", s, method, dismissconsumer, "/dismissReceiver"))
        {
            stopReceiverTransport();
            return false;
        } else
        {
            return true;
        }
    }

    private boolean registerNotificationSignalHandlerChannel(NotificationTransport notificationtransport, String s, String s1)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, (new StringBuilder()).append("Registering signal handler for interface: '").append(s1).append("' servicePath: ").append(s).toString());
        Method method = getNotificationConsumerSignalMethod();
        if (method == null)
            return false;
        if (!Transport.getInstance().registerObjectAndSetSignalHandler(genericlogger, s1, "notify", method, notificationtransport, s))
        {
            stopReceiverTransport();
            return false;
        } else
        {
            return true;
        }
    }

    private void registerReceivingProducerNotifications()
        throws NotificationServiceException
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, "Registering to receive signals from producers");
        fromProducerChannel = new NotificationTransportConsumer("/producerReceiver");
        if (!registerNotificationSignalHandlerChannel(fromProducerChannel, "/producerReceiver", "org.alljoyn.Notification"))
        {
            genericlogger.error(TAG, "Failed to register a Producer signal handler");
            throw new NotificationServiceException("Failed to register a Producer signal handler");
        } else
        {
            addMatchRule("type='signal',interface='org.alljoyn.Notification'");
            return;
        }
    }

    private Status removeMatchRule(String s)
    {
        Status status = Transport.getInstance().getBusAttachment().removeMatch(s);
        nativePlatform.getNativeLogger().debug(TAG, (new StringBuilder()).append("RemoveMatch rule: '").append(s).append("' result: '").append(status).append("'").toString());
        return status;
    }

    public boolean getIsSuperAgentFound()
    {
        return isSuperAgentFound.get();
    }

    public void onAnnouncement(String s, short word0, BusObjectDescription abusobjectdescription[], Map map)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        BusAttachment busattachment = Transport.getInstance().getBusAttachment();
        busattachment.enableConcurrentCallbacks();
        if (!isSuperAgentFound.get())
        {
            genericlogger.debug(TAG, "Received announcement signal");
            int i = abusobjectdescription.length;
            for (int j = 0; j < i; j++)
            {
                String as[] = abusobjectdescription[j].interfaces;
                int k = as.length;
                for (int l = 0; l < k; l++)
                    if ("org.alljoyn.Notification.Superagent".equals(as[l]))
                    {
                        genericlogger.debug(TAG, "Received announcement signal from SA, call onReceivedFirstSuperAgentNotification");
                        onReceivedFirstSuperAgentNotification(busattachment.getMessageContext().sender);
                        return;
                    }

            }

        }
    }

    public void onDeviceLost(String s)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, (new StringBuilder()).append("lostAdvertisedName: '").append(s).append("'").toString());
        if (!s.equals(superAgentSenderName))
            return;
        genericlogger.debug(TAG, (new StringBuilder()).append("Received lostAdvertisedName for SuperAgent: '").append(superAgentSenderName).append("', registering to listen for Producer and SuperAgent notifications").toString());
        try
        {
            registerReceivingProducerNotifications();
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to register receiving Notifications back directly from Producers, Error: '").append(notificationserviceexception.getMessage()).append("'").toString());
            return;
        }
        try
        {
            addMatchRule("type='signal',interface='org.alljoyn.Notification.Superagent'");
        }
        catch (NotificationServiceException notificationserviceexception1)
        {
            genericlogger.warn(TAG, (new StringBuilder()).append("Failed to add SuperAgent generic match rule: 'type='signal',interface='org.alljoyn.Notification.Superagent'', possibly we will not receive Notifications from a SuperAgent, Error: '").append(notificationserviceexception1.getMessage()).append("'").toString());
        }
        genericlogger.debug(TAG, (new StringBuilder()).append("Removing the specific SuperAgent Match rule: '").append(superAgentSpecificRule).append("'").toString());
        removeMatchRule(superAgentSpecificRule);
        superAgentSenderName = "";
        superAgentSpecificRule = "";
        isSuperAgentFound.set(false);
    }

    public void onReceivedFirstSuperAgentNotification(String s)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        BusAttachment busattachment = Transport.getInstance().getBusAttachment();
        if (isSuperAgentFound.get())
        {
            genericlogger.info(TAG, "The SuperAgent has already been found, returning");
            return;
        }
        superAgentSpecificRule = (new StringBuilder()).append("type='signal',interface='org.alljoyn.Notification.Superagent',sender='").append(s).append("'").toString();
        genericlogger.debug(TAG, (new StringBuilder()).append("Add the Match rule to receive Notifications from the specific SuperAgent, Rule: '").append(superAgentSpecificRule).append("'").toString());
        try
        {
            addMatchRule(superAgentSpecificRule);
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to add the new Match rule: '").append(superAgentSpecificRule).append("', not listening to this SuperAgent, Error: '").append(notificationserviceexception.getMessage()).append("'").toString());
            return;
        }
        genericlogger.debug(TAG, "Remove the generic SuperAgent Match rule: 'type='signal',interface='org.alljoyn.Notification.Superagent''");
        if (removeMatchRule("type='signal',interface='org.alljoyn.Notification.Superagent'") != Status.OK)
            genericlogger.warn(TAG, "Failed to remove the generic SuperAgent Match rule: 'type='signal',interface='org.alljoyn.Notification.Superagent'', we may continue receiving Notifications from another SuperAgents");
        genericlogger.debug(TAG, "Remove the Producer Match rule: 'type='signal',interface='org.alljoyn.Notification''");
        if (removeMatchRule("type='signal',interface='org.alljoyn.Notification'") != Status.OK)
            genericlogger.warn(TAG, "Failed to remove Notification Producer Match rule: 'type='signal',interface='org.alljoyn.Notification'', we may continue receiving Notifications from Notification Producers");
        genericlogger.debug(TAG, "Set SuperAgent found as TRUE");
        isSuperAgentFound.set(true);
        superAgentSenderName = s;
        genericlogger.debug(TAG, "Unregister fromProducer signal handler");
        busattachment.unregisterSignalHandler(fromProducerChannel, getNotificationConsumerSignalMethod());
        genericlogger.debug(TAG, "Unregister fromProducer bus object");
        busattachment.unregisterBusObject(fromProducerChannel);
        fromProducerChannel = null;
    }

    public void onReceivedNotification(final Notification notification)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        if (stopReceiving)
        {
            genericlogger.debug(TAG, "In stopSending mode NOT delivering notifications!!!");
            return;
        }
        try
        {
            TaskManager.getInstance().execute(new Runnable() {

                final ReceiverTransport this$0;
                final Notification val$notification;

                public void run()
                {
                    notificationReceiver.receive(notification);
                }

            
            {
                this$0 = ReceiverTransport.this;
                notification = notification1;
                super();
            }
            }
);
            return;
        }
        catch (RejectedExecutionException rejectedexecutionexception)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to return a received notification, id: '").append(notification.getMessageId()).append("', Error: '").append(rejectedexecutionexception.getMessage()).append("'").toString());
        }
    }

    public void onReceivedNotificationDismiss(final int msgId, final UUID appId)
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, (new StringBuilder()).append("Received the Dismiss signal notifId: '").append(msgId).append("', from the appId: '").append(appId).append("', delivering to the NotificationReceiver").toString());
        try
        {
            TaskManager.getInstance().execute(new Runnable() {

                final ReceiverTransport this$0;
                final UUID val$appId;
                final int val$msgId;

                public void run()
                {
                    notificationReceiver.dismiss(msgId, appId);
                }

            
            {
                this$0 = ReceiverTransport.this;
                msgId = i;
                appId = uuid;
                super();
            }
            }
);
            return;
        }
        catch (RejectedExecutionException rejectedexecutionexception)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to deliver the Dismiss event of the notifId: '").append(msgId).append("', from the appId:'").append(appId).append("', Error: '").append(rejectedexecutionexception.getMessage()).append("'").toString());
        }
    }

    public void startReceiverTransport()
        throws NotificationServiceException
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        genericlogger.debug(TAG, "Starting receiver transport");
        isSuperAgentFound = new AtomicBoolean(false);
        if (isNeedSearchSA)
        {
            genericlogger.debug(TAG, "Need to search for SuperAgent, register SuperAgent signal receiver, announcement receiver and then Producer signal receiver");
            superAgentSenderName = "";
            fromSuperAgentChannel = new NotificationTransportConsumer("/superagentReceiver");
            if (!registerNotificationSignalHandlerChannel(fromSuperAgentChannel, "/superagentReceiver", "org.alljoyn.Notification.Superagent"))
            {
                genericlogger.error(TAG, "Failed to register a SuperAgent signal handler");
                throw new NotificationServiceException("Failed to register a SuperAgent signal handler");
            }
            addMatchRule("type='signal',interface='org.alljoyn.Notification.Superagent'");
            AboutService aboutservice = AboutServiceImpl.getInstance();
            if (!aboutservice.isClientRunning())
            {
                genericlogger.error(TAG, "The AboutClient wasn't started, unable to register to receive Announcement signals");
                stopReceiverTransport();
                throw new NotificationServiceException("The AboutClient wasn't started");
            }
            genericlogger.debug(TAG, "Registering AnnouncementReceiver");
            aboutservice.addAnnouncementHandler(this);
        }
        dismissSignalHandler = new DismissConsumer();
        if (!registerDismissSignalHandler(dismissSignalHandler))
        {
            genericlogger.error(TAG, "Failed to register Dismiss signal handler");
            throw new NotificationServiceException("Failed to register Dismiss signal handler");
        } else
        {
            addMatchRule("type='signal',interface='org.alljoyn.Notification.Dismisser'");
            registerReceivingProducerNotifications();
            return;
        }
    }

    public void stopReceiverTransport()
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        BusAttachment busattachment = Transport.getInstance().getBusAttachment();
        genericlogger.debug(TAG, "Stopping ReceiverTransport");
        Method method = getNotificationConsumerSignalMethod();
        if (fromSuperAgentChannel != null)
        {
            genericlogger.debug(TAG, "Searched for a SuperAgent, cleaning up...");
            genericlogger.debug(TAG, "Unregister SuperAgent signal handler");
            if (method != null)
                busattachment.unregisterSignalHandler(fromSuperAgentChannel, method);
            busattachment.unregisterBusObject(fromSuperAgentChannel);
            if (isSuperAgentFound.get())
            {
                removeMatchRule(superAgentSpecificRule);
                superAgentSpecificRule = "";
            } else
            {
                removeMatchRule("type='signal',interface='org.alljoyn.Notification.Superagent'");
            }
            fromSuperAgentChannel = null;
            isSuperAgentFound = null;
        }
        genericlogger.debug(TAG, "Remove the AnnouncementReceiver");
        AboutServiceImpl.getInstance().removeAnnouncementHandler(this);
        if (fromProducerChannel != null)
        {
            genericlogger.debug(TAG, "Unregister Producer signal handler");
            if (method != null)
                busattachment.unregisterSignalHandler(fromProducerChannel, method);
            busattachment.unregisterBusObject(fromProducerChannel);
            fromProducerChannel = null;
            removeMatchRule("type='signal',interface='org.alljoyn.Notification'");
        }
        if (dismissSignalHandler != null)
        {
            genericlogger.debug(TAG, "Unregister Dismiss signal handler");
            Method method1 = getDismissSignalMethod();
            if (method1 == null)
                busattachment.unregisterSignalHandler(dismissSignalHandler, method1);
            busattachment.unregisterBusObject(dismissSignalHandler);
            dismissSignalHandler = null;
            removeMatchRule("type='signal',interface='org.alljoyn.Notification.Dismisser'");
        }
    }


}
