// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication.interfaces;

import org.alljoyn.bus.BusException;

public interface ControlPanel
{

    public static final int ID_MASK = 1;
    public static final String IFNAME = "org.alljoyn.ControlPanel.ControlPanel";
    public static final short VERSION = 1;

    public abstract short getVersion()
        throws BusException;
}
