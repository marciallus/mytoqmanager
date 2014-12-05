// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.qualcomm.toq.smartwatch.notification;

import android.app.Notification;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.qualcomm.toq.ToqApplication;
import com.qualcomm.toq.base.utils.Log;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.DeckOfCardsException;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.LocalDeckOfCardsManager;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.card.ListCard;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.internal.*;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.ParcelableUtil;
import com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade;
import com.qualcomm.toq.smartwatch.controller.AppMessagingController;
import com.qualcomm.toq.smartwatch.utils.ObjectSerializer;
import java.io.IOException;
import java.util.*;

// Referenced classes of package com.qualcomm.toq.smartwatch.notification:
//            NotificationUtils

public class NotificationHandler
{
    private class DeckOfCardsEventListenerImpl
        implements InternalDeckOfCardsEventListener
    {

        final NotificationHandler this$0;

        public void onCardClosed(String s)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onCardClosed - cardId: ").append(s).toString());
        }

        public void onCardInvisible(String s)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onCardInvisible - cardId: ").append(s).toString());
            currentVisibleCardId = null;
        }

        public void onCardOpen(String s)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onCardOpen - cardId: ").append(s).toString());
        }

        public void onCardVisible(String s)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onCardVisible - cardId: ").append(s).toString());
            NotificationHandler notificationhandler = NotificationHandler.this;
            notificationhandler;
            JVM INSTR monitorenter ;
            NotificationUtils.PHubNotification phubnotification;
            currentVisibleCardId = s;
            phubnotification = (NotificationUtils.PHubNotification)cachedNotificationsMap.remove(s);
            if (phubnotification == null)
                break MISSING_BLOCK_LABEL_97;
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onCardVisible - processing cached notification: ").append(phubnotification).toString());
            handleAndroidNotification(phubnotification);
            notificationhandler;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            notificationhandler;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void onMenuOptionSelected(String s, String s1)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onMenuOptionSelected - cardId: ").append(s).append(", menuOption: ").append(s1).toString());
        }

        public void onMenuOptionSelected(String s, String s1, String s2)
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onMenuOptionSelected - cardId: ").append(s).append(", menuOption: ").append(s1).append(", quickReplyOption: ").append(s2).toString());
        }

        public void onReceivedMessage(byte abyte0[])
        {
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.DeckOfCardsEventListenerImpl.onReceivedMessage - message.length: ").append(abyte0.length).toString());
        }

        private DeckOfCardsEventListenerImpl()
        {
            this$0 = NotificationHandler.this;
            super();
        }

    }

    private class DeckOfCardsPurgerTask extends TimerTask
    {

        final NotificationHandler this$0;

        public void run()
        {
            try
            {
                Log.d("NotificationHandler", "NotificationHandler.DeckOfCardsPurgerTask.run - purging the deck of cards...");
                purgeByTime();
                return;
            }
            catch (Exception exception)
            {
                Log.e("NotificationHandler", "NotificationHandler.DeckOfCardsPurgerTask.run - an error occurred purging the deck of cards", exception);
            }
        }

        private DeckOfCardsPurgerTask()
        {
            this$0 = NotificationHandler.this;
            super();
        }

    }

    private class NotificationSettingsChangeListener
        implements android.content.SharedPreferences.OnSharedPreferenceChangeListener
    {

        final NotificationHandler this$0;

        public void onSharedPreferenceChanged(SharedPreferences sharedpreferences, String s)
        {
            if (!s.equals("notification_settings_key"))
                break MISSING_BLOCK_LABEL_71;
            notificationSettingsMap = getStoredNotificationSettings();
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.NotificationSettingsChangeListener.onSharedPreferenceChanged - updated notification settings map, notificationSettingsMap: ").append(notificationSettingsMap).toString());
            if (syncByNotificationSettings())
                storeAndPush();
            return;
            Exception exception;
            exception;
            Log.e("NotificationHandler", "NotificationHandler.NotificationSettingsChangeListener.onSharedPreferenceChanged - an error occurred updating notification settings map", exception);
            return;
        }

        private NotificationSettingsChangeListener()
        {
            this$0 = NotificationHandler.this;
            super();
        }

    }

    private class StateListenerImpl
        implements com.qualcomm.toq.smartwatch.api.v1.deckofcards.util.StateListenerFacade.StateListener
    {

        final NotificationHandler this$0;

        public void onBluetoothDisabled()
        {
        }

        public void onBluetoothEnabled()
        {
        }

        public void onWatchConnected()
        {
        }

        public void onWatchDisconnected()
        {
        }

        public void onWatchPaired()
        {
        }

        public void onWatchUnpaired()
        {
            Log.d("NotificationHandler", "NotificationHandler.StateListenerImpl.onWatchUnpaired - purging...");
            purgeAll();
        }

        private StateListenerImpl()
        {
            this$0 = NotificationHandler.this;
            super();
        }

    }


    private static final boolean APPLY_EMAIL_PROCESSING = true;
    private static final String APP_NAME = "Notifications";
    private static final String APP_PACKAGE_NAME = "com.qualcomm.qce.androidnotifications";
    private static final String APP_ZIP_FILE = "androidnotifications_app.zip";
    private static final int DECK_OF_CARDS_PURGE_PERIOD = 0x36ee80;
    private static final List EMAIL_APP_PACKAGES = new ArrayList(Arrays.asList(new String[] {
        "com.google.android.email", "com.google.android.gm", "com.motorola.motoemail"
    }));
    private static final String GMAIL_EMAIL_APP_PACKAGE_NAME = "com.google.android.gm";
    private static final int MAX_CARDS_IN_A_DECK = 20;
    private static final String MOTO_EMAIL_APP_PACKAGE_NAME = "com.motorola.motoemail";
    private static final String NATIVE_EMAIL_APP_PACKAGE_NAME = "com.google.android.email";
    private static final int NOTIFICATION_EXPIRE_MILLIS = 0xa4cb800;
    private static final boolean PROCESS_ONGOING_NOTIFICATIONS = true;
    public static final String TAG = "NotificationHandler";
    private static NotificationHandler inst;
    private Map cachedNotificationsMap;
    private Context context;
    private String currentVisibleCardId;
    private InternalDeckOfCards deckOfCards;
    private Timer deckOfCardsPurgerTimer;
    private LocalDeckOfCardsManager localDeckOfCardsManager;
    private NotificationSettingsChangeListener notificationSettingsChangeListener;
    private HashMap notificationSettingsMap;
    private PackageManager packageManager;
    private SharedPreferences sharedPrefs;

    private NotificationHandler()
    {
        context = ToqApplication.getAppContext();
        packageManager = context.getPackageManager();
        cachedNotificationsMap = new HashMap();
        try
        {
            localDeckOfCardsManager = LocalDeckOfCardsManager.getInstance();
        }
        catch (Exception exception)
        {
            Log.e("NotificationHandler", "NotificationHandler.constructor - an error occurred getting reference to the local deck of cards manager", exception);
        }
        sharedPrefs = context.getSharedPreferences("notification_settings_pref", 0);
        initDeckOfCards();
        initNotificationSettings();
        if (!deckOfCards.getListCard().isEmpty())
            syncByNotificationSettings();
        syncApp();
        StateListenerFacade.getInstance().addStateListener(new StateListenerImpl());
        AppMessagingController.getAppMessagingController().addInternalEventListener("com.qualcomm.qce.androidnotifications", new DeckOfCardsEventListenerImpl());
        if (android.os.Build.VERSION.SDK_INT < 18)
        {
            Log.d("NotificationHandler", "NotificationHandler.constructor - starting deck of cards purger timer...");
            deckOfCardsPurgerTimer = new Timer("NotificationHandler.DeckOfCardsPurgerTimer", true);
            deckOfCardsPurgerTimer.schedule(new DeckOfCardsPurgerTask(), 0L, 0x36ee80L);
        }
        Log.d("NotificationHandler", "NotificationHandler.constructor - done");
    }

    private void debug(InternalNotifyTextCard internalnotifytextcard, String s, String s1, String as[])
    {
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - notifyCard.getTitleText().equals(titleText): ").append(internalnotifytextcard.getTitleText().equals(s)).toString());
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - notifyCard.getInfoText().equals(infoText): ").append(internalnotifytextcard.getInfoText().equals(s1)).toString());
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - Arrays.equals(notifyCard.getMessageText(), messageText): ").append(Arrays.equals(internalnotifytextcard.getMessageText(), as)).toString());
        if (!Arrays.equals(internalnotifytextcard.getMessageText(), as))
        {
            String as1[] = internalnotifytextcard.getMessageText();
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - cardMessageText: ").append(as1).toString());
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - messageText: ").append(as).toString());
            if (as1 != null && as != null)
            {
                Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - cardMessageText.length: ").append(as1.length).toString());
                Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - messageText.length: ").append(as.length).toString());
                if (as1.length == as.length)
                {
                    for (int i = 0; i < as1.length; i++)
                        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.debug - [").append(i).append("] - |").append(as1[i]).append("| == |").append(as[i]).append("| = ").append(as1[i].equals(as[i])).toString());

                }
            }
        }
    }

    public static NotificationHandler getInstance()
    {
        if (inst != null) goto _L2; else goto _L1
_L1:
        com/qualcomm/toq/smartwatch/notification/NotificationHandler;
        JVM INSTR monitorenter ;
        if (inst == null)
            inst = new NotificationHandler();
        com/qualcomm/toq/smartwatch/notification/NotificationHandler;
        JVM INSTR monitorexit ;
_L2:
        return inst;
        Exception exception;
        exception;
        com/qualcomm/toq/smartwatch/notification/NotificationHandler;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private InternalDeckOfCards getStoredDeckOfCards()
        throws Exception
    {
        String s = sharedPrefs.getString("notification_deck_of_cards_key", null);
        if (s == null)
            return null;
        else
            return (InternalDeckOfCards)ParcelableUtil.unmarshall(s, InternalDeckOfCards.CREATOR);
    }

    private HashMap getStoredNotificationSettings()
        throws IOException, ClassNotFoundException
    {
        String s = sharedPrefs.getString("notification_settings_key", null);
        if (s == null)
            return null;
        else
            return (HashMap)ObjectSerializer.deserialize(s);
    }

    private void handleAndroidNotification(NotificationUtils.PHubNotification phubnotification)
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handleAndroidNotification - phubNotification: ").append(phubnotification).toString());
        NotificationUtils.parseNotification(phubnotification);
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handleAndroidNotification - populated phubNotification: ").append(phubnotification).toString());
        if (!TextUtils.isEmpty(phubnotification.title) || !phubnotification.message.isEmpty()) goto _L2; else goto _L1
_L1:
        Log.w("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handleAndroidNotification - could not retrieve any usable text, aborting: ").append(phubnotification).toString());
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s = "(unknown)";
        android.content.pm.ApplicationInfo applicationinfo = packageManager.getApplicationInfo(phubnotification.packageName, 0);
        if (applicationinfo == null)
            break MISSING_BLOCK_LABEL_144;
        Exception exception;
        Exception exception1;
        try
        {
            s = (String)packageManager.getApplicationLabel(applicationinfo);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        phubnotification.appName = s;
        handlePhubNotification(phubnotification);
          goto _L3
        exception1;
        Log.e("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handleAndroidNotification - an error occurred processing the Android notification: ").append(phubnotification.notification).toString(), exception1);
          goto _L3
        exception;
        throw exception;
    }

    private void handlePhubNotification(NotificationUtils.PHubNotification phubnotification)
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        String s1;
        long l;
        String s2;
        String s3;
        String as[];
        boolean flag;
        InternalListCard internallistcard;
        InternalNotifyTextCard internalnotifytextcard;
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handlePhubNotification - phubNotification: ").append(phubnotification).toString());
        s = phubnotification.packageName;
        s1 = phubnotification.appName;
        l = System.currentTimeMillis();
        s2 = phubnotification.title;
        s3 = phubnotification.info;
        as = (String[])phubnotification.message.toArray(new String[phubnotification.message.size()]);
        flag = phubnotification.isOngoing;
        internallistcard = (InternalListCard)deckOfCards.getListCard();
        internalnotifytextcard = (InternalNotifyTextCard)internallistcard.get(s);
        if (internalnotifytextcard != null) goto _L2; else goto _L1
