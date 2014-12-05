// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication.interfaces;

import java.util.Map;
import org.alljoyn.bus.BusException;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.communication.interfaces:
//            AlertDialogSuper

public interface AlertDialogSecured
    extends AlertDialogSuper
{

    public static final String IFNAME = "org.alljoyn.ControlPanel.SecuredDialog";
    public static final short VERSION = 1;

    public abstract void Action1()
        throws BusException;

    public abstract void Action2()
        throws BusException;

    public abstract void Action3()
        throws BusException;

    public abstract void MetadataChanged()
        throws BusException;

    public abstract String getMessage()
        throws BusException;

    public abstract short getNumActions()
        throws BusException;

    public abstract Map getOptParams()
        throws BusException;

    public abstract int getStates()
        throws BusException;

    public abstract short getVersion()
        throws BusException;
}
