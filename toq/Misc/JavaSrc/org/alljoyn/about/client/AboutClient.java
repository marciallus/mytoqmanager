// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about.client;

import java.util.Map;
import org.alljoyn.bus.BusException;
import org.alljoyn.services.common.BusObjectDescription;
import org.alljoyn.services.common.ClientBase;

public interface AboutClient
    extends ClientBase
{

    public abstract Map getAbout(String s)
        throws BusException;

    public abstract BusObjectDescription[] getBusObjectDescriptions()
        throws BusException;

    public abstract String getDefaultLanguage()
        throws BusException;

    public abstract String[] getLanguages()
        throws BusException;
}
