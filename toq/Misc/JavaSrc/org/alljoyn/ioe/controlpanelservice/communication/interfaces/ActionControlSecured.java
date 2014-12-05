// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication.interfaces;

import java.util.Map;
import org.alljoyn.bus.BusException;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.communication.interfaces:
//            ActionControlSuper

public interface ActionControlSecured
    extends ActionControlSuper
{

    public static final String IFNAME = "org.alljoyn.ControlPanel.SecuredAction";
    public static final short VERSION = 1;

    public abstract void Exec()
        throws BusException;

    public abstract void MetadataChanged()
        throws BusException;

    public abstract Map getOptParams()
        throws BusException;

    public abstract int getStates()
        throws BusException;

    public abstract short getVersion()
        throws BusException;
}
