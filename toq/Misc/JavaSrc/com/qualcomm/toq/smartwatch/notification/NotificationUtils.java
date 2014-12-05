// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.notification;

import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Constants;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.*;

public class NotificationUtils
{
    static class PHubNotification
    {

        String appName;
        String defaultText;
        String info;
        boolean isOngoing;
        List message;
        Notification notification;
        String packageName;
        String summary;
        String time;
        String title;

        public String toString()
        {
            return (new StringBuilder()).append("[packageName=").append(packageName).append("|appName=").append(appName).append("|defaultText=").append(defaultText).append("|title=").append(title).append("|summary=").append(summary).append("|message=").append(message).append("|info=").append(info).append("|time=").append(time).append("|isOngoing=").append(isOngoing).append("]").toString();
        }

        PHubNotification(String s, String s1, Notification notification1)
        {
            defaultText = "";
            message = new ArrayList();
            info = "";
            time = "";
            summary = "";
            packageName = s;
            defaultText = s1;
            notification = notification1;
        }
    }


    private static final List INFO_IDS;
    private static final int MAX_MESSAGE_LINES = 5;
    private static final String NOTIFICATION_LISTENERS = "enabled_notification_listeners";
    public static final String NOTIFICATION_LISTENER_SETTINGS = "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS";
    private static final String NOTIFICATION_SERVICE;
    private static final List SUMMARY_IDS;
    private static final int TEXT_VIEW = 10;
    private static final List TIME_IDS;
    private static final List TITLE_IDS;
    private static final boolean USE_BIG_VIEW = true;
    private static final boolean USE_EXTRAS;

    private NotificationUtils()
    {
    }

    private static List getInheritedFields(Class class1)
    {
        ArrayList arraylist = new ArrayList();
        for (Class class2 = class1; class2 != null; class2 = class2.getSuperclass())
            arraylist.addAll(Arrays.asList(class2.getDeclaredFields()));

        return arraylist;
    }

    private static LinkedHashMap getNotificationData(RemoteViews remoteviews)
        throws IllegalArgumentException, IllegalAccessException
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Field afield[] = remoteviews.getClass().getDeclaredFields();
        int i = afield.length;
label0:
        for (int j = 0; j < i; j++)
        {
            Field field = afield[j];
            if (!field.getName().equals("mActions"))
                continue;
            field.setAccessible(true);
            ArrayList arraylist = (ArrayList)field.get(remoteviews);
            Object obj = null;
            Integer integer = null;
            Integer integer1 = null;
            Iterator iterator = arraylist.iterator();
            do
            {
                do
                {
                    if (!iterator.hasNext())
                        continue label0;
                    Object obj1 = iterator.next();
                    Iterator iterator1 = getInheritedFields(obj1.getClass()).iterator();
                    do
                    {
                        if (!iterator1.hasNext())
                            break;
                        Field field1 = (Field)iterator1.next();
                        field1.setAccessible(true);
                        if (field1.getName().equals("value"))
                            obj = field1.get(obj1);
                        else
                        if (field1.getName().equals("type"))
                            integer = Integer.valueOf(field1.getInt(obj1));
                        else
                        if (field1.getName().equals("viewId"))
                            integer1 = Integer.valueOf(field1.getInt(obj1));
                    } while (true);
                } while (integer == null || integer.intValue() != 10);
                String s = obj.toString();
                linkedhashmap.put(integer1, s);
            } while (true);
        }

