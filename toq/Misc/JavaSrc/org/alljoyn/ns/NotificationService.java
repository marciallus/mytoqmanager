// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;

import org.alljoyn.bus.BusAttachment;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.commons.NativePlatformFactory;
import org.alljoyn.ns.commons.NativePlatformFactoryException;
import org.alljoyn.ns.transport.Transport;
import org.alljoyn.services.common.PropertyStore;

// Referenced classes of package org.alljoyn.ns:
//            NotificationServiceException, NotificationSender, NotificationReceiver

public class NotificationService
{

    public static final int PROTOCOL_VERSION = 2;
    private static final NotificationService SELF = new NotificationService();
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/NotificationService.getSimpleName()).toString();
    private NativePlatform nativePlatform;
    private Transport transport;

    private NotificationService()
    {
    }

    public static NotificationService getInstance()
    {
        return SELF;
    }

    private void init()
        throws NotificationServiceException
    {
        if (nativePlatform != null && transport != null)
            return;
        try
        {
            nativePlatform = NativePlatformFactory.getPlatformObject();
            nativePlatform.getNativeLogger().info(TAG, "Notification Service created");
            transport = Transport.getInstance();
            return;
        }
        catch (NativePlatformFactoryException nativeplatformfactoryexception)
        {
            throw new NotificationServiceException((new StringBuilder()).append("Failed to create Notification Service: ").append(nativeplatformfactoryexception.getMessage()).toString());
        }
        catch (Exception exception)
        {
            throw new NotificationServiceException("Failed to create Notification Service: General Error");
        }
    }

    public void initReceive(BusAttachment busattachment, NotificationReceiver notificationreceiver)
        throws NotificationServiceException
    {
        init();
        nativePlatform.getNativeLogger().debug(TAG, "Init Receive called, calling Transport");
        if (notificationreceiver == null)
        {
            throw new NotificationServiceException("NotificationReceiver interface should be implemented in order to receive notifications, received null pointer");
        } else
        {
            transport.startReceiverTransport(busattachment, notificationreceiver);
            return;
        }
    }

    public NotificationSender initSend(BusAttachment busattachment, PropertyStore propertystore)
        throws NotificationServiceException
    {
        init();
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        if (propertystore == null)
        {
            throw new NotificationServiceException("PropertyStore is NULL");
        } else
        {
            genericlogger.debug(TAG, "Init Send invoked, calling Transport");
            transport.startSenderTransport(busattachment, propertystore);
            genericlogger.debug(TAG, "Creating and returning NotificationSender");
            return new NotificationSender();
        }
    }

    public void setLogger(GenericLogger genericlogger)
        throws NotificationServiceException
    {
        init();
        if (genericlogger == null)
        {
            throw new NullPointerException("Provided logger is NULL");
        } else
        {
            nativePlatform.setNativeLogger(genericlogger);
            return;
        }
    }

    public void shutdown()
        throws NotificationServiceException
    {
        init();
        transport.shutdown();
    }

    public void shutdownReceiver()
        throws NotificationServiceException
    {
        init();
        transport.shutdownReceiver();
    }

    public void shutdownSender()
        throws NotificationServiceException
    {
        init();
        transport.shutdownSender();
    }

}
