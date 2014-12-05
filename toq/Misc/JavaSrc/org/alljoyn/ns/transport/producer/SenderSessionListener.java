// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport.producer;

import org.alljoyn.bus.*;
import org.alljoyn.ns.NotificationServiceException;
import org.alljoyn.ns.commons.GenericLogger;
import org.alljoyn.ns.commons.NativePlatform;
import org.alljoyn.ns.transport.Transport;

public class SenderSessionListener extends SessionPortListener
{

    public static final short PORT_NUM = 1010;
    private static final String TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/ns/transport/producer/SenderSessionListener.getSimpleName()).toString();
    private NativePlatform nativePlatform;

    public SenderSessionListener(NativePlatform nativeplatform)
    {
        nativePlatform = nativeplatform;
    }

    public static SessionOpts getSessionOpts()
    {
        SessionOpts sessionopts = new SessionOpts();
        sessionopts.traffic = 1;
        sessionopts.isMultipoint = false;
        sessionopts.proximity = -1;
        sessionopts.transports = -129;
        return sessionopts;
    }

    public boolean acceptSessionJoiner(short word0, String s, SessionOpts sessionopts)
    {
        if (nativePlatform != null)
        {
            nativePlatform.getNativeLogger().debug(TAG, (new StringBuilder()).append("Received SessionJoiner request from: '").append(s).append("', requested port: '").append(word0).append("'").toString());
            if (word0 == 1010)
                return true;
        }
        return false;
    }

    public void clean()
    {
        nativePlatform.getNativeLogger().debug(TAG, "Cleaning the SenderSessionListener");
        Status status = Transport.getInstance().getBusAttachment().unbindSessionPort((short)1010);
        if (status != Status.OK)
            nativePlatform.getNativeLogger().error(TAG, (new StringBuilder()).append("Failed to unbind the port number: '1010', Error: '").append(status).append("'").toString());
        nativePlatform = null;
    }

    public void init()
        throws NotificationServiceException
    {
        Status status = Transport.getInstance().getBusAttachment().bindSessionPort(new org.alljoyn.bus.Mutable.ShortValue((short)1010), getSessionOpts(), this);
        nativePlatform.getNativeLogger().debug(TAG, (new StringBuilder()).append("Session port: '1010' was bound on the bus: '").append(status).append("'").toString());
        if (status != Status.OK)
            throw new NotificationServiceException((new StringBuilder()).append("Failed to bind session port: '1010', Error: '").append(status).append("'").toString());
        else
            return;
    }

    public void sessionJoined(short word0, int i, String s)
    {
        if (nativePlatform == null)
        {
            return;
        } else
        {
            nativePlatform.getNativeLogger().debug(TAG, (new StringBuilder()).append("The session was established with: '").append(s).append("', SID: '").append(i).append("'").toString());
            return;
        }
    }

}
