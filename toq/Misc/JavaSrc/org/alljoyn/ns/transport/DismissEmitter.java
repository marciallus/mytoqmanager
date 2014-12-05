// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport;

import java.io.PrintStream;
import java.util.UUID;
import org.alljoyn.bus.*;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.PayloadAdapter;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.transport.interfaces.NotificationDismisser;

// Referenced classes of package org.alljoyn.ns.transport:
//            Transport

public class DismissEmitter
    implements NotificationDismisser
{

    private static final String OBJ_PATH_PREFIX = "/notificationDismisser/";
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/DismissEmitter.getSimpleName()).toString();


    private static String buildObjPath(int i, UUID uuid)
    {
        String s = uuid.toString().replace("-", "");
        return (new StringBuilder()).append("/notificationDismisser/").append(s).append("/").append(Math.abs(i)).toString();
    }

    public static void send(int i, UUID uuid)
    {
        Transport transport = Transport.getInstance();
        BusAttachment busattachment = transport.getBusAttachment();
        GenericLogger genericlogger;
        try
        {
            genericlogger = transport.getLogger();
        }
        catch (NotificationServiceException notificationserviceexception)
        {
            System.out.println((new StringBuilder()).append(TAG).append(": Unexpected error occured: ").append(notificationserviceexception.getMessage()).toString());
            return;
        }
        if (busattachment == null)
        {
            genericlogger.error(TAG, "Can't call Dismiss signal, BusAttachment isn't defined, returning...");
            return;
        }
        genericlogger.debug(TAG, (new StringBuilder()).append("Sending the Dismiss signal notifId: '").append(i).append("', appId: '").append(uuid).append("'").toString());
        DismissEmitter dismissemitter = new DismissEmitter();
        String s = buildObjPath(i, uuid);
        Status status = busattachment.registerBusObject(dismissemitter, s);
        if (status != Status.OK)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to register a BusObject, ObjPath: '").append(s).append("', Error: '").append(status).append("'").toString());
            return;
        }
        SignalEmitter signalemitter = new SignalEmitter(dismissemitter, org.alljoyn.bus.SignalEmitter.GlobalBroadcast.Off);
        signalemitter.setSessionlessFlag(true);
        signalemitter.setTimeToLive(43200);
        byte abyte0[] = PayloadAdapter.uuidToByteArray(uuid);
        try
        {
            genericlogger.debug(TAG, (new StringBuilder()).append("Sending the Dismiss signal from ObjPath: '").append(s).append("'").toString());
            ((NotificationDismisser)signalemitter.getInterface(org/alljoyn/ns/transport/interfaces/NotificationDismisser)).dismiss(i, abyte0);
        }
        catch (BusException busexception)
        {
            genericlogger.error(TAG, (new StringBuilder()).append("Failed to send the Dismiss signal notifId: '").append(i).append("', appId: '").append(uuid).append("', Error: '").append(busexception.getMessage()).append("'").toString());
        }
        busattachment.unregisterBusObject(dismissemitter);
    }

    public void dismiss(int i, byte abyte0[])
        throws BusException
    {
    }

    public short getVersion()
        throws BusException
    {
        return 1;
    }

}
