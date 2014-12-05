.class public Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
.super Ljava/lang/Object;
.source "NotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;,
        Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsPurgerTask;,
        Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;,
        Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$StateListenerImpl;,
        Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;
    }
.end annotation


# static fields
.field private static final APPLY_EMAIL_PROCESSING:Z = true

.field private static final APP_NAME:Ljava/lang/String; = "Notifications"

.field private static final APP_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qce.androidnotifications"

.field private static final APP_ZIP_FILE:Ljava/lang/String; = "androidnotifications_app.zip"

.field private static final DECK_OF_CARDS_PURGE_PERIOD:I = 0x36ee80

.field private static final EMAIL_APP_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final GMAIL_EMAIL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gm"

.field private static final MAX_CARDS_IN_A_DECK:I = 0x14

.field private static final MOTO_EMAIL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.motorola.motoemail"

.field private static final NATIVE_EMAIL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.email"

.field private static final NOTIFICATION_EXPIRE_MILLIS:I = 0xa4cb800

.field private static final PROCESS_ONGOING_NOTIFICATIONS:Z = true

.field public static final TAG:Ljava/lang/String; = "NotificationHandler"

.field private static inst:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;


# instance fields
.field private cachedNotificationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private currentVisibleCardId:Ljava/lang/String;

.field private deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

.field private deckOfCardsPurgerTimer:Ljava/util/Timer;

.field private localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

.field private notificationSettingsChangeListener:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;

.field private notificationSettingsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private packageManager:Landroid/content/pm/PackageManager;

