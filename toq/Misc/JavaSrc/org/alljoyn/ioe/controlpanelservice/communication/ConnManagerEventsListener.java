// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ioe.controlpanelservice.communication;

import java.util.Map;

// Referenced classes of package org.alljoyn.ioe.controlpanelservice.communication:
//            ConnManagerEventType

public interface ConnManagerEventsListener
{

    public abstract void connMgrEventOccured(ConnManagerEventType connmanagereventtype, Map map);
}
