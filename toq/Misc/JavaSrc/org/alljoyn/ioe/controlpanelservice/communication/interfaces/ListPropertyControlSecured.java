// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication.interfaces;

import java.util.Map;
import org.alljoyn.bus.BusException;
import org.alljoyn.ioe.controlpanelservice.ui.ajstruct.ListPropertyWidgetRecordAJ;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.communication.interfaces:
//            ListPropertyControlSuper

public interface ListPropertyControlSecured
    extends ListPropertyControlSuper
{

    public static final String IFNAME = "org.alljoyn.ControlPanel.SecuredListProperty";
    public static final short VERSION = 1;

    public abstract void Add()
        throws BusException;

    public abstract void Cancel()
        throws BusException;

    public abstract void Confirm()
        throws BusException;

    public abstract void Delete(short word0)
        throws BusException;

    public abstract void MetadataChanged()
        throws BusException;

    public abstract void Update(short word0)
        throws BusException;

    public abstract void ValueChanged()
        throws BusException;

    public abstract void View(short word0)
        throws BusException;

    public abstract Map getOptParams()
        throws BusException;

    public abstract int getStates()
        throws BusException;

    public abstract ListPropertyWidgetRecordAJ[] getValue()
        throws BusException;

    public abstract short getVersion()
        throws BusException;
}
