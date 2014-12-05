// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.ns.transport;

import org.alljoyn.ns.NotificationText;

public class TransportNotificationText
{

    public String language;
    public String text;


    public TransportNotificationText(String s, String s1)
    {
        language = s;
        text = s1;
    }

    public static TransportNotificationText buildInstance(NotificationText notificationtext)
    {
        return new TransportNotificationText(notificationtext.getLanguage(), notificationtext.getText());
    }
}
