// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about.transport;

import java.util.Map;
import org.alljoyn.bus.BusException;
import org.alljoyn.bus.BusObject;
import org.alljoyn.services.common.BusObjectDescription;

public interface AboutTransport
    extends BusObject
{

    public static final String INTERFACE_NAME = "org.alljoyn.About";
    public static final String OBJ_PATH = "/About";

    public abstract void Announce(short word0, short word1, BusObjectDescription abusobjectdescription[], Map map);

    public abstract Map GetAboutData(String s)
        throws BusException;

    public abstract BusObjectDescription[] GetObjectDescription()
        throws BusException;

    public abstract short getVersion()
        throws BusException;
}
