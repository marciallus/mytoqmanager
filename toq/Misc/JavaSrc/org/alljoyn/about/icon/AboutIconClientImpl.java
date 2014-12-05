// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about.icon;

import org.alljoyn.about.transport.IconTransport;
import org.alljoyn.bus.*;
import org.alljoyn.services.common.ClientBaseImpl;
import org.alljoyn.services.common.ServiceAvailabilityListener;

// Referenced classes of package org.alljoyn.about.icon:
//            AboutIconClient

public class AboutIconClientImpl extends ClientBaseImpl
    implements AboutIconClient
{

    public static final String TAG = org/alljoyn/about/icon/AboutIconClientImpl.getName();

    public AboutIconClientImpl(String s, BusAttachment busattachment, ServiceAvailabilityListener serviceavailabilitylistener, short word0)
    {
        super(s, busattachment, serviceavailabilitylistener, "/About/DeviceIcon", org/alljoyn/about/transport/IconTransport, word0);
    }

    public byte[] GetContent()
        throws BusException
    {
        return ((IconTransport)getProxyObject().getInterface(org/alljoyn/about/transport/IconTransport)).GetContent();
    }

    public String GetUrl()
        throws BusException
    {
        return ((IconTransport)getProxyObject().getInterface(org/alljoyn/about/transport/IconTransport)).GetUrl();
    }

    public String getMimeType()
        throws BusException
    {
        return ((IconTransport)getProxyObject().getInterface(org/alljoyn/about/transport/IconTransport)).getMimeType();
    }

    public int getSize()
        throws BusException
    {
        return ((IconTransport)getProxyObject().getInterface(org/alljoyn/about/transport/IconTransport)).getSize();
    }

    public short getVersion()
        throws BusException
    {
        return ((IconTransport)getProxyObject().getInterface(org/alljoyn/about/transport/IconTransport)).getVersion();
    }

}
