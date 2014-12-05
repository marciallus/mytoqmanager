// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.consumer;

import java.io.PrintStream;
import org.alljoyn.bus.BusAttachment;
import org.alljoyn.bus.BusException;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.PayloadAdapter;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.transport.Transport;
import org.alljoyn.ns.transport.interfaces.NotificationDismisser;

class DismissConsumer
    implements NotificationDismisser
{

    public static final String OBJ_PATH = "/dismissReceiver";
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/consumer/DismissConsumer.getSimpleName()).toString();


    public void dismiss(int i, byte abyte0[])
        throws BusException
    {
        Transport transport = Transport.getInstance();
        transport.getBusAttachment().enableConcurrentCallbacks();
        GenericLogger genericlogger;
        java.util.UUID uuid;
        try
        {
            genericlogger = transport.getLogger();
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            System.out.println((new StringBuilder()).append(TAG).append(": Unexpected error occured: ").append(notificationserviceexception.getMessage()).toString());
            return;
        }
        uuid = PayloadAdapter.byteArrayToUUID(abyte0);
        if (uuid == null)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Received the Dismiss signal for the notifId: '").append(i).append("' with an invalid ApplicationId").toString());
            return;
        } else
        {
            genericlogger.debug(TAG, (new StringBuilder()).append("Received a dismiss signal for notifId: '").append(i).append("', from appId: '").append(uuid).append("', handling...").toString());
            transport.onReceivedNotificationDismiss(i, uuid);
            return;
        }
    }

    public short getVersion()
        throws BusException
    {
        return 1;
    }

}