        return linkedhashmap;
    }

    public static boolean isNotificationListenerServiceEnabled(Context context)
    {
        String s = android.provider.Settings.Secure.getString(context.getContentResolver(), "enabled_notification_listeners");
        if (!TextUtils.isEmpty(s))
        {
            String as[] = s.split(":");
            int i = as.length;
            for (int j = 0; j < i; j++)
                if (as[j].contains(NOTIFICATION_SERVICE))
                    return true;

        }
        return false;
    }

    private static void parseExtras(PHubNotification phubnotification)
    {
        Bundle bundle = phubnotification.notification.extras;
        Object obj = bundle.get("android.title");
        String s;
        if (obj != null)
            s = obj.toString();
        else
            s = "";
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseExtras, title: ").append(s).toString());
        phubnotification.title = s;
        Object obj1 = bundle.get("android.infoText");
        String s1;
        if (obj1 != null)
            s1 = obj1.toString();
        else
            s1 = "";
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseExtras, info: ").append(s1).toString());
        phubnotification.info = s1;
        Object obj2 = bundle.get("android.subText");
        String s2;
        if (obj2 != null)
            s2 = obj2.toString();
        else
            s2 = "";
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseExtras, summary: ").append(s2).toString());
        phubnotification.summary = s2;
        Object obj3 = bundle.get("android.text");
        String as[] = new String[0];
        if (obj3 != null)
        {
            as = obj3.toString().split("[\r\n]+");
        } else
        {
            CharSequence acharsequence[] = (CharSequence[])(CharSequence[])bundle.get("android.textLines");
            if (acharsequence != null)
            {
                as = new String[acharsequence.length];
                for (int k = 0; k < acharsequence.length; k++)
                    as[k] = acharsequence[k].toString();

            }
        }
        int i = Math.min(as.length, 5);
        for (int j = 0; j < i; j++)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseExtras text[").append(j).append("]: ").append(as[j]).toString());
            phubnotification.message.add(as[j]);
        }

    }

    static void parseNotification(PHubNotification phubnotification)
    {
        boolean flag;
        flag = false;
        if (false)
            break MISSING_BLOCK_LABEL_51;
        int i = android.os.Build.VERSION.SDK_INT;
        flag = false;
        if (i < 16)
            break MISSING_BLOCK_LABEL_51;
        if (phubnotification.notification.bigContentView == null)
            break MISSING_BLOCK_LABEL_223;
        Log.d("NotificationHandler", "NotificationUtils.parseNotification api is >= 16, using big view");
        parseViews(phubnotification, phubnotification.notification.bigContentView);
        flag = true;
_L1:
        if (!flag)
        {
            Log.d("NotificationHandler", "NotificationUtils.parseNotification using small view");
            Exception exception1;
            try
            {
                parseViews(phubnotification, phubnotification.notification.contentView);
            }
            catch (Exception exception)
            {
                Log.w("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseNotification error: ").append(exception.getMessage()).toString());
            }
        }
        if (TextUtils.isEmpty(phubnotification.title))
            if (!TextUtils.isEmpty(phubnotification.notification.tickerText))
            {
                phubnotification.title = phubnotification.notification.tickerText.toString();
            } else
            {
                Log.w("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseNotification notification has no title or ticker text, using default: ").append(phubnotification.notification).toString());
                phubnotification.title = phubnotification.defaultText;
            }
        if (!TextUtils.isEmpty(phubnotification.summary))
            phubnotification.message.add(phubnotification.summary);
        if (phubnotification.message.size() > 0 && phubnotification.title.equals(phubnotification.message.get(0)))
        {
            Log.d("NotificationHandler", "NotificationUtils.parseNotification first line of message is same as title, removing");
            phubnotification.message.remove(0);
        }
        return;
        exception1;
        Log.w("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseNotification error: ").append(exception1.getMessage()).toString());
        flag = false;
          goto _L1
        Log.d("NotificationHandler", "NotificationUtils.parseNotification api is >= 16, but big view is null");
        flag = false;
          goto _L1
    }

    private static void parseViews(PHubNotification phubnotification, RemoteViews remoteviews)
        throws IllegalArgumentException, IllegalAccessException
    {
        if (remoteviews == null)
            throw new IllegalStateException("Remote view is null");
        for (Iterator iterator = getNotificationData(remoteviews).entrySet().iterator(); iterator.hasNext();)
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            int i = ((Integer)entry.getKey()).intValue();
            String s = (String)entry.getValue();
            if (!TextUtils.isEmpty(s))
            {
                String s1 = s.trim();
                if (TITLE_IDS.contains(Integer.valueOf(i)))
                {
                    Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseViews TITLE_ID: ").append(i).append(", title: ").append(s1).toString());
                    phubnotification.title = s1;
                } else
                if (INFO_IDS.contains(Integer.valueOf(i)))
                {
                    Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseViews INFO_ID: ").append(i).append(", info: ").append(s1).toString());
                    phubnotification.info = s1;
                } else
                if (TIME_IDS.contains(Integer.valueOf(i)))
                {
                    Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseViews TIME_ID: ").append(i).append(", time: ").append(s1).toString());
                    phubnotification.time = s1;
                } else
                if (SUMMARY_IDS.contains(Integer.valueOf(i)))
                {
                    Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseViews SUMMARY_ID: ").append(i).append(", summary: ").append(s1).toString());
                    phubnotification.summary = s1;
                } else
                if (phubnotification.message.size() < 5)
                {
                    String as[] = s1.split("[\n]+");
                    int j = Math.min(as.length, 5 - phubnotification.message.size());
                    int k = 0;
                    while (k < j) 
                    {
                        String s2 = as[k].trim();
                        if (!TextUtils.isEmpty(s2))
                        {
                            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseViews unknown id: ").append(i).append(", text[").append(k).append("]: ").append(s2).toString());
                            phubnotification.message.add(s2);
                        }
                        k++;
                    }
                } else
                {
                    Log.w("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseViews message limit, ignoring unknown id: ").append(i).append(", text: ").append(s1).toString());
                }
            } else
            {
                Log.w("NotificationHandler", (new StringBuilder()).append("NotificationUtils.parseViews textview text is null for viewId: ").append(i).toString());
            }
        }

    }

    public static void updateHashMapOnAppPackageUpdate(String s)
    {
        SharedPreferences sharedpreferences = ToqApplication.getAppContext().getSharedPreferences("notification_settings_pref", 0);
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_157;
        HashMap hashmap;
        android.content.SharedPreferences.Editor editor;
        try
        {
            hashmap = (HashMap)ObjectSerializer.deserialize(sharedpreferences.getString("notification_settings_key", ObjectSerializer.serialize(new HashMap())));
        }
        catch (IOException ioexception1)
        {
            ioexception1.printStackTrace();
            hashmap = null;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            classnotfoundexception.printStackTrace();
            hashmap = null;
        }
        if (hashmap == null)
            Log.d("NotificationHandler", "mNotificationsSettingsListMap is NULL");
        if (hashmap == null || !hashmap.containsKey(s))
            break MISSING_BLOCK_LABEL_157;
        Log.d("NotificationHandler", (new StringBuilder()).append("Key removed = ").append(s).toString());
        hashmap.remove(s);
        if (sharedpreferences == null)
            break MISSING_BLOCK_LABEL_157;
        if (sharedpreferences.getString("notification_settings_key", ObjectSerializer.serialize(new HashMap())) == null || hashmap == null)
            break MISSING_BLOCK_LABEL_157;
        editor = sharedpreferences.edit();
        editor.putString("notification_settings_key", ObjectSerializer.serialize(hashmap));
        editor.commit();
        return;
        IOException ioexception;
        ioexception;
        ioexception.printStackTrace();
        return;
    }

    static 
    {
        NOTIFICATION_SERVICE = (new StringBuilder()).append(Constants.APPLICATION_PACKAGE_NAME).append("/").append(Constants.APPLICATION_PACKAGE_NAME).append(".smartwatch.service.PHubNotificationListenerService").toString();
        TITLE_IDS = new ArrayList();
        INFO_IDS = new ArrayList();
        TIME_IDS = new ArrayList();
        SUMMARY_IDS = new ArrayList();
        Log.i("NotificationHandler", (new StringBuilder()).append("NotificationUtils.static - Build.MANUFACTURER: ").append(Build.MANUFACTURER).toString());
        Log.i("NotificationHandler", (new StringBuilder()).append("NotificationUtils.static - Build.MODEL: ").append(Build.MODEL).toString());
        Log.i("NotificationHandler", (new StringBuilder()).append("NotificationUtils.static - VERSION.SDK_INT: ").append(android.os.Build.VERSION.SDK_INT).toString());
        if (Build.MANUFACTURER.equals("motorola") && Build.MODEL.equals("XT1080") && android.os.Build.VERSION.SDK_INT >= 19)
        {
            Log.i("NotificationHandler", "NotificationUtils.static - Motorola Droid MAXX and api >= 19 (Android 4.4, KitKat), using custom ids...");
            List list4 = TITLE_IDS;
            Integer ainteger4[] = new Integer[1];
            ainteger4[0] = Integer.valueOf(0x1020016);
            list4.addAll(Arrays.asList(ainteger4));
            List list5 = INFO_IDS;
            Integer ainteger5[] = new Integer[1];
            ainteger5[0] = Integer.valueOf(0x10202d9);
            list5.addAll(Arrays.asList(ainteger5));
            List list6 = TIME_IDS;
            Integer ainteger6[] = new Integer[1];
            ainteger6[0] = Integer.valueOf(0x1020064);
            list6.addAll(Arrays.asList(ainteger6));
            List list7 = SUMMARY_IDS;
            Integer ainteger7[] = new Integer[1];
            ainteger7[0] = Integer.valueOf(0x1020046);
            list7.addAll(Arrays.asList(ainteger7));
        } else
        {
            Log.i("NotificationHandler", "NotificationUtils.static - using generic ids...");
            List list = TITLE_IDS;
            Integer ainteger[] = new Integer[2];
            ainteger[0] = Integer.valueOf(0x1020016);
            ainteger[1] = Integer.valueOf(0x7f0c0053);
            list.addAll(Arrays.asList(ainteger));
            List list1 = INFO_IDS;
            Integer ainteger1[] = new Integer[5];
            ainteger1[0] = Integer.valueOf(0x102030b);
            ainteger1[1] = Integer.valueOf(0x1020327);
            ainteger1[2] = Integer.valueOf(0x10202d7);
            ainteger1[3] = Integer.valueOf(0x10202da);
            ainteger1[4] = Integer.valueOf(0x102031a);
            list1.addAll(Arrays.asList(ainteger1));
            List list2 = TIME_IDS;
            Integer ainteger2[] = new Integer[1];
            ainteger2[0] = Integer.valueOf(0x1020064);
            list2.addAll(Arrays.asList(ainteger2));
            List list3 = SUMMARY_IDS;
            Integer ainteger3[] = new Integer[1];
            ainteger3[0] = Integer.valueOf(0x1020046);
            list3.addAll(Arrays.asList(ainteger3));
        }
    }
}
