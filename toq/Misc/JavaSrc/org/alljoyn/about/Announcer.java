// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about;

import java.util.List;

public interface Announcer
{

    public abstract void addBusObjectAnnouncements(List list);

    public abstract void announce();

    public abstract boolean isAnnouncing();

    public abstract void removeBusObjectAnnouncements(List list);

    public abstract void setAnnouncing(boolean flag);
}
