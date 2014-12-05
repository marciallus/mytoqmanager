// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport;

import java.io.PrintStream;
import java.lang.reflect.Method;
import java.util.*;
import org.alljoyn.bus.*;
import org.alljoyn.ns.*;
import org.alljoyn.ns.commons.*;
import org.alljoyn.ns.transport.consumer.ReceiverTransport;
import org.alljoyn.ns.transport.producer.SenderTransport;
import org.alljoyn.services.common.PropertyStore;
import org.alljoyn.services.common.PropertyStoreException;

// Referenced classes of package org.alljoyn.ns.transport:
//            TaskManager, TransportNotificationText

public class Transport
{

    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/Transport.getSimpleName()).toString();
    private static final Transport transport = new Transport();
    private BusAttachment busAttachment;
    private boolean isReceiverTransportCalled;
    private boolean isSenderTransportCalled;
    private NativePlatform nativePlatform;
    private PropertyStore propertyStore;
    private ReceiverTransport receiverTransport;
    private SenderTransport senderTransport;

    private Transport()
    {
        isSenderTransportCalled = false;
        isReceiverTransportCalled = false;
    }

    public static Transport getInstance()
    {
        return transport;
    }

    private void saveBus(BusAttachment busattachment)
        throws NotificationServiceException
    {
        GenericLogger genericlogger = nativePlatform.getNativeLogger();
        if (busattachment == null)
        {
            genericlogger.error(TAG, "Received a NULL BusAttachment");
            throw new NotificationServiceException("Received a not initialized BusAttachment");
        }
        if (busAttachment == null)
        {
            if (!busattachment.isConnected())
            {
                genericlogger.error(TAG, "Received a BusAttachment that is not connected to the AJ Bus");
                throw new NotificationServiceException("Received a BusAttachment that is not connected to the AJ bus");
            }
            genericlogger.info(TAG, "BusAttachment is stored successfully");
            busAttachment = busattachment;
        } else
        if (!busAttachment.getUniqueName().equals(busattachment.getUniqueName()))
        {
            genericlogger.error(TAG, (new StringBuilder()).append("NotificationService received a new BusAttachment: '").append(busattachment.getUniqueName()).append("', while previously initialized with a BusAttachment: '").append(busAttachment.getUniqueName()).append("'").toString());
            throw new NotificationServiceException("BusAttachment already exists");
        }
    }

    private void setNativePlatform()
        throws NotificationServiceException
    {
        if (nativePlatform != null)
            break MISSING_BLOCK_LABEL_14;
        nativePlatform = NativePlatformFactory.getPlatformObject();
        return;
        NativePlatformFactoryException nativeplatformfactoryexception;
        nativeplatformfactoryexception;
        throw new NotificationServiceException(nativeplatformfactoryexception.getMessage());
    }

    private void stopReceiverTransport(GenericLogger genericlogger)
    {
        if (receiverTransport != null)
        {
            receiverTransport.stopReceiverTransport();
            receiverTransport = null;
        }
        if (!isSenderTransportCalled)
        {
            genericlogger.debug(TAG, "Sender is not running, clearing common resources");
            TaskManager taskmanager = TaskManager.getInstance();
            if (taskmanager.isRunning())
                taskmanager.shutdown();
            busAttachment = null;
        }
        isReceiverTransportCalled = false;
    }

    private void stopSenderTransport(GenericLogger genericlogger)
    {
        if (senderTransport != null)
        {
            senderTransport.stopSenderTransport();
            senderTransport = null;
        }
        if (!isReceiverTransportCalled)
        {
            genericlogger.debug(TAG, "Receiver is not running, clearing common resources");
            TaskManager taskmanager = TaskManager.getInstance();
            if (taskmanager.isRunning())
                taskmanager.shutdown();
            busAttachment = null;
        }
        propertyStore = null;
        isSenderTransportCalled = false;
    }

    public void deleteLastMessage(NotificationMessageType notificationmessagetype)
        throws NotificationServiceException
    {
        GenericLogger genericlogger;
        try
        {
            genericlogger = getLogger();
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            throw notificationserviceexception;
        }
        if (!isSenderTransportCalled)
        {
            genericlogger.error(TAG, "Notification service is not running, can't delete message");
            throw new NotificationServiceException("Notification service is not running, can't delete message");
        } else
        {
            senderTransport.deleteLastMessage(notificationmessagetype);
            return;
        }
    }

    public UUID getAppId(Map map)
        throws NotificationServiceException
    {
        if (map == null)
            throw new NotificationServiceException("props can't be NULL");
        Object obj = map.get("AppId");
        if (!(obj instanceof UUID))
            throw new NotificationServiceException("The AppId is NULL or not an instance of UUID");
        else
            return (UUID)obj;
    }

    public BusAttachment getBusAttachment()
    {
        return busAttachment;
    }

    public boolean getIsSuperAgentFound()
    {
        this;
        JVM INSTR monitorenter ;
        ReceiverTransport receivertransport = receiverTransport;
        if (receivertransport != null) goto _L2; else goto _L1
_L1:
        boolean flag1 = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return flag1;
_L2:
        boolean flag = receiverTransport.getIsSuperAgentFound();
        flag1 = flag;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public GenericLogger getLogger()
        throws NotificationServiceException
    {
        setNativePlatform();
        return nativePlatform.getNativeLogger();
    }

    public void onReceivedFirstSuperAgentNotification(String s)
    {
        this;
        JVM INSTR monitorenter ;
        GenericLogger genericlogger = getLogger();
        if (isReceiverTransportCalled)
            break MISSING_BLOCK_LABEL_72;
        genericlogger.error(TAG, "The method 'onReceivedFirstSuperAgentNotification' was called, but the Notification Received is stopped");
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        NotificationServiceException notificationserviceexception;
        notificationserviceexception;
        System.out.println((new StringBuilder()).append("Could not get logger in onReceivedFirstSuperAgentNotification error: '").append(notificationserviceexception.getMessage()).append("'").toString());
          goto _L1
        Exception exception;
        exception;
        throw exception;
        receiverTransport.onReceivedFirstSuperAgentNotification(s);
          goto _L1
    }

    public void onReceivedNotification(Notification notification)
    {
        GenericLogger genericlogger;
        try
        {
            genericlogger = getLogger();
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            System.out.println((new StringBuilder()).append("Could not get logger in receive notification error: ").append(notificationserviceexception.getMessage()).toString());
            return;
        }
        this;
        JVM INSTR monitorenter ;
        if (isReceiverTransportCalled)
            break MISSING_BLOCK_LABEL_58;
        genericlogger.error(TAG, "Received a Notification message, but the Notification Receiver transport is stopped");
        this;
        JVM INSTR monitorexit ;
        return;
        receiverTransport.onReceivedNotification(notification);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onReceivedNotificationDismiss(int i, UUID uuid)
    {
        receiverTransport.onReceivedNotificationDismiss(i, uuid);
    }

    public Map readAllProperties()
        throws NotificationServiceException
    {
        HashMap hashmap = new HashMap();
        try
        {
            propertyStore.readAll("", org.alljoyn.services.common.PropertyStore.Filter.READ, hashmap);
        }
        catch (PropertyStoreException propertystoreexception)
        {
            throw new NotificationServiceException((new StringBuilder()).append("Failed to read properties from the PropertyStore, Error: '").append(propertystoreexception.getMessage()).append("'").toString(), propertystoreexception);
        }
        return hashmap;
    }

    public boolean registerObjectAndSetSignalHandler(GenericLogger genericlogger, String s, String s1, Method method, BusObject busobject, String s2)
    {
        genericlogger.debug(TAG, (new StringBuilder()).append("Registering BusObject and setting signal handler, IFName: '").append(s).append(", method: '").append(method.getName()).append("'").toString());
        Status status = busAttachment.registerBusObject(busobject, s2);
        if (status != Status.OK)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to register bus object, status: ").append(status).toString());
            return false;
        }
        Status status1 = busAttachment.registerSignalHandler(s, s1, busobject, method);
        if (status1 != Status.OK)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to register signal handler, status: ").append(status1).toString());
            return false;
        } else
        {
            return true;
        }
    }

    public void sendNotification(int i, int j, NotificationMessageType notificationmessagetype, String s, String s1, byte abyte0[], String s2, 
            Map map, Map map1, TransportNotificationText atransportnotificationtext[], int k)
        throws NotificationServiceException
    {
        GenericLogger genericlogger;
        try
        {
            genericlogger = getLogger();
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            throw notificationserviceexception;
        }
        if (!isSenderTransportCalled)
        {
            genericlogger.error(TAG, "Notification service is not running, can't send message");
            throw new NotificationServiceException("Notification service is not running, can't send message");
        } else
        {
            senderTransport.sendNotification(i, j, notificationmessagetype, s, s1, abyte0, s2, map, map1, atransportnotificationtext, k);
            return;
        }
    }

    public void shutdown()
        throws NotificationServiceException
    {
        this;
        JVM INSTR monitorenter ;
        GenericLogger genericlogger;
        genericlogger = getLogger();
        if (busAttachment != null)
            break MISSING_BLOCK_LABEL_29;
        genericlogger.warn(TAG, "No BusAttachment defined, sender and receiver must be down, returning");
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
        genericlogger.debug(TAG, "Shutdown called, stopping sender and receiver transports");
        stopSenderTransport(genericlogger);
        stopReceiverTransport(genericlogger);
          goto _L1
        Exception exception;
        exception;
        throw exception;
    }

    public void shutdownReceiver()
        throws NotificationServiceException
    {
        this;
        JVM INSTR monitorenter ;
        GenericLogger genericlogger;
        genericlogger = getLogger();
        if (!isReceiverTransportCalled)
        {
            genericlogger.error(TAG, "Receiver service wasn't started");
            throw new NotificationServiceException("Receiver service wasn't started");
        }
        break MISSING_BLOCK_LABEL_42;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        genericlogger.debug(TAG, "Stopping receiver transport");
        stopReceiverTransport(genericlogger);
        this;
        JVM INSTR monitorexit ;
    }

    public void shutdownSender()
        throws NotificationServiceException
    {
        this;
        JVM INSTR monitorenter ;
        GenericLogger genericlogger;
        genericlogger = getLogger();
        if (!isSenderTransportCalled)
        {
            genericlogger.error(TAG, "Sender service wasn't started");
            throw new NotificationServiceException("Sender service wasn't started");
        }
        break MISSING_BLOCK_LABEL_42;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        genericlogger.debug(TAG, "Stopping sender transport");
        stopSenderTransport(genericlogger);
        this;
        JVM INSTR monitorexit ;
    }

    public void startReceiverTransport(BusAttachment busattachment, NotificationReceiver notificationreceiver)
        throws NotificationServiceException
    {
        this;
        JVM INSTR monitorenter ;
        GenericLogger genericlogger = getLogger();
        if (!isReceiverTransportCalled) goto _L2; else goto _L1
_L1:
        genericlogger.debug(TAG, "Receiver transport was previously started, returning");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        saveBus(busattachment);
        TaskManager taskmanager = TaskManager.getInstance();
        if (!taskmanager.isRunning())
            taskmanager.initPool(nativePlatform);
        receiverTransport = new ReceiverTransport(nativePlatform, notificationreceiver);
        receiverTransport.startReceiverTransport();
        isReceiverTransportCalled = true;
          goto _L3
        Exception exception;
        exception;
        throw exception;
        NotificationServiceException notificationserviceexception;
        notificationserviceexception;
        stopReceiverTransport(genericlogger);
        throw notificationserviceexception;
    }

    public void startSenderTransport(BusAttachment busattachment, PropertyStore propertystore)
        throws NotificationServiceException
    {
        this;
        JVM INSTR monitorenter ;
        GenericLogger genericlogger = getLogger();
        if (!isSenderTransportCalled) goto _L2; else goto _L1
_L1:
        genericlogger.debug(TAG, "Sender transport was previously started, returning");
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        saveBus(busattachment);
        TaskManager taskmanager = TaskManager.getInstance();
        if (!taskmanager.isRunning())
            taskmanager.initPool(nativePlatform);
        propertyStore = propertystore;
        senderTransport = new SenderTransport(nativePlatform);
        senderTransport.startSenderTransport();
        isSenderTransportCalled = true;
          goto _L3
        Exception exception;
        exception;
        throw exception;
        NotificationServiceException notificationserviceexception;
        notificationserviceexception;
        stopSenderTransport(genericlogger);
        throw notificationserviceexception;
    }

}
