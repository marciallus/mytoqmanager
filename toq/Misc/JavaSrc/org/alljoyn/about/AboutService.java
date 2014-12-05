// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about;

import java.util.List;
import org.alljoyn.about.client.AboutClient;
import org.alljoyn.about.icon.AboutIconClient;
import org.alljoyn.bus.BusAttachment;
import org.alljoyn.bus.BusException;
import org.alljoyn.services.common.*;

public interface AboutService
    extends ServiceCommon
{

    public static final String ANNOUNCE_IFNAME = "org.alljoyn.About";
    public static final int PROTOCOL_VERSION = 1;
    public static final String SIGNAL_NAME = "Announce";

    public abstract void addAnnouncementHandler(AnnouncementHandler announcementhandler);

    public abstract void addObjectDescription(String s, String as[]);

    public abstract void addObjectDescriptions(List list);

    public abstract void announce();

    public abstract AboutClient createAboutClient(String s, ServiceAvailabilityListener serviceavailabilitylistener, short word0)
        throws Exception;

    public abstract AboutIconClient createAboutIconClient(String s, ServiceAvailabilityListener serviceavailabilitylistener, short word0)
        throws BusException;

    public abstract void registerIcon(String s, String s1, byte abyte0[])
        throws Exception;

    public abstract void removeAnnouncementHandler(AnnouncementHandler announcementhandler);

    public abstract void removeObjectDescription(String s, String as[]);

    public abstract void removeObjectDescriptions(List list);

    public abstract void startAboutClient(BusAttachment busattachment)
        throws Exception;

    public abstract void startAboutServer(short word0, PropertyStore propertystore, BusAttachment busattachment)
        throws Exception;

    public abstract void stopAboutClient()
        throws Exception;

    public abstract void stopAboutServer()
        throws Exception;

    public abstract void unregisterIcon()
        throws Exception;
}