_L1:
        internalnotifytextcard = InternalNotifyTextCard.getNotificationHandlerInstance(s, s1, l, s2, as, s3, flag);
        if (!EMAIL_APP_PACKAGES.contains(s)) goto _L4; else goto _L3
_L3:
        if (android.os.Build.VERSION.SDK_INT < 18) goto _L6; else goto _L5
_L5:
        internalnotifytextcard.setShowDivider(false);
_L7:
        boolean flag1 = false;
        if (internallistcard.size() >= 20)
        {
            InternalNotifyTextCard internalnotifytextcard1 = (InternalNotifyTextCard)internallistcard.remove(-1 + internallistcard.size());
            Log.w("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handlePhubNotification - card number limit reached, purging last card, purgeNotifyCard: ").append(internalnotifytextcard1).toString());
        }
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handlePhubNotification - creating new notifyCard: ").append(internalnotifytextcard).toString());
_L8:
        if (!flag1)
            break MISSING_BLOCK_LABEL_542;
        Log.w("NotificationHandler", "NotificationHandler.handlePhubNotification - repeated notification, do nothing");
_L17:
        this;
        JVM INSTR monitorexit ;
        return;
_L6:
        internalnotifytextcard.setShowDivider(false);
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L4:
        internalnotifytextcard.setShowDivider(true);
          goto _L7
