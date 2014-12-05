.class public Lcom/qualcomm/toq/smartwatch/service/PHubService;
.super Lcom/qualcomm/toq/base/service/PHubBaseService;
.source "PHubService.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/service/PHubFMS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PHubService"

.field static custom_lock:Ljava/lang/Object;

.field public static isPHubServiceRunning:Z

.field public static mInstance:Lcom/qualcomm/toq/smartwatch/service/PHubService;


# instance fields
.field private apiEndpoint:Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;

.field private calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

.field private callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

.field private contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

.field private fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

.field handler:Landroid/os/Handler;

.field private mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field private mIsNetworkProviderEnabled:Z

.field mLocationServiceReceiver:Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;

.field private mLocationUpdateHandler:Landroid/os/Handler;

.field mLocationUpdateTask:Ljava/lang/Runnable;

.field private mPHubListener:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/qualcomm/aidl/personalHub/PHubListener;",
            ">;"
        }
    .end annotation
.end field

.field private smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mInstance:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .line 123
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 297
    invoke-direct {p0}, Lcom/qualcomm/toq/base/service/PHubBaseService;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mPHubListener:Ljava/util/HashMap;

    .line 107
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    .line 108
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    .line 109
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    .line 110
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z

    .line 115
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationServiceReceiver:Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;

    .line 117
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 120
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 130
    new-instance v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;-><init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->apiEndpoint:Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;

    .line 1353
    new-instance v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;-><init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateTask:Ljava/lang/Runnable;

    .line 298
    sput-object p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mInstance:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mPHubListener:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    return-object p1
.end method

