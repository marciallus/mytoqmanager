// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.services.common;

import java.util.Map;

// Referenced classes of package org.alljoyn.services.common:
//            BusObjectDescription

public interface AnnouncementHandler
{

    public abstract void onAnnouncement(String s, short word0, BusObjectDescription abusobjectdescription[], Map map);

    public abstract void onDeviceLost(String s);
}