_L2:
        if (!internalnotifytextcard.getTitleText().equals(s2) || !internalnotifytextcard.getInfoText().equals(s3) || !Arrays.equals(internalnotifytextcard.getMessageText(), as))
            break MISSING_BLOCK_LABEL_358;
        internalnotifytextcard.setTimeMillis(l);
        flag1 = true;
        Log.w("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handlePhubNotification - repeated notification, no change to notifyCard: ").append(internalnotifytextcard).toString());
          goto _L8
        debug(internalnotifytextcard, s2, s3, as);
        internallistcard.remove(internalnotifytextcard);
        internalnotifytextcard.setTimeMillis(l);
        internalnotifytextcard.setTitleText(s2);
        internalnotifytextcard.setInfoText(s3);
        internalnotifytextcard.setReceivingEvents(flag);
        internalnotifytextcard.setMessageText(as);
        if (!flag) goto _L10; else goto _L9
_L9:
        internalnotifytextcard.setVibeAlert(false);
_L15:
        int i;
        if (!EMAIL_APP_PACKAGES.contains(s))
            break MISSING_BLOCK_LABEL_533;
        i = android.os.Build.VERSION.SDK_INT;
        if (i < 18) goto _L12; else goto _L11
_L11:
        if (Integer.parseInt(s3) < 2) goto _L14; else goto _L13