.method static synthetic access$102(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/base/factory/ConnectionFactory;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p1, "x1"    # Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/qualcomm/toq/smartwatch/service/PHubService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/qualcomm/toq/smartwatch/service/PHubService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p1, "x1"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->checkforAmbientUpgrade()V

    return-void
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    return-object v0
.end method

.method static synthetic access$602(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    return-object p1
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    return-object v0
.end method

.method static synthetic access$802(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;)Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .param p1, "x1"    # Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkforAmbientUpgrade()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1267
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1268
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "ambient__pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1271
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 1272
    const-string v3, "ambient_upgrade_prefs_key"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1277
    .local v2, "version":I
    if-ne v2, v6, :cond_1

    .line 1278
    const-string v3, "AmbientAppUpgradeUtils"

    const-string v4, " An upgrade occured for Ambient ,making required changes"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    add-int/lit8 v2, v2, 0x1

    .line 1281
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1282
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ambient_upgrade_prefs_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1283
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1285
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->deletAmbientFolders(Landroid/content/Context;)V

    .line 1287
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->updateOldVersionCity(Landroid/content/Context;)V

    .line 1310
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    .end local v2    # "version":I
    :cond_0
    :goto_0
    return-void

    .line 1290
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    .restart local v2    # "version":I
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1295
    const-string v3, "AmbientAppUpgradeUtils"

    const-string v4, " An upgrade occured for Ambient ,updating icon number for Release 1.6"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    add-int/lit8 v2, v2, 0x1

    .line 1298
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1299
    .restart local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "ambient_upgrade_prefs_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1302
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->updateSharedPreferenceForIconNumber()V

    goto :goto_0
.end method

.method private createDefaultAmbientEntry(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 1207
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isLaunchedFirstTime(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1208
    const-string v6, "ambient__pref"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1210
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1211
    .local v5, "weatherEditor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "WeatherCurrentCityUpdate"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1213
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1218
    :try_start_0
    const-string v6, "StockSymbolsBackGround"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1220
    .local v4, "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1221
    new-instance v3, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;

    invoke-direct {v3}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;-><init>()V

    .line 1222
    .local v3, "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    const-string v6, "QCOM"

    invoke-virtual {v3, v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setCompanySymbol(Ljava/lang/String;)V

    .line 1223
    const-string v6, "QUALCOMM INC COM"

    invoke-virtual {v3, v6}, Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;->setCompanyName(Ljava/lang/String;)V

    .line 1224
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1226
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "StockSymbolsBackGround"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1228
    const-string v6, "StockSymbols"

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1230
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1245
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "stockAmbientInfo":Lcom/qualcomm/toq/smartwatch/ambient/StockAmbientInfo;
    .end local v4    # "stocksAmbientInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/ambient/IAmbientInfo;>;"
    .end local v5    # "weatherEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 1233
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v5    # "weatherEditor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v0

    .line 1234
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1236
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1237
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1242
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "weatherEditor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v6, "PHubService"

    const-string v7, "Connected again.."

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .locals 2

    .prologue
    .line 302
    sget-object v1, Lcom/qualcomm/toq/smartwatch/service/PHubService;->custom_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mInstance:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    monitor-exit v1

    return-object v0

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isLaunchedFirstTime(Landroid/content/Context;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1248
    const-string v4, "first_time_connected_pref"

    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1251
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v4, "stock_update_qcom_app_launched_first"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1252
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1253
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "stock_update_qcom_app_launched_first"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1254
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1258
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private removeRecursive(Ljava/io/File;)I
    .locals 10
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 1061
    const-string v7, "PHubService"

    const-string v8, "RemoveRecursive called"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1063
    .local v1, "fileArray":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 1064
    .local v3, "isDeleted":Z
    if-eqz v1, :cond_1

    array-length v7, v1

    if-lez v7, :cond_1

    .line 1065
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 1066
    .local v5, "s":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    .local v6, "subFile":Ljava/io/File;
    const-string v7, "PHubService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File Name ->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1069
    const-string v7, "PHubService"

    const-string v8, "removeReursive 1"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    invoke-direct {p0, v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->removeRecursive(Ljava/io/File;)I

    .line 1065
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1073
    :cond_0
    const-string v7, "PHubService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeReursive 2::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v3

    .line 1075
    const-string v7, "PHubService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDeleted::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1080
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "subFile":Ljava/io/File;
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v3

    .line 1082
    if-eqz v3, :cond_2

    .line 1083
    const/4 v7, 0x0

    .line 1086
    :goto_2
    return v7

    :cond_2
    const/4 v7, -0x1

    goto :goto_2
.end method

.method private splitString(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1091
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private unRegisterContentObservers()V
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 769
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 771
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 773
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->smsContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubSMSContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 776
    :cond_0
    return-void
.end method


# virtual methods
.method public endFactoryObjects()V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->contactContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubContactContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 977
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    if-eqz v0, :cond_1

    .line 978
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->callLogContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCallLogContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 981
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    if-eqz v0, :cond_2

    .line 982
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->calendarContentObserver:Lcom/qualcomm/toq/smartwatch/utils/PhubCalendarContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 986
    :cond_2
    return-void
.end method

.method public findWDRequest()V
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    .line 289
    .local v0, "sysObj":Lcom/qualcomm/toq/smartwatch/controller/SystemController;
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendFindWDReq()V

    .line 295
    :goto_0
    return-void

    .line 293
    :cond_0
    const-string v1, "PHubService"

    const-string v2, "SystemController.getSystemController() is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fmsGetAppId()I
    .locals 1

    .prologue
    .line 1096
    const/4 v0, 0x0

    return v0
.end method

.method public fmsMakeDir(ILjava/lang/String;)I
    .locals 15
    .param p1, "appId"    # I
    .param p2, "dirName"    # Ljava/lang/String;

    .prologue
    .line 1101
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v11

    .line 1102
    .local v11, "sdCardState":Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1103
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    .line 1104
    .local v10, "sdCardRoot":Ljava/io/File;
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->splitString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1105
    .local v3, "folders":[Ljava/lang/String;
    array-length v6, v3

    .line 1106
    .local v6, "len":I
    if-eqz v6, :cond_4

    .line 1107
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 1108
    .local v8, "rootPath":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    add-int/lit8 v12, v6, -0x1

    if-ge v4, v12, :cond_2

    .line 1109
    aget-object v9, v3, v4

    .line 1110
    .local v9, "s":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1111
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1112
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1108
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1114
    :cond_1
    add-int/lit8 v12, v6, -0x1

    if-gt v4, v12, :cond_0

    .line 1115
    const/4 v12, -0x1

    .line 1130
    .end local v2    # "f":Ljava/io/File;
    .end local v3    # "folders":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "len":I
    .end local v8    # "rootPath":Ljava/lang/String;
    .end local v9    # "s":Ljava/lang/String;
    .end local v10    # "sdCardRoot":Ljava/io/File;
    :goto_1
    return v12

    .line 1118
    .restart local v3    # "folders":[Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v6    # "len":I
    .restart local v8    # "rootPath":Ljava/lang/String;
    .restart local v10    # "sdCardRoot":Ljava/io/File;
    :cond_2
    add-int/lit8 v12, v6, -0x1

    aget-object v1, v3, v12

    .line 1119
    .local v1, "dirNameToCreate":Ljava/lang/String;
    const-string v12, "PHubService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "dirNameToCreate ->"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    new-instance v7, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1121
    .local v7, "requiredFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v5

    .line 1122
    .local v5, "isCreated":Z
    if-eqz v5, :cond_4

    .line 1123
    const/4 v12, 0x0

    goto :goto_1

    .line 1128
    .end local v1    # "dirNameToCreate":Ljava/lang/String;
    .end local v3    # "folders":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "isCreated":Z
    .end local v6    # "len":I
    .end local v7    # "requiredFile":Ljava/io/File;
    .end local v8    # "rootPath":Ljava/lang/String;
    .end local v10    # "sdCardRoot":Ljava/io/File;
    :cond_3
    const-string v12, "PHubService"

    const-string v13, "Media not mounted"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :cond_4
    const/4 v12, -0x1

    goto :goto_1
.end method

.method public fmsRemoveDir(ILjava/lang/String;Z)I
    .locals 9
    .param p1, "appId"    # I
    .param p2, "dirName"    # Ljava/lang/String;
    .param p3, "isRecursive"    # Z

    .prologue
    const/4 v5, -0x1

    .line 1135
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 1136
    .local v4, "sdCardState":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1137
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    .line 1138
    .local v3, "sdCardRoot":Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1140
    .local v1, "dirToRemove":Ljava/io/File;
    const-string v6, "PHubService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " appId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isRecursive "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1142
    const-string v6, "PHubService"

    const-string v7, "dir not exists"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1169
    .end local v0    # "dirPath":Ljava/lang/String;
    .end local v1    # "dirToRemove":Ljava/io/File;
    .end local v3    # "sdCardRoot":Ljava/io/File;
    :cond_0
    :goto_0
    return v5

    .line 1146
    .restart local v0    # "dirPath":Ljava/lang/String;
    .restart local v1    # "dirToRemove":Ljava/io/File;
    .restart local v3    # "sdCardRoot":Ljava/io/File;
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1147
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 1148
    .local v2, "fileArray":[Ljava/lang/String;
    if-eqz v2, :cond_2

    array-length v6, v2

    if-lez v6, :cond_2

    if-eqz p3, :cond_2

    .line 1149
    const-string v5, "PHubService"

    const-string v6, "fmsRemoveDir 1"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->removeRecursive(Ljava/io/File;)I

    move-result v5

    goto :goto_0

    .line 1152
    :cond_2
    if-eqz v2, :cond_3

    array-length v6, v2

    if-lez v6, :cond_3

    if-nez p3, :cond_3

    .line 1154
    const-string v6, "PHubService"

    const-string v7, "dir not Null and Delete Non recursive"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_3
    if-eqz v2, :cond_0

    array-length v6, v2

    if-nez v6, :cond_0

    .line 1158
    const-string v5, "PHubService"

    const-string v6, "Dirctory is last node"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1160
    const/4 v5, 0x0

    goto :goto_0

    .line 1164
    .end local v2    # "fileArray":[Ljava/lang/String;
    :cond_4
    const-string v6, "PHubService"

    const-string v7, "It is file so NOT deleting"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public fmsRemoveFile(ILjava/lang/String;)I
    .locals 4
    .param p1, "AppId"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1186
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v0

    .line 1188
    .local v0, "result":I
    const-string v1, "PHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of fmsRemoveFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    return v0
.end method

.method public fmsResynchRequest(ILjava/lang/String;)Z
    .locals 4
    .param p1, "appId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 1194
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsResynchRequest(ILjava/lang/String;)Z

    move-result v0

    .line 1196
    .local v0, "result":Z
    const-string v1, "PHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of fmsResynchRequest: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    return v0
.end method

.method public fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "appId"    # I
    .param p2, "srcPath"    # Ljava/lang/String;
    .param p3, "destPath"    # Ljava/lang/String;
    .param p4, "priority"    # I

    .prologue
    .line 1175
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1179
    .local v0, "result":I
    const-string v1, "PHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of fmsSyncFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    return v0
.end method

.method public launchGoogleVoiceApplication()V
    .locals 4

    .prologue
    .line 1408
    const-string v2, "PHubService"

    const-string v3, "Inside launchGoogleVoiceApplication()"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1412
    .local v0, "ctx":Landroid/content/Context;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/WakeLocker;->acquire(Landroid/content/Context;)V

    .line 1413
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1414
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1415
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1434
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 310
    const-class v1, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    const-string v1, "PHubService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bound by intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v1, "associateWD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    :try_start_0
    const-string v1, "PHubService"

    const-string v2, "BT off associate WD called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->apiEndpoint:Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;

    invoke-virtual {v1}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->associateWD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->apiEndpoint:Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;

    .line 356
    :goto_1
    return-object v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 322
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const-string v1, "disassociateWD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    :try_start_1
    const-string v1, "PHubService"

    const-string v2, "BT off disassociate WD called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->apiEndpoint:Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;

    invoke-virtual {v1}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->disassociateWD()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v1, "foundPhoneReq"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    :try_start_2
    const-string v1, "PHubService"

    const-string v2, "BT off foundPhoneReq called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->apiEndpoint:Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;->foundPhoneReq(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 336
    :catch_2
    move-exception v0

    .line 337
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 355
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    const-string v1, "PHubService"

    const-string v2, "Returning null for apiEndpoint"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreate()V
    .locals 17

    .prologue
    .line 362
    invoke-super/range {p0 .. p0}, Lcom/qualcomm/toq/base/service/PHubBaseService;->onCreate()V

    .line 363
    const-string v14, "PHubService"

    const-string v15, "PHubService onCreate()"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v14, "FMSController"

    const-string v15, "onCreate() in PHubService called"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    sput-object v14, Lcom/qualcomm/toq/smartwatch/service/PHubService;->custom_lock:Ljava/lang/Object;

    .line 368
    const/4 v14, 0x1

    sput-boolean v14, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    .line 370
    const-string v14, "app_pref"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 372
    .local v12, "prefs":Landroid/content/SharedPreferences;
    const-string v14, "firstTime"

    const/4 v15, 0x1

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 373
    .local v6, "firstTime":Z
    if-eqz v6, :cond_0

    .line 374
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 375
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v14, "firstTime"

    const/4 v15, 0x0

    invoke-interface {v5, v14, v15}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 376
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->deleteStoreFiles()V

    .line 382
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->getClockUtils()Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/utils/ClockUtils;->parseClockInfoFromAssests()V

    .line 386
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getBaseContext()Landroid/content/Context;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->createDefaultAmbientEntry(Landroid/content/Context;)V

    .line 388
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "activity_monitoring_pref"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 391
    .local v1, "activityPrefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_1

    .line 392
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 393
    .restart local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v14

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v3

    .line 395
    .local v3, "currentDayEndTime":J
    const-string v14, "activity_current_day_end"

    invoke-interface {v5, v14, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 401
    .end local v3    # "currentDayEndTime":J
    .end local v5    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string v14, "PHubService"

    const-string v15, "FMSDatabaseAdapter open() from PHubService"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mAppContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 403
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 404
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSDBOpen()Z

    move-result v14

    if-nez v14, :cond_2

    .line 405
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->close()V

    .line 406
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsDatabaseAdapter:Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->open()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    .line 409
    :cond_2
    const-string v14, "PHubService"

    const-string v15, "Removing number from the shared preferences if any while starting service"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    sget-boolean v14, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->isPhoneOnActiveCall:Z

    if-nez v14, :cond_3

    .line 416
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v14

    invoke-virtual {v14}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->removeCallNumberFromPreference()Z

    .line 419
    :cond_3
    const-string v14, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    move-object v13, v14

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 423
    .local v13, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v14

    const/16 v15, 0x21

    invoke-virtual {v13, v14, v15}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 428
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 434
    .local v8, "midnightTime":Ljava/util/Calendar;
    const/16 v14, 0xb

    const/16 v15, 0x18

    invoke-virtual {v8, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 435
    const/16 v14, 0xc

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 436
    const/16 v14, 0xd

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Ljava/util/Calendar;->set(II)V

    .line 437
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 439
    .local v9, "midnightTimeInMillis":J
    const-string v14, "PHubService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Midnight Alarm time set date "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    new-instance v16, Ljava/util/Date;

    move-object/from16 v0, v16

    invoke-direct {v0, v9, v10}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/qualcomm/toq/smartwatch/service/receiver/PHubTimeReceiver;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 443
    .local v7, "intent":Landroid/content/Intent;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/qualcomm/toq/base/utils/Constants;->APPLICATION_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".smartwatch.service.receiver.PHubTimeReceiver"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v7, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 449
    .local v11, "pendingIntent":Landroid/app/PendingIntent;
    const-string v14, "alarm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 450
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    const/4 v14, 0x0

    invoke-virtual {v2, v14, v9, v10, v11}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->startFactoryObjects()V

    .line 457
    new-instance v14, Landroid/os/Handler;

    invoke-direct {v14}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationUpdateHandler:Landroid/os/Handler;

    .line 458
    new-instance v14, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;-><init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;Lcom/qualcomm/toq/smartwatch/service/PHubService$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationServiceReceiver:Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;

    .line 459
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationServiceReceiver:Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;

    new-instance v15, Landroid/content/IntentFilter;

    const-string v16, "android.location.PROVIDERS_CHANGED"

    invoke-direct/range {v15 .. v16}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 461
    const-string v14, "location"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/location/LocationManager;

    check-cast v14, Landroid/location/LocationManager;

    const-string v15, "network"

    invoke-virtual {v14, v15}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z

    .line 463
    const-string v14, "PHubService"

    const-string v15, "Phub Service instance created"

    invoke-static {v14, v15}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 719
    invoke-super {p0}, Lcom/qualcomm/toq/base/service/PHubBaseService;->onDestroy()V

    .line 720
    const-string v1, "PHubService"

    const-string v2, "Service destroying"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    const-string v1, "FMSController"

    const-string v2, "onDestroy() of PhubService called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const/4 v1, 0x0

    sput-boolean v1, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    .line 725
    const-string v1, "PHubService"

    const-string v2, "Unregister phone listener while service is destroyed."

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->getPhoneStateListener(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/service/listener/CustomPhoneStateListener;->unRegisterListener()V

    .line 731
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationServiceReceiver:Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;

    if-eqz v1, :cond_0

    .line 732
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mLocationServiceReceiver:Lcom/qualcomm/toq/smartwatch/service/PHubService$LocationServiceReceiver;

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 735
    :cond_0
    const-string v1, "PHubService"

    const-string v2, "Phub Service instance destroyed"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->endFactoryObjects()V

    .line 738
    const-string v1, "PHubService"

    const-string v2, "Unregistering FMS receiver as service is destroying"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->unRegisterFMSReceiver()V

    .line 741
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getHeadsetBroadCastReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    :goto_0
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SERVICE_STOPPED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 748
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendBroadcast(Landroid/content/Intent;)V

    .line 750
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 751
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 752
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 753
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->handler:Landroid/os/Handler;

    .line 755
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->unRegisterContentObservers()V

    .line 756
    sget-object v2, Lcom/qualcomm/toq/smartwatch/service/PHubService;->custom_lock:Ljava/lang/Object;

    monitor-enter v2

    .line 757
    const/4 v1, 0x0

    :try_start_1
    sput-object v1, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mInstance:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    .line 758
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 760
    sput-object v3, Lcom/qualcomm/toq/smartwatch/service/PHubService;->custom_lock:Ljava/lang/Object;

    .line 762
    return-void

    .line 758
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 744
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 713
    invoke-super {p0}, Lcom/qualcomm/toq/base/service/PHubBaseService;->onLowMemory()V

    .line 714
    const-string v0, "PHubService"

    const-string v1, "Service onLowMemory"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 469
    const-string v9, "PHubService"

    const-string v10, "PHubService onStartCommand called"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v9, "PHubService"

    const-string v10, "Phub Service Started"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasExtras:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v9

    const-string v10, "developer"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 482
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 483
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 484
    const-string v9, "command"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    .local v1, "command":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v9, "fmsMakeDir"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 486
    const-string v9, "filePath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 488
    const-string v9, "PHubService"

    const-string v10, "ADB call for fmsMakeDir"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "filePath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsMakeDir(ILjava/lang/String;)I

    .line 708
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "command":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/qualcomm/toq/base/service/PHubBaseService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v9

    return v9

    .line 493
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "command":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_3

    const-string v9, "fmsRemoveDir"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 495
    const-string v9, "filePath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "isRecursive"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 498
    const/4 v6, 0x0

    .line 499
    .local v6, "isRecursive":Z
    const-string v9, "isRecursive"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "true"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 500
    const/4 v6, 0x1

    .line 502
    :cond_2
    const-string v9, "PHubService"

    const-string v10, "ADB call for fmsRemoveDir"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "filePath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10, v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsRemoveDir(ILjava/lang/String;Z)I

    goto :goto_0

    .line 508
    .end local v6    # "isRecursive":Z
    :cond_3
    if-eqz v1, :cond_4

    const-string v9, "fmsRemoveFile"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 510
    const-string v9, "filePath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 512
    const-string v9, "PHubService"

    const-string v10, "ADB call for fmsRemoveFile"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "filePath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsRemoveFile(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 517
    :cond_4
    if-eqz v1, :cond_6

    const-string v9, "fmsSyncFile"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 519
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for fmsSyncFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "srcPath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "destPath"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 523
    const-string v9, "priority"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 524
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for fmsSyncFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "appId"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "srcPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "priority"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "srcPath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "priority"

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 536
    :cond_5
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for fmsSyncFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "appId"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "srcPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " -1"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "srcPath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, -0x1

    invoke-virtual {p0, v9, v10, v11, v12}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    goto/16 :goto_0

    .line 549
    :cond_6
    if-eqz v1, :cond_7

    const-string v9, "fmsResynchRequest"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 551
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for fmsResynchRequest: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "path"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 555
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for fmsReSyncFile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "appId"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "path"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const-string v9, "appId"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "path"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->fmsResynchRequest(ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 563
    :cond_7
    if-eqz v1, :cond_8

    const-string v9, "receiveFileFromWatch"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 565
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for receiveFileFromWatch: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for receiveFileFromWatch:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "srcPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v9

    const-string v10, "srcPath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->receiveFileFromWatch(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    :cond_8
    if-eqz v1, :cond_9

    const-string v9, "pushFileToWatch"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 583
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call to pushFileToWatch: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for pushFileToWatch:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "srcPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v9

    const-string v10, "srcPath"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "destPath"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->pushFileToWatch(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 593
    :cond_9
    if-eqz v1, :cond_a

    const-string v9, "setDefaultMusicPlayer"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 595
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call to setDefaultMusicPlayer: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v9, "PHubService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ADB command call for setDefaultMusicPlayer:  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "playerName"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->getInstance()Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    move-result-object v9

    const-string v10, "playerName"

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->setDefaultMusicPlayer(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 602
    :cond_a
    if-eqz v1, :cond_d

    const-string v9, "clearActivityHistory"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 605
    const-string v9, "PHubService"

    const-string v10, "ADB call for clearActivityHistory"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v2

    .line 609
    .local v2, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v9

    if-eqz v9, :cond_c

    if-eqz v2, :cond_c

    .line 613
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v9

    invoke-interface {v9}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v9

    invoke-interface {v2, v9}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v8

    .line 616
    .local v8, "state":I
    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    .line 617
    const-string v9, "PHubService"

    const-string v10, "Phone and WD in connected state, clearing activity history"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->clearActivityData()V

    goto/16 :goto_0

    .line 624
    :cond_b
    const-string v9, "PHubService"

    const-string v10, "Phone and WD in disconnected state. Clear history failed"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    .end local v8    # "state":I
    :cond_c
    const-string v9, "PHubService"

    const-string v10, "ConnectionHandler/EndPoint is NULL"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 633
    .end local v2    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    :cond_d
    if-eqz v1, :cond_e

    const-string v9, "resetConnection"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 635
    const-string v9, "PHubService"

    const-string v10, "ADB call for resetConnection"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->resetConnectionWD()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 639
    :catch_0
    move-exception v3

    .line 640
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    .line 643
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_e
    if-eqz v1, :cond_f

    const-string v9, "enableTFTP"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 645
    const-string v9, "PHubService"

    const-string v10, "ADB call for resetConnection"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :try_start_1
    const-string v9, "state"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 648
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v9

    const/4 v10, 0x0

    const-string v11, "value"

    invoke-virtual {v0, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointEnableTFTPMode(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 653
    :catch_1
    move-exception v3

    .line 654
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 657
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_f
    if-eqz v1, :cond_0

    const-string v9, "setActivityGoal"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 659
    const-string v9, "PHubService"

    const-string v10, "ADB call for setActivityGoal"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :try_start_2
    const-string v9, "goalValue"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 664
    const-string v9, "goalValue"

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 665
    .local v5, "goalValue":I
    if-ltz v5, :cond_12

    .line 667
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "activity_monitoring_pref"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 674
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const/16 v9, 0xbb8

    if-ge v5, v9, :cond_11

    const/16 v5, 0xbb8

    .line 678
    :cond_10
    :goto_1
    if-eqz v7, :cond_0

    const-string v9, "activity_monitoring_goal_points_key"

    const/16 v10, 0x2710

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v5, v9, :cond_0

    .line 684
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 685
    .local v4, "goalEditor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "activity_monitoring_goal_points_key"

    invoke-interface {v4, v9, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 687
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 690
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 700
    .end local v4    # "goalEditor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "goalValue":I
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :catch_2
    move-exception v3

    .line 701
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v9, "PHubService"

    const-string v10, "Exception in setActivityGoal"

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 674
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v5    # "goalValue":I
    .restart local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_11
    const/16 v9, 0x61a8

    if-le v5, v9, :cond_10

    const/16 v5, 0x61a8

    goto :goto_1

    .line 695
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :cond_12
    :try_start_3
    const-string v9, "PHubService"

    const-string v10, "goalPoints cannot be negative."

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .prologue
    .line 1049
    invoke-super {p0, p1}, Lcom/qualcomm/toq/base/service/PHubBaseService;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1052
    const-string v0, "PHubService"

    const-string v1, "PhubService  Task has been removed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->stopMediaPlayer()V

    .line 1057
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    .line 1058
    return-void
.end method

.method public resetConnectionWD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 274
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->resetEndPointConnection(IZ)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    const-string v0, "PHubService"

    const-string v1, "resetConnectionWD(): mConnectionFactory.getConnManager() is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendDataToController(IIILjava/lang/Object;II)V
    .locals 7
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    const/4 v2, 0x1

    .line 991
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 993
    const/4 v0, 0x0

    .line 994
    .local v0, "iController":Lcom/qualcomm/toq/base/controller/IController;
    const/4 v1, 0x5

    if-ne p2, v1, :cond_2

    .line 995
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    .line 1031
    :cond_0
    :goto_0
    if-eqz v0, :cond_d

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 1033
    invoke-interface/range {v0 .. v6}, Lcom/qualcomm/toq/base/controller/IController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 1044
    .end local v0    # "iController":Lcom/qualcomm/toq/base/controller/IController;
    :cond_1
    :goto_1
    return-void

    .line 997
    .restart local v0    # "iController":Lcom/qualcomm/toq/base/controller/IController;
    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 998
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v0

    goto :goto_0

    .line 1000
    :cond_3
    const/4 v1, 0x7

    if-ne p2, v1, :cond_4

    .line 1001
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    move-result-object v0

    goto :goto_0

    .line 1003
    :cond_4
    if-ne p2, v2, :cond_5

    .line 1004
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;->getVoiceCallController()Lcom/qualcomm/toq/smartwatch/controller/VoiceCallController;

    move-result-object v0

    goto :goto_0

    .line 1006
    :cond_5
    const/16 v1, 0x11

    if-ne p2, v1, :cond_6

    .line 1007
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v0

    goto :goto_0

    .line 1009
    :cond_6
    const/16 v1, 0x18

    if-ne p2, v1, :cond_7

    .line 1010
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/MusicController;->getMusicController()Lcom/qualcomm/toq/smartwatch/controller/MusicController;

    move-result-object v0

    goto :goto_0

    .line 1012
    :cond_7
    const/16 v1, 0x1a

    if-ne p2, v1, :cond_8

    .line 1013
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v0

    goto :goto_0

    .line 1015
    :cond_8
    const/16 v1, 0x22

    if-ne p2, v1, :cond_9

    .line 1016
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->getAppLoggingController()Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    move-result-object v0

    goto :goto_0

    .line 1018
    :cond_9
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_a

    .line 1019
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->getSpeechController()Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    move-result-object v0

    goto :goto_0

    .line 1021
    :cond_a
    const/16 v1, 0x1e

    if-ne p2, v1, :cond_b

    .line 1022
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->getActivityMonitoringController()Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    move-result-object v0

    goto :goto_0

    .line 1024
    :cond_b
    const/16 v1, 0x20

    if-ne p2, v1, :cond_c

    .line 1025
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->getFtsController()Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    move-result-object v0

    goto :goto_0

    .line 1027
    :cond_c
    if-nez p2, :cond_0

    .line 1028
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->getVersionController()Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    move-result-object v0

    goto :goto_0

    .line 1041
    :cond_d
    const-string v1, "PHubService"

    const-string v2, "Controller is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startFactoryObjects()V
    .locals 3

    .prologue
    .line 780
    const-string v1, "PHubService"

    const-string v2, "PHubService startFactoryObjects()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v0, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/service/PHubService$2;-><init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V

    .line 967
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 969
    return-void
.end method

.method public startFindWDDialogActivity()V
    .locals 3

    .prologue
    .line 1437
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 1438
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1439
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1440
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1441
    return-void
.end method
