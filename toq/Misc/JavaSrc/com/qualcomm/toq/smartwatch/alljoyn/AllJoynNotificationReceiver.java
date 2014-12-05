// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.alljoyn;

import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.InternalNotifyTextCard;
import com.qualcomm.toq.smartwatch.controller.AppMessagingController;
import java.util.*;
import org.alljoyn.ns.*;

public final class AllJoynNotificationReceiver
    implements NotificationReceiver
{

    public static final String APP_NAME = "AllJoyn";
    public static final String PACKAGE_NAME = "com.qualcomm.qce.alljoyn";
    private final String TAG = "AllJoynNotificationReceiver";


    public void dismiss(int i, UUID uuid)
    {
    }

    public void receive(Notification notification)
    {
        ArrayList arraylist;
        Log.d("AllJoynNotificationReceiver", (new StringBuilder()).append("Received Notification - ").append(notification.toString()).toString());
        List list;
        Iterator iterator;
        NotificationText notificationtext;
        try
        {
            list = notification.getText();
            if (list.size() == 0)
            {
                Log.d("AllJoyn", "AllJoynNotificationReceiver.receive - received AllJoyn notification with no text, do nothing");
                return;
            }
        }
        catch (Exception exception)
        {
            Log.e("AllJoyn", "AllJoynNotificationReceiver.receive - an error occurred processing the AllJoyn notification", exception);
            return;
        }
        arraylist = new ArrayList();
        iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
                break;
            notificationtext = (NotificationText)iterator.next();
            if (notificationtext.getLanguage().equalsIgnoreCase("en"))
                arraylist.add(notificationtext.getText());
        } while (true);
        String as[] = (String[])arraylist.toArray(new String[arraylist.size()]);
        InternalNotifyTextCard internalnotifytextcard = InternalNotifyTextCard.getAllJoynNotificationInstance("com.qualcomm.qce.alljoyn", notification.getDeviceName(), System.currentTimeMillis(), "", as);
        AppMessagingController.getAppMessagingController().showNotificationPopup("com.qualcomm.qce.alljoyn", "AllJoyn", internalnotifytextcard);
        return;
    }
}