_L13:
        internalnotifytextcard.setShowDivider(true);
_L16:
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handlePhubNotification - updating existing notifyCard: ").append(internalnotifytextcard).toString());
        flag1 = false;
          goto _L8
_L10:
        internalnotifytextcard.setVibeAlert(true);
          goto _L15
_L14:
        internalnotifytextcard.setShowDivider(false);
          goto _L16
        NumberFormatException numberformatexception;
        numberformatexception;
        internalnotifytextcard.setShowDivider(false);
          goto _L16
_L12:
        internalnotifytextcard.setShowDivider(false);
          goto _L16
        internalnotifytextcard.setShowDivider(true);
          goto _L16
        internalnotifytextcard.setIconURI(localDeckOfCardsManager.sendIcon("com.qualcomm.qce.androidnotifications", s));
        internallistcard.add(0, internalnotifytextcard);
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.handlePhubNotification - end of processing, deckOfCards: ").append(deckOfCards).toString());
        storeAndPush();
        AppMessagingController.getAppMessagingController().showNotificationPopup("com.qualcomm.qce.androidnotifications", "Notifications", internalnotifytextcard);
        Log.printUsageLog("NotificationHandler", (new StringBuilder()).append("Created/updated notification popup and card for ").append(s).toString());
          goto _L17
    }

    private void initDeckOfCards()
    {
        Log.d("NotificationHandler", "NotificationHandler.initDeckOfCards");
        InternalDeckOfCards internaldeckofcards;
        internaldeckofcards = getStoredDeckOfCards();
        deckOfCards = internaldeckofcards;
        if (internaldeckofcards != null)
            break MISSING_BLOCK_LABEL_48;
        deckOfCards = new InternalDeckOfCards("com.qualcomm.qce.androidnotifications", "Notifications", "androidnotifications_app.zip", false);
        storeDeckOfCards(deckOfCards);
        deckOfCards.toString();
_L1:
        if (deckOfCards == null)
        {
            Log.w("NotificationHandler", "NotificationHandler.initDeckOfCards - creating new deck of cards");
            deckOfCards = new InternalDeckOfCards("com.qualcomm.qce.androidnotifications", "Notifications", "androidnotifications_app.zip", false);
            Throwable throwable;
            try
            {
                storeDeckOfCards(deckOfCards);
            }
            catch (Exception exception)
            {
                Log.e("NotificationHandler", "NotificationHandler.initDeckOfCards - an error occurred storing the new deck of cards", exception);
            }
        }
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.initDeckOfCards - deckOfCards: ").append(deckOfCards).toString());
        return;
        throwable;
        Log.w("NotificationHandler", (new StringBuilder()).append("NotificationHandler.initDeckOfCards - error occurred retrieving the stored deck of cards: ").append(throwable.getMessage()).toString());
        deckOfCards = null;
          goto _L1
    }

    private void initNotificationSettings()
    {
        Log.d("NotificationHandler", "NotificationHandler.initNotificationSettings");
        HashMap hashmap;
        hashmap = getStoredNotificationSettings();
        notificationSettingsMap = hashmap;
        if (hashmap == null)
            try
            {
                notificationSettingsMap = new HashMap();
            }
            catch (Exception exception)
            {
                Log.e("NotificationHandler", "NotificationHandler.initNotificationSettings - an error occurred creating notification settings map", exception);
            }
        if (notificationSettingsMap == null)
            notificationSettingsMap = new HashMap();
        notificationSettingsChangeListener = new NotificationSettingsChangeListener();
        sharedPrefs.registerOnSharedPreferenceChangeListener(notificationSettingsChangeListener);
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.initNotificationSettings - notificationSettingsMap: ").append(notificationSettingsMap).toString());
        return;
    }

    private void purgeAll()
    {
        this;
        JVM INSTR monitorenter ;
        deckOfCards.getListCard().clear();
        storeAndPush();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void purgeByTime()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = false;
        long l;
        Iterator iterator;
        l = System.currentTimeMillis() - 0xa4cb800L;
        iterator = deckOfCards.getListCard().iterator();
_L1:
        InternalNotifyTextCard internalnotifytextcard;
        do
        {
            if (!iterator.hasNext())
                break MISSING_BLOCK_LABEL_94;
            internalnotifytextcard = (InternalNotifyTextCard)iterator.next();
        } while (internalnotifytextcard.getTimeMillis() >= l);
        Log.w("NotificationHandler", (new StringBuilder()).append("NotificationHandler.purgeByTime - purging notify card which has expired, notifyCard: ").append(internalnotifytextcard).toString());
        iterator.remove();
        flag = true;
          goto _L1
        if (!flag)
            break MISSING_BLOCK_LABEL_102;
        storeAndPush();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void storeAndPush()
    {
        this;
        JVM INSTR monitorenter ;
        storeDeckOfCards(deckOfCards);
_L3:
        if (localDeckOfCardsManager.isInstalled(deckOfCards.getId())) goto _L2; else goto _L1
_L1:
        localDeckOfCardsManager.installInternalDeckOfCards(deckOfCards);
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        Log.e("NotificationHandler", "NotificationHandler.storeAndPush - an error occurred storing the deck of cards map", exception1);
          goto _L3
        Exception exception;
        exception;
        throw exception;
_L2:
        localDeckOfCardsManager.updateInternalDeckOfCards(deckOfCards);
          goto _L4
        DeckOfCardsException deckofcardsexception;
        deckofcardsexception;
        Log.e("NotificationHandler", "NotificationHandler.storeAndPush - an error occurred installing/updating the deck of cards on the WD", deckofcardsexception);
          goto _L4
    }

    private void storeDeckOfCards(InternalDeckOfCards internaldeckofcards)
        throws Exception
    {
        android.content.SharedPreferences.Editor editor = sharedPrefs.edit();
        editor.putString("notification_deck_of_cards_key", ParcelableUtil.marshall(internaldeckofcards));
        editor.commit();
    }

    private boolean syncByCurrentNotifications(String as[])
    {
        this;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder = (new StringBuilder()).append("NotificationHandler.syncByCurrentNotifications - currentPackageNames: ");
        if (as == null)
            break MISSING_BLOCK_LABEL_157;
        Object obj = Arrays.asList(as);
_L2:
        Log.d("NotificationHandler", stringbuilder.append(obj).toString());
        boolean flag;
        flag = false;
        if (as == null)
            break MISSING_BLOCK_LABEL_165;
        List list;
        Iterator iterator;
        list = Arrays.asList(as);
        iterator = deckOfCards.getListCard().iterator();
_L1:
        InternalNotifyTextCard internalnotifytextcard;
        String s;
        do
        {
            if (!iterator.hasNext())
                break MISSING_BLOCK_LABEL_165;
            internalnotifytextcard = (InternalNotifyTextCard)iterator.next();
            s = internalnotifytextcard.getId();
        } while (list.contains(s));
        Log.w("NotificationHandler", (new StringBuilder()).append("NotificationHandler.syncByCurrentNotifications - existing notify card not in current notification list, removing: ").append(s).toString());
        iterator.remove();
        AppMessagingController.getAppMessagingController().dismissNotificationPopup("com.qualcomm.qce.androidnotifications", "Notifications", internalnotifytextcard);
        flag = true;
          goto _L1
        obj = "null";
          goto _L2
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean syncByNotificationSettings()
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("NotificationHandler", "NotificationHandler.syncByNotificationSettings");
        boolean flag = false;
        Iterator iterator = deckOfCards.getListCard().iterator();
_L1:
        InternalNotifyTextCard internalnotifytextcard;
        String s;
        do
        {
            if (!iterator.hasNext())
                break MISSING_BLOCK_LABEL_129;
            internalnotifytextcard = (InternalNotifyTextCard)iterator.next();
            s = internalnotifytextcard.getId();
        } while (notificationSettingsMap.containsKey(s) && ((Boolean)notificationSettingsMap.get(s)).booleanValue());
        Log.w("NotificationHandler", (new StringBuilder()).append("NotificationHandler.syncByNotificationSettings - existing notify card not enabled in notification settings, removing: ").append(s).toString());
        iterator.remove();
        AppMessagingController.getAppMessagingController().dismissNotificationPopup("com.qualcomm.qce.androidnotifications", "Notifications", internalnotifytextcard);
        flag = true;
          goto _L1
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public void onAndroidNotificationPosted(String s, String s1, Notification notification, String as[])
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationPosted - ** packageName: ").append(s).append(", defaultText: ").append(s1).append(", notification: ").append(notification).toString());
        if (notificationSettingsMap.containsKey(s)) goto _L2; else goto _L1
_L1:
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationPosted - dropping notification, app not in list of handled apps, package: ").append(s).append(", msg: ").append(notification.tickerText).toString());
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (((Boolean)notificationSettingsMap.get(s)).booleanValue())
            break MISSING_BLOCK_LABEL_164;
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationPosted - dropping notification, app not enabled in settings, package: ").append(s).append(", msg: ").append(notification.tickerText).toString());
          goto _L3
        Exception exception;
        exception;
        throw exception;
        boolean flag;
        NotificationUtils.PHubNotification phubnotification;
        InternalNotifyTextCard internalnotifytextcard;
        if ((2 & notification.flags) != 0)
            flag = true;
        else
            flag = false;
        phubnotification = new NotificationUtils.PHubNotification(s, s1, notification);
        phubnotification.isOngoing = flag;
        if (!flag) goto _L5; else goto _L4
_L4:
        internalnotifytextcard = (InternalNotifyTextCard)deckOfCards.getListCard().get(s);
        if (internalnotifytextcard != null) goto _L7; else goto _L6
_L6:
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationPosted - ongoing notification - no card in the current deck, package: ").append(s).append(", msg: ").append(notification.tickerText).toString());
_L5:
        syncByCurrentNotifications(as);
        handleAndroidNotification(phubnotification);
          goto _L3
_L7:
label0:
        {
            if (currentVisibleCardId == null || !currentVisibleCardId.equals(s))
                break label0;
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationPosted - ongoing notification - current card visible, package: ").append(s).append(", msg: ").append(notification.tickerText).toString());
        }
          goto _L5
label1:
        {
            if (internalnotifytextcard.isReceivingEvents())
                break label1;
            Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationPosted - ongoing notification - card in the current deck but not ongoing, package: ").append(s).append(", msg: ").append(notification.tickerText).toString());
        }
          goto _L5
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationPosted - ongoing notification - caching notification, current ongoing card NOT visible, package: ").append(s).append(", ").append("msg: ").append(notification.tickerText).toString());
        cachedNotificationsMap.put(s, phubnotification);
        internalnotifytextcard.setTimeMillis(System.currentTimeMillis());
          goto _L3
    }

    public void onAndroidNotificationRemoved(String s, Notification notification, String as[])
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationRemoved - ** packageName: ").append(s).append(", notification: ").append(notification).toString());
        if (syncByCurrentNotifications(as))
            storeAndPush();
        Log.d("NotificationHandler", (new StringBuilder()).append("NotificationHandler.onAndroidNotificationRemoved - end of processing, deckOfCards: ").append(deckOfCards).toString());
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void syncApp()
    {
        this;
        JVM INSTR monitorenter ;
        Log.d("NotificationHandler", "NotificationHandler.syncApp");
        if (localDeckOfCardsManager.isInstalled(deckOfCards.getId())) goto _L2; else goto _L1
_L1:
        localDeckOfCardsManager.installInternalDeckOfCards(deckOfCards);
_L3:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        localDeckOfCardsManager.updateInternalDeckOfCards(deckOfCards);
          goto _L3
        Exception exception1;
        exception1;
        Log.e("NotificationHandler", "NotificationHandler.syncApp - an error occurred installing/updating the deck of cards", exception1);
          goto _L3
        Exception exception;
        exception;
        throw exception;
    }






/*
    static String access$402(NotificationHandler notificationhandler, String s)
    {
        notificationhandler.currentVisibleCardId = s;
        return s;
    }

*/






/*
    static HashMap access$802(NotificationHandler notificationhandler, HashMap hashmap)
    {
        notificationhandler.notificationSettingsMap = hashmap;
        return hashmap;
    }

*/

}
