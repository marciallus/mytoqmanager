// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns;

import java.util.UUID;

// Referenced classes of package org.alljoyn.ns:
//            Notification

public interface NotificationReceiver
{

    public abstract void dismiss(int i, UUID uuid);

    public abstract void receive(Notification notification);
}
