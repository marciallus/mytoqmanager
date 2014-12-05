// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about.client;

import java.util.Map;
import org.alljoyn.about.AboutServiceImpl;
import org.alljoyn.about.transport.AboutTransport;
import org.alljoyn.bus.*;
import org.alljoyn.services.common.*;
import org.alljoyn.services.common.utils.GenericLogger;
import org.alljoyn.services.common.utils.TransportUtil;

// Referenced classes of package org.alljoyn.about.client:
//            AboutClient

public class AboutClientImpl extends ClientBaseImpl
    implements AboutClient
{

    public static final String TAG = org/alljoyn/about/client/AboutClientImpl.getName();

    public AboutClientImpl(String s, BusAttachment busattachment, ServiceAvailabilityListener serviceavailabilitylistener, short word0)
    {
        super(s, busattachment, serviceavailabilitylistener, "/About", new Class[] {
            org/alljoyn/about/transport/AboutTransport
        }, word0);
    }

    public Status connect()
    {
        ((AboutServiceImpl)AboutServiceImpl.getInstance()).getLogger().debug(TAG, (new StringBuilder()).append("JoiningSession with peer: '").append(getPeerName()).append("'").toString());
        return super.connect();
    }

    public Map getAbout(String s)
        throws BusException
    {
        return TransportUtil.fromVariantMap(((AboutTransport)getProxyObject().getInterface(org/alljoyn/about/transport/AboutTransport)).GetAboutData(s));
    }

    public BusObjectDescription[] getBusObjectDescriptions()
        throws BusException
    {
        return ((AboutTransport)getProxyObject().getInterface(org/alljoyn/about/transport/AboutTransport)).GetObjectDescription();
    }

    public String getDefaultLanguage()
        throws BusException
    {
        return (String)TransportUtil.fromVariantMap(((AboutTransport)getProxyObject().getInterface(org/alljoyn/about/transport/AboutTransport)).GetAboutData("en")).get("DefaultLanguage");
    }

    public String[] getLanguages()
        throws BusException
    {
        Map map = TransportUtil.fromVariantMap(((AboutTransport)getProxyObject().getInterface(org/alljoyn/about/transport/AboutTransport)).GetAboutData("en"));
        String as[] = (String[])(String[])map.get("SupportedLanguages");
        if (as != null && as.length > 0)
            return as;
        else
            return (new String[] {
                (String)map.get("DefaultLanguage")
            });
    }

    public short getVersion()
        throws BusException
    {
        return ((AboutTransport)getProxyObject().getInterface(org/alljoyn/about/transport/AboutTransport)).getVersion();
    }

}
