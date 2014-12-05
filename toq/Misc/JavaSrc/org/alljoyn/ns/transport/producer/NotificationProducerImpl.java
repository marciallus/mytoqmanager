// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.producer;

import org.alljoyn.about.AboutService;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.bus.*;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.transport.TaskManager;
import org.alljoyn.ns.transport.Transport;
import org.alljoyn.ns.transport.interfaces.NotificationProducer;

// Referenced classes of package org.alljoyn.ns.transport.producer:
//            SenderTransport

class NotificationProducerImpl
    implements NotificationProducer
{

    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/producer/NotificationProducerImpl.getSimpleName()).toString();
    private NativePlatform nativePlatform;
    private SenderTransport senderTransport;

    public NotificationProducerImpl(SenderTransport sendertransport, NativePlatform nativeplatform)
    {
        senderTransport = sendertransport;
        nativePlatform = nativeplatform;
    }

    public void clean()
    {
        nativePlatform.getNativeLogger().debug(TAG, "Cleaning the NotificationProducerImpl");
        Transport.getInstance().getBusAttachment().unregisterBusObject(this);
        AboutServiceImpl.getInstance().removeObjectDescription("/notificationProducer", new String[] {
            "org.alljoyn.Notification.Producer"
        });
        senderTransport = null;
        nativePlatform = null;
    }

    public void dismiss(final int msgId)
        throws BusException
    {
        nativePlatform.getNativeLogger().debug(TAG, (new StringBuilder()).append("Received Dismiss for notifId: '").append(msgId).append("', delegating to be executed").toString());
        Transport.getInstance().getBusAttachment().enableConcurrentCallbacks();
        TaskManager.getInstance().enqueue(new Runnable() {

            final NotificationProducerImpl this$0;
            final int val$msgId;

            public void run()
            {
                senderTransport.dismiss(msgId);
            }

            
            {
                this$0 = NotificationProducerImpl.this;
                msgId = i;
                super();
            }
        }
);
    }

    public short getVersion()
        throws BusException
    {
        return 1;
    }

    public void init()
        throws NotificationServiceException
    {
        Status status = Transport.getInstance().getBusAttachment().registerBusObject(this, "/notificationProducer");
        nativePlatform.getNativeLogger().debug(TAG, (new StringBuilder()).append("NotificationProducer BusObject: '/notificationProducer' was registered on the bus, Status: '").append(status).append("'").toString());
        if (status != Status.OK)
        {
            throw new NotificationServiceException((new StringBuilder()).append("Failed to register BusObject: '/notificationProducer', Error: '").append(status).append("'").toString());
        } else
        {
            AboutServiceImpl.getInstance().addObjectDescription("/notificationProducer", new String[] {
                "org.alljoyn.Notification.Producer"
            });
            return;
        }
    }


}