.field private sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 62
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.android.email"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "com.google.android.gm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.motorola.motoemail"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->EMAIL_APP_PACKAGES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->context:Landroid/content/Context;

    .line 109
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->packageManager:Landroid/content/pm/PackageManager;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->cachedNotificationsMap:Ljava/util/Map;

    .line 115
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->context:Landroid/content/Context;

    const-string v1, "notification_settings_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 125
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->initDeckOfCards()V

    .line 128
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->initNotificationSettings()V

    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->syncByNotificationSettings()Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->syncApp()V

    .line 142
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$StateListenerImpl;

    invoke-direct {v1, p0, v3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$StateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->addStateListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;)V

    .line 145
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v0

    const-string v1, "com.qualcomm.qce.androidnotifications"

    new-instance v2, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->addInternalEventListener(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;)V

    .line 149
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    .line 151
    const-string v0, "NotificationHandler"

    const-string v1, "NotificationHandler.constructor - starting deck of cards purger timer..."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/util/Timer;

    const-string v1, "NotificationHandler.DeckOfCardsPurgerTimer"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCardsPurgerTimer:Ljava/util/Timer;

    .line 155
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCardsPurgerTimer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsPurgerTask;

    invoke-direct {v1, p0, v3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsPurgerTask;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 158
    :cond_1
    const-string v0, "NotificationHandler"

    const-string v1, "NotificationHandler.constructor - done"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void

    .line 117
    :catch_0
    move-exception v6

    .line 118
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "NotificationHandler"

    const-string v1, "NotificationHandler.constructor - an error occurred getting reference to the local deck of cards manager"

    invoke-static {v0, v1, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->syncByNotificationSettings()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeAndPush()V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->purgeByTime()V

    return-void
.end method

.method static synthetic access$402(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->currentVisibleCardId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->cachedNotificationsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->handleAndroidNotification(Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V

    return-void
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->purgeAll()V

    return-void
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$802(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->getStoredNotificationSettings()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private debug(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "notifyCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .param p2, "titleText"    # Ljava/lang/String;
    .param p3, "infoText"    # Ljava/lang/String;
    .param p4, "messageText"    # [Ljava/lang/String;

    .prologue
    .line 549
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - notifyCard.getTitleText().equals(titleText): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getTitleText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - notifyCard.getInfoText().equals(infoText): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getInfoText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - Arrays.equals(notifyCard.getMessageText(), messageText): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "cardMessageText":[Ljava/lang/String;
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - cardMessageText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - messageText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    .line 562
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - cardMessageText.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - messageText.length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    array-length v2, v0

    array-length v3, p4

    if-ne v2, v3, :cond_0

    .line 567
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 569
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.debug - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] - |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| == |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "| = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    aget-object v5, p4, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v0    # "cardMessageText":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->inst:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    if-nez v0, :cond_1

    .line 171
    const-class v1, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    monitor-enter v1

    .line 173
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->inst:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->inst:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    .line 177
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->inst:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    return-object v0

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStoredDeckOfCards()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 753
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "notification_deck_of_cards_key"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "deckOfCardsStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 761
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/ParcelableUtil;->unmarshall(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    goto :goto_0
.end method

.method private getStoredNotificationSettings()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 736
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "notification_settings_key"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 740
    .local v0, "notificationSettingsStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 744
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    goto :goto_0
.end method

.method private declared-synchronized handleAndroidNotification(Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V
    .locals 7
    .param p1, "phubNotification"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;

    .prologue
    .line 338
    monitor-enter p0

    :try_start_0
    const-string v4, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationHandler.handleAndroidNotification - phubNotification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :try_start_1
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils;->parseNotification(Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V

    .line 345
    const-string v4, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationHandler.handleAndroidNotification - populated phubNotification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v4, p1, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->title:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->message:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 349
    const-string v4, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationHandler.handleAndroidNotification - could not retrieve any usable text, aborting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    :goto_0
    monitor-exit p0

    return-void

    .line 354
    :cond_0
    :try_start_2
    const-string v2, "(unknown)"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    .local v2, "appName":Ljava/lang/String;
    :try_start_3
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 359
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_1

    .line 360
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v2, v0
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_1
    :try_start_4
    iput-object v2, p1, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->appName:Ljava/lang/String;

    .line 369
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->handlePhubNotification(Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 372
    .end local v2    # "appName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 373
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v4, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationHandler.handleAndroidNotification - an error occurred processing the Android notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 338
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 363
    .restart local v2    # "appName":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private declared-synchronized handlePhubNotification(Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V
    .locals 20
    .param p1, "phubNotification"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    const-string v17, "NotificationHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotificationHandler.handlePhubNotification - phubNotification: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->packageName:Ljava/lang/String;

    .line 385
    .local v3, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->appName:Ljava/lang/String;

    .line 386
    .local v4, "appName":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 387
    .local v5, "timeMillis":J
    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->title:Ljava/lang/String;

    .line 388
    .local v7, "titleText":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->info:Ljava/lang/String;

    .line 389
    .local v9, "infoText":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->message:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->message:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    .line 390
    .local v8, "messageText":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget-boolean v10, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->isOngoing:Z

    .line 392
    .local v10, "isOngoing":Z
    const/4 v12, 0x0

    .line 395
    .local v12, "isRepeatedNotification":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v13

    check-cast v13, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;

    .line 396
    .local v13, "listCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;
    invoke-virtual {v13, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;->get(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    move-result-object v14

    check-cast v14, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .line 399
    .local v14, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    if-nez v14, :cond_3

    .line 402
    invoke-static/range {v3 .. v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getNotificationHandlerInstance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-result-object v14

    .line 405
    sget-object v17, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->EMAIL_APP_PACKAGES:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 408
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 409
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    .line 422
    :goto_0
    const/4 v12, 0x0

    .line 425
    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;->size()I

    move-result v17

    const/16 v18, 0x14

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    .line 428
    invoke-virtual {v13}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;->remove(I)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    move-result-object v15

    check-cast v15, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .line 430
    .local v15, "purgeNotifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    const-string v17, "NotificationHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotificationHandler.handlePhubNotification - card number limit reached, purging last card, purgeNotifyCard: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v15    # "purgeNotifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :cond_0
    const-string v17, "NotificationHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotificationHandler.handlePhubNotification - creating new notifyCard: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    :goto_1
    if-eqz v12, :cond_9

    .line 521
    const-string v17, "NotificationHandler"

    const-string v18, "NotificationHandler.handlePhubNotification - repeated notification, do nothing"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 543
    :goto_2
    monitor-exit p0

    return-void

    .line 413
    :cond_1
    const/16 v17, 0x0

    :try_start_1
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "appName":Ljava/lang/String;
    .end local v5    # "timeMillis":J
    .end local v7    # "titleText":Ljava/lang/String;
    .end local v8    # "messageText":[Ljava/lang/String;
    .end local v9    # "infoText":Ljava/lang/String;
    .end local v10    # "isOngoing":Z
    .end local v12    # "isRepeatedNotification":Z
    .end local v13    # "listCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;
    .end local v14    # "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :catchall_0
    move-exception v17

    monitor-exit p0

    throw v17

    .line 419
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "appName":Ljava/lang/String;
    .restart local v5    # "timeMillis":J
    .restart local v7    # "titleText":Ljava/lang/String;
    .restart local v8    # "messageText":[Ljava/lang/String;
    .restart local v9    # "infoText":Ljava/lang/String;
    .restart local v10    # "isOngoing":Z
    .restart local v12    # "isRepeatedNotification":Z
    .restart local v13    # "listCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;
    .restart local v14    # "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :cond_2
    const/16 v17, 0x1

    :try_start_2
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    goto :goto_0

    .line 440
    :cond_3
    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getTitleText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getInfoText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 443
    invoke-virtual {v14, v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setTimeMillis(J)V

    .line 445
    const/4 v12, 0x1

    .line 447
    const-string v17, "NotificationHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotificationHandler.handlePhubNotification - repeated notification, no change to notifyCard: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 454
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7, v9, v8}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->debug(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 457
    invoke-virtual {v13, v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;->remove(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)Z

    .line 460
    invoke-virtual {v14, v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setTimeMillis(J)V

    .line 461
    invoke-virtual {v14, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setTitleText(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v14, v9}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setInfoText(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v14, v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setReceivingEvents(Z)V

    .line 464
    invoke-virtual {v14, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setMessageText([Ljava/lang/String;)V

    .line 467
    if-eqz v10, :cond_5

    .line 468
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V

    .line 475
    :goto_3
    sget-object v17, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->EMAIL_APP_PACKAGES:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 478
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 482
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 485
    .local v16, "unreadCount":I
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_6

    .line 486
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 511
    .end local v16    # "unreadCount":I
    :goto_4
    const/4 v12, 0x0

    .line 513
    :try_start_4
    const-string v17, "NotificationHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotificationHandler.handlePhubNotification - updating existing notifyCard: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 471
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 490
    .restart local v16    # "unreadCount":I
    :cond_6
    const/16 v17, 0x0

    :try_start_5
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 494
    .end local v16    # "unreadCount":I
    :catch_0
    move-exception v11

    .line 496
    .local v11, "e":Ljava/lang/NumberFormatException;
    const/16 v17, 0x0

    :try_start_6
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    goto :goto_4

    .line 502
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    goto :goto_4

    .line 508
    :cond_8
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    goto :goto_4

    .line 527
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-object/from16 v17, v0

    const-string v18, "com.qualcomm.qce.androidnotifications"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->sendIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setIconURI(Ljava/lang/String;)V

    .line 530
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;->add(ILcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)V

    .line 532
    const-string v17, "NotificationHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NotificationHandler.handlePhubNotification - end of processing, deckOfCards: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeAndPush()V

    .line 538
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v17

    const-string v18, "com.qualcomm.qce.androidnotifications"

    const-string v19, "Notifications"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v14}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->showNotificationPopup(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)V

    .line 540
    const-string v17, "NotificationHandler"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Created/updated notification popup and card for "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method private initDeckOfCards()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 585
    const-string v2, "NotificationHandler"

    const-string v3, "NotificationHandler.initDeckOfCards"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->getStoredDeckOfCards()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    if-nez v2, :cond_0

    .line 592
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    const-string v3, "com.qualcomm.qce.androidnotifications"

    const-string v4, "Notifications"

    const-string v5, "androidnotifications_app.zip"

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    .line 593
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V

    .line 596
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    if-nez v2, :cond_1

    .line 607
    const-string v2, "NotificationHandler"

    const-string v3, "NotificationHandler.initDeckOfCards - creating new deck of cards"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    const-string v3, "com.qualcomm.qce.androidnotifications"

    const-string v4, "Notifications"

    const-string v5, "androidnotifications_app.zip"

    invoke-direct {v2, v3, v4, v5, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    .line 612
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 620
    :cond_1
    :goto_1
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.initDeckOfCards - deckOfCards: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void

    .line 599
    :catch_0
    move-exception v1

    .line 600
    .local v1, "th":Ljava/lang/Throwable;
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.initDeckOfCards - error occurred retrieving the stored deck of cards: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    goto :goto_0

    .line 614
    .end local v1    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 615
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationHandler"

    const-string v3, "NotificationHandler.initDeckOfCards - an error occurred storing the new deck of cards"

    invoke-static {v2, v3, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private initNotificationSettings()V
    .locals 4

    .prologue
    .line 627
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.initNotificationSettings"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->getStoredNotificationSettings()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 634
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 644
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    .line 648
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsChangeListener:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;

    .line 649
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->sharedPrefs:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsChangeListener:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 651
    const-string v1, "NotificationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationHandler.initNotificationSettings - notificationSettingsMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    return-void

    .line 638
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.initNotificationSettings - an error occurred creating notification settings map"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized purgeAll()V
    .locals 1

    .prologue
    .line 784
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->clear()V

    .line 787
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeAndPush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    monitor-exit p0

    return-void

    .line 784
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized purgeByTime()V
    .locals 9

    .prologue
    .line 796
    monitor-enter p0

    const/4 v0, 0x0

    .line 798
    .local v0, "isChanged":Z
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v7, 0xa4cb800

    sub-long v2, v5, v7

    .line 800
    .local v2, "minTimeMillis":J
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 802
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .line 805
    .local v4, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getTimeMillis()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-gez v5, :cond_0

    .line 807
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotificationHandler.purgeByTime - purging notify card which has expired, notifyCard: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 813
    const/4 v0, 0x1

    goto :goto_0

    .line 819
    .end local v4    # "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :cond_1
    if-eqz v0, :cond_2

    .line 820
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeAndPush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    :cond_2
    monitor-exit p0

    return-void

    .line 796
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    .end local v2    # "minTimeMillis":J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized storeAndPush()V
    .locals 3

    .prologue
    .line 831
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 842
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 853
    :goto_1
    monitor-exit p0

    return-void

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.storeAndPush - an error occurred storing the deck of cards map"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 845
    :cond_0
    :try_start_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->updateInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V
    :try_end_3
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 849
    :catch_1
    move-exception v0

    .line 850
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :try_start_4
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.storeAndPush - an error occurred installing/updating the deck of cards on the WD"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method private storeDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V
    .locals 3
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 772
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 773
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "notification_deck_of_cards_key"

    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/ParcelableUtil;->marshall(Landroid/os/Parcelable;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 774
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 775
    return-void
.end method

.method private declared-synchronized syncByCurrentNotifications([Ljava/lang/String;)Z
    .locals 8
    .param p1, "currentPackageNames"    # [Ljava/lang/String;

    .prologue
    .line 658
    monitor-enter p0

    :try_start_0
    const-string v6, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotificationHandler.syncByCurrentNotifications - currentPackageNames: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_0
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    const/4 v1, 0x0

    .line 663
    .local v1, "isChanged":Z
    if-eqz p1, :cond_2

    .line 665
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 667
    .local v0, "currentPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 669
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .line 671
    .local v3, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getId()Ljava/lang/String;

    move-result-object v4

    .line 675
    .local v4, "notifyCardPackageName":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 677
    const-string v5, "NotificationHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NotificationHandler.syncByCurrentNotifications - existing notify card not in current notification list, removing: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 683
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v5

    const-string v6, "com.qualcomm.qce.androidnotifications"

    const-string v7, "Notifications"

    invoke-virtual {v5, v6, v7, v3}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->dismissNotificationPopup(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)V

    .line 686
    const/4 v1, 0x1

    goto :goto_1

    .line 658
    .end local v0    # "currentPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "isChanged":Z
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    .end local v3    # "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .end local v4    # "notifyCardPackageName":Ljava/lang/String;
    :cond_1
    const-string v5, "null"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 693
    .restart local v1    # "isChanged":Z
    :cond_2
    monitor-exit p0

    return v1

    .line 658
    .end local v1    # "isChanged":Z
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method private declared-synchronized syncByNotificationSettings()Z
    .locals 7

    .prologue
    .line 700
    monitor-enter p0

    :try_start_0
    const-string v4, "NotificationHandler"

    const-string v5, "NotificationHandler.syncByNotificationSettings"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x0

    .line 704
    .local v0, "isChanged":Z
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .line 708
    .local v2, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getId()Ljava/lang/String;

    move-result-object v3

    .line 712
    .local v3, "notifyCardPackageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    .line 714
    :cond_1
    const-string v4, "NotificationHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NotificationHandler.syncByNotificationSettings - existing notify card not enabled in notification settings, removing: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 720
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v4

    const-string v5, "com.qualcomm.qce.androidnotifications"

    const-string v6, "Notifications"

    invoke-virtual {v4, v5, v6, v2}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->dismissNotificationPopup(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    const/4 v0, 0x1

    goto :goto_0

    .line 728
    .end local v2    # "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .end local v3    # "notifyCardPackageName":Ljava/lang/String;
    :cond_2
    monitor-exit p0

    return v0

    .line 700
    .end local v0    # "isChanged":Z
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public declared-synchronized onAndroidNotificationPosted(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;[Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "defaultText"    # Ljava/lang/String;
    .param p3, "notification"    # Landroid/app/Notification;
    .param p4, "currentPackageNames"    # [Ljava/lang/String;

    .prologue
    .line 224
    monitor-enter p0

    :try_start_0
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationHandler.onAndroidNotificationPosted - ** packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", defaultText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 231
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationHandler.onAndroidNotificationPosted - dropping notification, app not in list of handled apps, package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    .line 237
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationHandler.onAndroidNotificationPosted - dropping notification, app not enabled in settings, package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 242
    :cond_1
    :try_start_2
    iget v3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .line 245
    .local v0, "isOngoing":Z
    :goto_1
    new-instance v2, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;

    invoke-direct {v2, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/app/Notification;)V

    .line 246
    .local v2, "phubNotification":Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;
    iput-boolean v0, v2, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;->isOngoing:Z

    .line 249
    if-eqz v0, :cond_2

    .line 254
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->get(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .line 257
    .local v1, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    if-nez v1, :cond_4

    .line 258
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationHandler.onAndroidNotificationPosted - ongoing notification - no card in the current deck, package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v1    # "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :cond_2
    :goto_2
    invoke-direct {p0, p4}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->syncByCurrentNotifications([Ljava/lang/String;)Z

    .line 301
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->handleAndroidNotification(Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V

    goto :goto_0

    .line 242
    .end local v0    # "isOngoing":Z
    .end local v2    # "phubNotification":Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 264
    .restart local v0    # "isOngoing":Z
    .restart local v1    # "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .restart local v2    # "phubNotification":Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->currentVisibleCardId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->currentVisibleCardId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 265
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationHandler.onAndroidNotificationPosted - ongoing notification - current card visible, package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 268
    :cond_5
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->isReceivingEvents()Z

    move-result v3

    if-nez v3, :cond_6

    .line 269
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationHandler.onAndroidNotificationPosted - ongoing notification - card in the current deck but not ongoing, package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :cond_6
    const-string v3, "NotificationHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotificationHandler.onAndroidNotificationPosted - ongoing notification - caching notification, current ongoing card NOT visible, package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->cachedNotificationsMap:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setTimeMillis(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized onAndroidNotificationRemoved(Ljava/lang/String;Landroid/app/Notification;[Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "notification"    # Landroid/app/Notification;
    .param p3, "currentPackageNames"    # [Ljava/lang/String;

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    const-string v1, "NotificationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationHandler.onAndroidNotificationRemoved - ** packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    invoke-direct {p0, p3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->syncByCurrentNotifications([Ljava/lang/String;)Z

    move-result v0

    .line 322
    .local v0, "isChanged":Z
    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeAndPush()V

    .line 326
    :cond_0
    const-string v1, "NotificationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationHandler.onAndroidNotificationRemoved - end of processing, deckOfCards: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 314
    .end local v0    # "isChanged":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized syncApp()V
    .locals 3

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.syncApp"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_0
    monitor-exit p0

    return-void

    .line 203
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->updateInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v1, "NotificationHandler"

    const-string v2, "NotificationHandler.syncApp - an error occurred installing/updating the deck of cards"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
