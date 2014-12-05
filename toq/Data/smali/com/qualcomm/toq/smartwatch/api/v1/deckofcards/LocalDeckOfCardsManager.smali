.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
.super Ljava/lang/Object;
.source "LocalDeckOfCardsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$3;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$StateListenerImpl;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;,
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;
    }
.end annotation


# static fields
.field public static final TOQ_APPLET_RECORDS_FILE:Ljava/lang/String; = "toq_applet_records_file"

.field public static final TOQ_APPLET_RECORDS_KEY:Ljava/lang/String; = "top_applet_records_key"

.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;


# instance fields
.field private appletInstallationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;",
            ">;"
        }
    .end annotation
.end field

.field private callbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

.field private iconCacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private iconCacheRoot:Ljava/io/File;

.field private installationCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private remoteCallbackHandler:Landroid/os/Handler;

.field private remoteCallbackThread:Landroid/os/HandlerThread;

.field private secureRandom:Ljava/security/SecureRandom;

.field private toqAppletRecordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    .line 97
    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    .line 117
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    .line 119
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;->getDeckOfCardsSync()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    .line 121
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->callbackMap:Ljava/util/Map;

    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installationCallbackMap:Ljava/util/Map;

    .line 124
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->secureRandom:Ljava/security/SecureRandom;

    .line 126
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->appletInstallationListeners:Ljava/util/Set;

    .line 129
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->initIconCache()V

    .line 132
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$StateListenerImpl;

    invoke-direct {v2, p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$StateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->addStateListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;)V

    .line 136
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getToqAppletRecords()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    .line 150
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 160
    :cond_0
    :goto_0
    const-string v1, "DeckOfCards"

    const-string v2, "LocalDeckOfCardsManager.constructor - Qualcomm Toq 3rd party API v1.5.2 (152)"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDeckOfCardsManager.constructor - internal installed applets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInternalInstalledAppletPackageNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDeckOfCardsManager.constructor - external installed applets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getExternalInstalledAppletPackageNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDeckOfCardsManager.constructor - external not installed applets: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getExternalNotInstalledAppletPackageNames()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "DeckOfCards"

    const-string v2, "LocalDeckOfCardsManager.constructor - done"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeckOfCards"

    const-string v2, "LocalDeckOfCardsManager.constructor - an error occurred saving the new toq applet records"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 139
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v1, "DeckOfCards"

    const-string v2, "LocalDeckOfCardsManager.constructor - an error occurred retrieving the toq applet records"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 147
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    .line 150
    :try_start_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 152
    :catch_2
    move-exception v0

    .line 153
    const-string v1, "DeckOfCards"

    const-string v2, "LocalDeckOfCardsManager.constructor - an error occurred saving the new toq applet records"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 144
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 147
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    .line 150
    :try_start_4
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 154
    :cond_1
    :goto_1
    throw v1

    .line 152
    :catch_3
    move-exception v0

    .line 153
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "DeckOfCards"

    const-string v3, "LocalDeckOfCardsManager.constructor - an error occurred saving the new toq applet records"

    invoke-static {v2, v3, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .param p1, "x1"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeInstallationCallback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->purgeAll()V

    return-void
.end method

.method private addInstallationCallback(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p3, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .param p4, "installationCallback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

    .prologue
    const/4 v7, 0x0

    .line 1650
    new-instance v6, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;

    invoke-direct {v6, p0, p1, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V

    .line 1653
    .local v6, "binderDeathHandler":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;
    :try_start_0
    invoke-interface {p4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1660
    :goto_0
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installationCallbackMap:Ljava/util/Map;

    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V

    invoke-interface {v9, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1661
    return-void

    .line 1655
    :catch_0
    move-exception v8

    .line 1656
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalDeckOfCardsManager.addInstallationCallback - unable to link binder death handler to installation callback, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cacheIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 13
    .param p1, "iconPackageName"    # Ljava/lang/String;
    .param p2, "iconFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 1558
    const-string v10, "DeckOfCards"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LocalDeckOfCardsManager.cacheIcon - iconPackageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", iconFileName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    const/4 v7, 0x0

    .line 1564
    .local v7, "origDrawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1565
    .local v8, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    invoke-virtual {v8, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1566
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 1573
    if-nez v7, :cond_0

    .line 1574
    new-instance v10, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App has no icon, iconPackageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1568
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v3

    .line 1569
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No app installed matching iconPackageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1580
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v8    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    .end local v7    # "origDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1581
    .local v6, "origBitmap":Landroid/graphics/Bitmap;
    const/16 v10, 0x30

    const/16 v11, 0x30

    const/4 v12, 0x0

    invoke-static {v6, v10, v11, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1584
    .local v9, "resizedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->convertPNGIcon(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    .line 1589
    .local v4, "imgBytes":[B
    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheRoot:Ljava/io/File;

    invoke-direct {v5, v10, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1591
    .local v5, "localIconCacheFile":Ljava/io/File;
    const/4 v1, 0x0

    .line 1594
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1595
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .local v2, "bos":Ljava/io/BufferedOutputStream;
    :try_start_2
    invoke-virtual {v2, v4}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1596
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1597
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1604
    if-eqz v2, :cond_1

    .line 1606
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1613
    :cond_1
    :goto_0
    const-string v10, "DeckOfCards"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "LocalDeckOfCardsManager.cacheIcon - stored local icon img: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    return-object v5

    .line 1599
    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_1
    move-exception v3

    .line 1600
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    new-instance v10, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "An error occurred storing the icon img, iconPackageName: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1604
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_2
    if-eqz v1, :cond_2

    .line 1606
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1608
    :cond_2
    :goto_3
    throw v10

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catch_2
    move-exception v10

    goto :goto_0

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_3
    move-exception v11

    goto :goto_3

    .line 1604
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .line 1599
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bos":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v3

    move-object v1, v2

    .end local v2    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method private dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1747
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->appletInstallationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1749
    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$3;->$SwitchMap$com$qualcomm$toq$smartwatch$api$v1$deckofcards$LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT:[I

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1752
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    invoke-interface {v1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;->onAppletInstall(Ljava/lang/String;)V

    goto :goto_0

    .line 1756
    :pswitch_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    invoke-interface {v1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;->onAppletUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 1760
    :pswitch_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    invoke-interface {v1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;->onAppletUninstall(Ljava/lang/String;)V

    goto :goto_0

    .line 1767
    :cond_0
    return-void

    .line 1749
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private generateToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1639
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x82

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->secureRandom:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getInstalledAppletPackageNames(Z)[Ljava/lang/String;
    .locals 4
    .param p1, "isRemote"    # Z

    .prologue
    .line 1727
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    .local v1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1731
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 1734
    .local v2, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-ne v3, p1, :cond_0

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1735
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->getPackageName()Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$2300(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1727
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;>;"
    .end local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1740
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;>;"
    .restart local v1    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v3
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 1244
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    if-nez v0, :cond_1

    .line 1246
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    monitor-enter v1

    .line 1248
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    if-nez v0, :cond_0

    .line 1249
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    .line 1252
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1256
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    return-object v0

    .line 1252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized getToqAppletRecords()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;",
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
    const/4 v2, 0x0

    .line 1681
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    const-string v4, "toq_applet_records_file"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1682
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "top_applet_records_key"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1686
    .local v1, "toqAppletRecordsStr":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1690
    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->deserialize(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1681
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "toqAppletRecordsStr":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private initIconCache()V
    .locals 3

    .prologue
    .line 1622
    const-string v0, "DeckOfCards"

    const-string v1, "LocalDeckOfCardsManager.initIconCache"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1625
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheMap:Ljava/util/Map;

    .line 1627
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "notification-icons"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheRoot:Ljava/io/File;

    .line 1629
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheRoot:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 1633
    :cond_0
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalDeckOfCardsManager.initIconCache - iconCacheRoot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheRoot:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    return-void
.end method

.method private declared-synchronized purgeAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1714
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1717
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 1720
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1721
    monitor-exit p0

    return-void

    .line 1714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeInstallationCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1670
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installationCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;

    .line 1673
    .local v0, "installationCallback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;
    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->access$1000(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->access$2200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1674
    return-void
.end method

.method private declared-synchronized storeToqAppRecords(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1701
    .local p1, "toqAppletRecordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    const-string v3, "toq_applet_records_file"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1702
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1703
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "top_applet_records_key"

    check-cast p1, Ljava/io/Serializable;

    .end local p1    # "toqAppletRecordsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;>;"
    invoke-static {p1}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1704
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1705
    monitor-exit p0

    return-void

    .line 1701
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public addAppletInstallationListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->appletInstallationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1190
    return-void
.end method

.method public addCallback(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;

    .prologue
    const/4 v5, 0x0

    .line 1152
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;

    invoke-direct {v4, p0, p1, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V

    .line 1155
    .local v4, "binderDeathHandler":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;
    :try_start_0
    invoke-interface {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_0
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->callbackMap:Ljava/util/Map;

    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V

    invoke-interface {v7, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    return-void

    .line 1157
    :catch_0
    move-exception v6

    .line 1158
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalDeckOfCardsManager.addCallback - unable to link binder death handler to remote callback, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized completeInstallationRequest(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isRequestAccepted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 710
    monitor-enter p0

    :try_start_0
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalDeckOfCardsManager.completeInstallationRequest - packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", isRequestAccepted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installationCallbackMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;

    .line 716
    .local v2, "installationCallback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;
    if-nez v2, :cond_0

    .line 717
    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There is no installation callback for the specified client package name (client app process died?), packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    .end local v2    # "installationCallback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 721
    .restart local v2    # "installationCallback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;
    :cond_0
    if-eqz p2, :cond_4

    .line 724
    :try_start_1
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->generateToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "token":Ljava/lang/String;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;-><init>(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V

    .line 728
    .local v4, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    const/4 v5, 0x0

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setInstalled(Z)V
    invoke-static {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$300(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Z)V

    .line 729
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setInstallationToken(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$600(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Ljava/lang/String;)V

    .line 730
    const/4 v5, 0x1

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setRemote(Z)V
    invoke-static {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$700(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Z)V

    .line 731
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    :try_start_2
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 750
    :try_start_3
    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->access$800(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;

    move-result-object v5

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->resourceStore:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->access$900(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 755
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    if-nez v5, :cond_1

    .line 756
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "RemoteCallBackthread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    .line 757
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 758
    new-instance v5, Landroid/os/Handler;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    .line 762
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 763
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;

    invoke-direct {v6, p0, v2, v3, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 872
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 739
    .restart local v3    # "token":Ljava/lang/String;
    .restart local v4    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An error occurred storing the toq applet record for packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 804
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 813
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    const/4 v6, 0x0

    invoke-interface {v5, p1, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->uninstallDeckOfCards(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 822
    :cond_3
    :goto_1
    :try_start_6
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 823
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 829
    :goto_2
    :try_start_7
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeInstallationCallback(Ljava/lang/String;)V

    .line 830
    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "An error occurred completing the installation - reset - packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 816
    :catch_2
    move-exception v1

    .line 817
    .local v1, "e1":Ljava/lang/Exception;
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalDeckOfCardsManager.completeInstallationRequest - an error occurred uninstalling the deck of cards for packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 825
    .end local v1    # "e1":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 826
    .local v1, "e1":Ljava/io/IOException;
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalDeckOfCardsManager.completeInstallationRequest - an error occurred removing toq applet record for packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 841
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "e1":Ljava/io/IOException;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :cond_4
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    if-nez v5, :cond_5

    .line 842
    new-instance v5, Landroid/os/HandlerThread;

    const-string v6, "RemoteCallBackthread"

    invoke-direct {v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    .line 843
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    .line 844
    new-instance v5, Landroid/os/Handler;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    .line 848
    :cond_5
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    if-eqz v5, :cond_2

    .line 849
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    new-instance v6, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$2;

    invoke-direct {v6, p0, v2, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$2;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0
.end method

.method public convertPNGIcon(Landroid/graphics/Bitmap;)[B
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->convertPNGBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    return-object v0
.end method

.method public dispatchRemoteMessage(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 980
    const-string v2, "DeckOfCards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalDeckOfCardsManager.dispatchRemoteMessage - packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;

    .line 986
    .local v0, "callback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;
    if-nez v0, :cond_0

    .line 987
    const-string v2, "DeckOfCards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalDeckOfCardsManager.dispatchRemoteMessage - there is no remote callback for the specified client package name (client app process not running?), packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    :goto_0
    return-void

    .line 994
    :cond_0
    :try_start_0
    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->access$500(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;->onMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v1

    .line 998
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred calling back to the client app with a message, packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public declared-synchronized getExternalInstalledAppletPackageNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstalledAppletPackageNames(Z)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExternalNotInstalledAppletPackageNames()[Ljava/lang/String;
    .locals 10

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 645
    .local v5, "uninstalledPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.qualcomm.toq.smartwatch.install.applet"

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 647
    .local v4, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 648
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 642
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "uninstalledPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 652
    .restart local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "uninstalledPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getExternalInstalledAppletPackageNames()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 654
    .local v2, "installedPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 655
    .local v1, "installedPackageName":Ljava/lang/String;
    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 658
    .end local v1    # "installedPackageName":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v6
.end method

.method public declared-synchronized getInternalInstalledAppletPackageNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 678
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstalledAppletPackageNames(Z)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRemoteCallbackHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/AbstractDeckOfCardsSync;->getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .locals 6
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 255
    monitor-enter p0

    :try_start_0
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalDeckOfCardsManager.installDeckOfCards - deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resourceStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getId()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 261
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deck of cards is already installed, deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 264
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 273
    .local v2, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v2, :cond_1

    .line 274
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote applet has no corresponding toq applet record, packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 278
    :cond_1
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    :cond_2
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toq applet record for remote app has invalid state, toqAppletRecord: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    invoke-interface {v3, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 288
    const/4 v3, 0x1

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setInstalled(Z)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$300(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Z)V
    :try_end_2
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    :try_start_3
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 300
    :try_start_4
    sget-object v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_INSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred storing the toq applet record for packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_5
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 303
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :try_start_6
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred installing the deck of cards ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public declared-synchronized installInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V
    .locals 6
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalDeckOfCardsManager.installInternalDeckOfCards - deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getId()Ljava/lang/String;

    move-result-object v1

    .line 323
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deck of cards is already installed, deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 327
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 332
    .local v2, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v2, :cond_2

    .line 333
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .end local v2    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;-><init>(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V

    .line 334
    .restart local v2    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 351
    const/4 v3, 0x1

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->setInstalled(Z)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$300(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;Z)V
    :try_end_2
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 356
    :try_start_3
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 363
    :try_start_4
    sget-object v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_INSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 370
    monitor-exit p0

    return-void

    .line 340
    :cond_2
    :try_start_5
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    :cond_3
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toq applet record for internal applet has invalid state, toqAppletRecord: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred storing the toq applet record for packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_6
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 366
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 367
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :try_start_7
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred installing the deck of cards ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 690
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 692
    .local v0, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v0, :cond_0

    .line 693
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDeckOfCardsManager.isInstalled - no toq applet record for packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v1, 0x0

    .line 697
    :goto_0
    return v1

    :cond_0
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v1

    goto :goto_0
.end method

.method public isValidInstall(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f0a00f0

    const/16 v4, -0xc9

    const/4 v1, 0x0

    .line 1093
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 1095
    .local v0, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v0, :cond_0

    .line 1096
    const-string v2, "DeckOfCards"

    const-string v3, "LocalDeckOfCardsManager.isValidInstall - no matching registration"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    .line 1113
    :goto_0
    return v1

    .line 1101
    :cond_0
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1102
    const-string v2, "DeckOfCards"

    const-string v3, "LocalDeckOfCardsManager.isValidInstall - deck of cards not installed"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 1107
    :cond_1
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->getinstallationToken()Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$1500(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->getinstallationToken()Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$1500(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1108
    :cond_2
    const-string v2, "DeckOfCards"

    const-string v3, "LocalDeckOfCardsManager.isValidInstall - token not matching"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    const/16 v2, -0xc8

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    const v4, 0x7f0a00ee

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 1113
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized manualUninstall(Ljava/lang/String;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 883
    monitor-enter p0

    :try_start_0
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalDeckOfCardsManager.manualUninstall - packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 888
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 889
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to uninstall a deck of cards which is not installed, packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 920
    :catch_0
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred uninstalling the deck of cards ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 926
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 928
    :try_start_3
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 932
    sget-object v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v4, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 936
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 883
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 893
    :cond_0
    :try_start_5
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->uninstallDeckOfCards(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;

    .line 900
    .local v0, "callback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;
    if-nez v0, :cond_1

    .line 901
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalDeckOfCardsManager.manualUninstall - there is no remote callback for the specified client package name (client app process not running?), packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 928
    :try_start_6
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 932
    sget-object v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v3, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 941
    :goto_0
    monitor-exit p0

    return-void

    .line 935
    :catch_1
    move-exception v2

    .line 936
    .local v2, "e1":Ljava/io/IOException;
    :try_start_7
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 908
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_1
    :try_start_8
    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->access$500(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;->onUninstalled()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 916
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeCallback(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 928
    :try_start_a
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 932
    sget-object v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v3, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_0

    .line 935
    :catch_2
    move-exception v2

    .line 936
    .restart local v2    # "e1":Ljava/io/IOException;
    :try_start_b
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 910
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 912
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_c
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred calling back to the client app that it has been uninstalled, packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 916
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_2
    move-exception v3

    :try_start_d
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeCallback(Ljava/lang/String;)V

    throw v3
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 935
    .end local v0    # "callback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;
    :catch_4
    move-exception v2

    .line 936
    .restart local v2    # "e1":Ljava/io/IOException;
    :try_start_e
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1
.end method

.method public onPackageRemoved(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 952
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 954
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDeckOfCardsManager.onPackageRemoved - package is installed, uninstalling packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->manualUninstall(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 968
    :cond_0
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDeckOfCardsManager.onPackageRemoved - an error occurred handling the uninstall for packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeAppletInstallationListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$AppletInstallationListener;

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->appletInstallationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1200
    return-void
.end method

.method public removeCallback(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1176
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;

    .line 1179
    .local v0, "callback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;
    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->access$500(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->access$1800(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1180
    return-void
.end method

.method public sendIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "appletPackageName"    # Ljava/lang/String;
    .param p2, "iconPackageName"    # Ljava/lang/String;

    .prologue
    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".img"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "iconFileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1032
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.sendIcon - icon cache map has no entry for iconPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheMap:Ljava/util/Map;

    invoke-direct {p0, p2, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->cacheIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-interface {v4, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1046
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->iconCacheMap:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1049
    .local v2, "localIconCacheFile":Ljava/io/File;
    if-nez v2, :cond_1

    .line 1050
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.sendIcon - no app icon for iconPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const/4 v4, 0x0

    .line 1066
    :goto_1
    return-object v4

    .line 1037
    .end local v2    # "localIconCacheFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1038
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.sendIcon - an error occurred caching the icon for iconPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1043
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.sendIcon - icon cache map already has entry for iconPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    .restart local v2    # "localIconCacheFile":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getWDAppRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1057
    .local v3, "wdIconFileName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;

    move-result-object v4

    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;

    invoke-direct {v5, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileManager;->sendIconFile(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/io/FileRecord;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1066
    .end local v3    # "wdIconFileName":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fms:/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 1059
    :catch_1
    move-exception v0

    .line 1060
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.sendIcon - an error occurred sending the icon for appletPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iconPackageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public declared-synchronized sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;)V
    .locals 12
    .param p1, "notification"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 184
    monitor-enter p0

    :try_start_0
    const-string v2, "DeckOfCards"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalDeckOfCardsManager.sendNotification - notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getId()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getName()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "appName":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 198
    .local v11, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v11, :cond_0

    .line 199
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Android app has no corresponding toq applet record, packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v11    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 203
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v11    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :cond_0
    :try_start_1
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v2

    if-eqz v2, :cond_1

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 204
    :cond_1
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toq applet record for remote Android app has invalid state, toqAppletRecord: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    :cond_2
    const/4 v10, 0x0

    .line 211
    .local v10, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :try_start_2
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v9

    .line 214
    .local v9, "notificationTextCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;
    if-eqz v9, :cond_3

    .line 216
    const-string v2, "DeckOfCards"

    const-string v3, "LocalDeckOfCardsManager.sendNotification - using notification text card"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0, v0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->sendIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "iconURI":Ljava/lang/String;
    invoke-static {v9, v1, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getRemoteToqNotificationInstance(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-result-object v10

    .line 236
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v10}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->showNotificationPopup(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 243
    monitor-exit p0

    return-void

    .line 226
    .end local v7    # "iconURI":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v2, "DeckOfCards"

    const-string v3, "LocalDeckOfCardsManager.sendNotification - using legacy values"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0, v0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->sendIcon(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 231
    .restart local v7    # "iconURI":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getTitleText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getMessageText()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getInfoText()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getRemoteToqNotificationLegacyInstance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    goto :goto_0

    .line 239
    .end local v7    # "iconURI":Ljava/lang/String;
    .end local v9    # "notificationTextCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;
    :catch_0
    move-exception v8

    .line 240
    .local v8, "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An error occurred sending the notification ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public setRemoteCallbackHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "remoteCallbackHandler"    # Landroid/os/Handler;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackHandler:Landroid/os/Handler;

    .line 107
    return-void
.end method

.method public setRemoteCallbackThread(Landroid/os/HandlerThread;)V
    .locals 0
    .param p1, "remoteCallbackThread"    # Landroid/os/HandlerThread;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->remoteCallbackThread:Landroid/os/HandlerThread;

    .line 111
    return-void
.end method

.method public declared-synchronized triggerInstallation(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p3, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .param p4, "installationCallback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

    .prologue
    .line 1127
    monitor-enter p0

    :try_start_0
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalDeckOfCardsManager.triggerInstallation - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deckOfCards: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resourceStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", installationCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->addInstallationCallback(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V

    .line 1134
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1135
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    const/high16 v1, 0x50800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1137
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    monitor-exit p0

    return-void

    .line 1127
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized uninstallDeckOfCards(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 484
    monitor-enter p0

    :try_start_0
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.uninstallDeckOfCards - packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 488
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deck of cards is not installed, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 491
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 500
    .local v3, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v3, :cond_1

    .line 501
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote applet has no corresponding toq applet record, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 505
    :cond_1
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v4

    if-eqz v4, :cond_2

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 506
    :cond_2
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toq applet record for remote applet has invalid state, toqAppletRecord: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->uninstallDeckOfCards(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->callbackMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;

    .line 519
    .local v0, "callback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;
    if-nez v0, :cond_4

    .line 520
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.uninstallDeckOfCards - there is no remote callback for the specified client package name (client app process not running?), packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 547
    :try_start_3
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 551
    sget-object v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v4, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 560
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e1":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 527
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_4
    :try_start_5
    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;->access$500(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;->onUninstalled()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 535
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeCallback(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 547
    :try_start_7
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 551
    sget-object v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v4, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 554
    :catch_1
    move-exception v2

    .line 555
    .restart local v2    # "e1":Ljava/io/IOException;
    :try_start_8
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 529
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 531
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_9
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred calling back to the client app that it has been uninstalled, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 535
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v4

    :try_start_a
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeCallback(Ljava/lang/String;)V

    throw v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 539
    .end local v0    # "callback":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$Callback;
    :catch_3
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/Exception;
    :try_start_b
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred uninstalling the deck of cards ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 545
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v4

    .line 547
    :try_start_c
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 551
    sget-object v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v5, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 555
    :try_start_d
    throw v4

    .line 554
    :catch_4
    move-exception v2

    .line 555
    .restart local v2    # "e1":Ljava/io/IOException;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
.end method

.method public declared-synchronized uninstallInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V
    .locals 7
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 571
    monitor-enter p0

    :try_start_0
    const-string v4, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LocalDeckOfCardsManager.uninstallInternalDeckOfCards - deckOfCards: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getId()Ljava/lang/String;

    move-result-object v2

    .line 576
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 577
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deck of cards is not installed, deckOfCards: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    .end local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 580
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 589
    .local v3, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v3, :cond_1

    .line 590
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Internal applet has no corresponding toq applet record, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 594
    :cond_1
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v4

    if-nez v4, :cond_2

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 595
    :cond_2
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Toq applet record for internal applet has invalid state, toqAppletRecord: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getAppZipFileName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->uninstallDeckOfCards(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 614
    :try_start_3
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 618
    sget-object v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v4, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    monitor-exit p0

    return-void

    .line 621
    :catch_0
    move-exception v1

    .line 622
    .local v1, "e1":Ljava/io/IOException;
    :try_start_4
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 606
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 607
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred uninstalling the deck of cards ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    .line 614
    :try_start_6
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->storeToqAppRecords(Ljava/util/Map;)V

    .line 618
    sget-object v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v5, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 622
    :try_start_7
    throw v4

    .line 621
    :catch_2
    move-exception v1

    .line 622
    .restart local v1    # "e1":Ljava/io/IOException;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occurred removing toq applet record for packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method public declared-synchronized updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .locals 6
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 382
    monitor-enter p0

    :try_start_0
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalDeckOfCardsManager.updateDeckOfCards - deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resourceStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getId()Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deck of cards is not installed, deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 391
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 400
    .local v2, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v2, :cond_1

    .line 401
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote applet has no corresponding toq applet record, packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 405
    :cond_1
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 406
    :cond_2
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toq applet record for remote app has invalid state, toqAppletRecord: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    invoke-interface {v3, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 415
    sget-object v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UPDATE:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 422
    monitor-exit p0

    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :try_start_3
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred updating the deck of cards ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized updateDeckOfCardsAppZip()V
    .locals 8

    .prologue
    .line 1209
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1211
    const-string v5, "DeckOfCards"

    const-string v6, "LocalDeckOfCardsManager.updateDeckOfCardsAppZip Updating the installed appletes."

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1213
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1214
    .local v2, "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1215
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1218
    .local v3, "packageName":Ljava/lang/String;
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalDeckOfCardsManager.updateDeckOfCardsAppZip installed remote package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 1221
    .local v4, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-eqz v4, :cond_0

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 1223
    :try_start_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    invoke-interface {v5, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->updateDeckOfCardsAppZip(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1224
    :catch_0
    move-exception v0

    .line 1225
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v5, "DeckOfCards"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LocalDeckOfCardsManager.updateDeckOfCardsAppZip Exception in upgrading the applet: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1209
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1228
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :cond_0
    :try_start_3
    const-string v6, "DeckOfCards"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Invalid toqAppletRecord for upgrade: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v4, :cond_1

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    :goto_1
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v5, "NULL"

    goto :goto_1

    .line 1232
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "ks":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    :cond_2
    const-string v5, "DeckOfCards"

    const-string v6, " There are no installed applets"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1234
    :cond_3
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized updateInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V
    .locals 6
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LocalDeckOfCardsManager.updateInternalDeckOfCards - deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->getId()Ljava/lang/String;

    move-result-object v1

    .line 438
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 439
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deck of cards is not installed, deckOfCards: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 442
    .restart local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->toqAppletRecordsMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;

    .line 451
    .local v2, "toqAppletRecord":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;
    if-nez v2, :cond_1

    .line 452
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Internal applet has no corresponding toq applet record, packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 456
    :cond_1
    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isRemote()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-nez v3, :cond_2

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->isInstalled()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;->access$200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$ToqAppletRecord;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 457
    :cond_2
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toq applet record for internal applet has invalid state, toqAppletRecord: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->deckOfCardsSync:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;->updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 466
    sget-object v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UPDATE:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-direct {p0, v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchEvent(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    monitor-exit p0

    return-void

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :try_start_3
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An error occurred updating the deck of cards ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method
