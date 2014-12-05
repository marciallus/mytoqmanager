.class public Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;
.super Ljava/lang/Object;
.source "AllJoynDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$DeckOfCardsEventListenerImpl;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;,
        Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;
    }
.end annotation


# static fields
.field public static final ABOUT_ICON_DEFAULT_URL:Ljava/lang/String; = "local://defaultURL"

.field public static final ABOUT_ICON_LOCAL_PREFIX_URL:Ljava/lang/String; = "local://DeviceContent/"

.field private static final APP_NAME:Ljava/lang/String; = "AllJoyn"

.field private static final APP_PACKAGE_NAME:Ljava/lang/String; = "com.qualcomm.qce.alljoyn"

.field private static final APP_ZIP_FILE:Ljava/lang/String; = "alljoyn_app.zip"

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "devices.dat"

.field private static final FMS_DIR:Ljava/lang/String; = "/packages/com.qualcomm.qce.alljoyn/"

.field private static m_current:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;

.field private deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

.field private localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

.field private m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

.field m_deviceList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, "AllJoynDeviceManager"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->TAG:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    .line 84
    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$AJStateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->addStateListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;)V

    .line 96
    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->clearDeviceList()V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    return-object v0
.end method

.method private clearDeviceList()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 168
    :cond_0
    return-void
.end method

.method private getAllDevices()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 250
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method private getDeviceList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    return-object v0
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_current:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_current:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    .line 90
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_current:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "deviceID"    # Ljava/util/UUID;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDeviceList()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected declared-synchronized generateDatFile()V
    .locals 12

    .prologue
    .line 405
    monitor-enter p0

    const/4 v5, 0x0

    .line 406
    .local v5, "fileWriter":Ljava/io/FileWriter;
    const/4 v0, 0x0

    .line 407
    .local v0, "bufferedWriter":Ljava/io/BufferedWriter;
    const/4 v8, 0x0

    .line 409
    .local v8, "localAppDataFile":Ljava/io/File;
    :try_start_0
    const-string v9, ""

    .line 412
    .local v9, "lua":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevices()Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 413
    .local v3, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .line 414
    .local v2, "d":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getLuaString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 418
    .end local v2    # "d":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_2

    .line 420
    :try_start_1
    const-string v10, "devices.dat"

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->removeFileFMS(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 422
    :catch_0
    move-exception v4

    .line 423
    .local v4, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :try_start_2
    const-string v10, "AllJoynDeviceManager"

    invoke-static {v10, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 405
    .end local v3    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    .end local v4    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "lua":Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_2
    monitor-exit p0

    throw v10

    .line 430
    .restart local v3    # "devices":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v9    # "lua":Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v10, "devices"

    const-string v11, ".dat"

    invoke-static {v10, v11}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 432
    new-instance v6, Ljava/io/FileWriter;

    invoke-direct {v6, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 433
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    .local v6, "fileWriter":Ljava/io/FileWriter;
    :try_start_4
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 434
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .local v1, "bufferedWriter":Ljava/io/BufferedWriter;
    :try_start_5
    invoke-virtual {v1, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 442
    if-eqz v1, :cond_3

    .line 443
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 446
    :cond_3
    if-eqz v6, :cond_4

    .line 447
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_4
    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 454
    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "fileWriter":Ljava/io/FileWriter;
    :cond_5
    :goto_3
    if-eqz v8, :cond_1

    .line 455
    :try_start_7
    const-string v10, "AllJoynDeviceManager"

    const-string v11, "generateDatFile - sending devices.dat"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v10, "devices.dat"

    invoke-virtual {p0, v8, v10}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->sendFileFMS(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 450
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "fileWriter":Ljava/io/FileWriter;
    :catch_1
    move-exception v4

    .line 451
    .local v4, "e":Ljava/io/IOException;
    :try_start_8
    const-string v10, "AllJoynDeviceManager"

    invoke-static {v10, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v5, v6

    .line 453
    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_3

    .line 437
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 438
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_9
    const-string v10, "AllJoynDeviceManager"

    invoke-static {v10, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 442
    if-eqz v0, :cond_6

    .line 443
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 446
    :cond_6
    if-eqz v5, :cond_5

    .line 447
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 450
    :catch_3
    move-exception v4

    .line 451
    :try_start_b
    const-string v10, "AllJoynDeviceManager"

    invoke-static {v10, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 441
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    .line 442
    :goto_5
    if-eqz v0, :cond_7

    .line 443
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    .line 446
    :cond_7
    if-eqz v5, :cond_8

    .line 447
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 452
    :cond_8
    :goto_6
    :try_start_d
    throw v10

    .line 450
    :catch_4
    move-exception v4

    .line 451
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "AllJoynDeviceManager"

    invoke-static {v11, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 441
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    .restart local v6    # "fileWriter":Ljava/io/FileWriter;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_5

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "fileWriter":Ljava/io/FileWriter;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_5

    .line 437
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    .restart local v6    # "fileWriter":Ljava/io/FileWriter;
    :catch_5
    move-exception v4

    move-object v5, v6

    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_4

    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "fileWriter":Ljava/io/FileWriter;
    :catch_6
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_4

    .line 405
    .end local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    .restart local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v6    # "fileWriter":Ljava/io/FileWriter;
    :catchall_4
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufferedWriter":Ljava/io/BufferedWriter;
    .restart local v0    # "bufferedWriter":Ljava/io/BufferedWriter;
    move-object v5, v6

    .end local v6    # "fileWriter":Ljava/io/FileWriter;
    .restart local v5    # "fileWriter":Ljava/io/FileWriter;
    goto :goto_2
.end method

.method public getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .locals 2
    .param p1, "deviceID"    # Ljava/util/UUID;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDeviceList()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    goto :goto_0
.end method

.method protected getDeviceByServiceName(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getAllDevices()Ljava/util/ArrayList;

    move-result-object v1

    .line 230
    .local v1, "devices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    if-nez v1, :cond_0

    move-object v0, v3

    .line 243
    :goto_0
    return-object v0

    .line 232
    :cond_0
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 234
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .line 237
    .local v0, "current":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getServiceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getServiceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .end local v0    # "current":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    :cond_2
    move-object v0, v3

    .line 243
    goto :goto_0
.end method

.method public getDevices()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    :cond_0
    :goto_0
    return-object v3

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getAllDevices()Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    .local v0, "allDevices":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 177
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    if-eqz v2, :cond_3

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .line 182
    .local v1, "current":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getStatus()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->GONE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    if-eq v4, v5, :cond_2

    .line 183
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    .end local v1    # "current":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;>;"
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getIconUsingContent(Ljava/util/UUID;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "deviceID"    # Ljava/util/UUID;

    .prologue
    const/4 v11, 0x0

    .line 740
    const-string v8, "AllJoynDeviceManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getIconUsingContent - Device: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const/4 v3, 0x0

    .line 743
    .local v3, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v1

    .line 744
    .local v1, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-nez v1, :cond_0

    move-object v4, v3

    .line 783
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .local v4, "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 748
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconContent()[B

    move-result-object v5

    .line 749
    .local v5, "iconContent":[B
    if-eqz v5, :cond_1

    .line 750
    const-string v8, "AllJoynDeviceManager"

    const-string v9, "getIconUsingContent - Successfully retrieved icon content"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    array-length v8, v5

    invoke-static {v5, v11, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 754
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconMimeType()Ljava/lang/String;

    move-result-object v6

    .line 755
    .local v6, "mimeType":Ljava/lang/String;
    const-string v8, "image/png"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 756
    move-object v3, v0

    .line 775
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_1
    :goto_1
    if-nez v3, :cond_3

    .line 776
    const-string v8, "AllJoynDeviceManager"

    const-string v9, "getIconUsingContent - Null icon"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setIsUsingDefaultIcon(Z)V

    :goto_2
    move-object v4, v3

    .line 783
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 760
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 761
    .local v7, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v0, v8, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 762
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 765
    :try_start_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 767
    :catch_0
    move-exception v2

    .line 768
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "AllJoynDeviceManager"

    invoke-static {v8, v2}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 780
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "mimeType":Ljava/lang/String;
    .end local v7    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_3
    const-string v8, "AllJoynDeviceManager"

    const-string v9, "getIconUsingContent - Successfully retrieved icon"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {v1, v11}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setIsUsingDefaultIcon(Z)V

    goto :goto_2
.end method

.method public getIconUsingURL(Ljava/util/UUID;)Landroid/graphics/Bitmap;
    .locals 13
    .param p1, "deviceID"    # Ljava/util/UUID;

    .prologue
    .line 676
    const-string v10, "AllJoynDeviceManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getIconUsingURL - Device: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    const/4 v3, 0x0

    .line 680
    .local v3, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v1

    .line 681
    .local v1, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-nez v1, :cond_0

    move-object v4, v3

    .line 736
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .local v4, "icon":Landroid/graphics/Bitmap;
    :goto_0
    return-object v4

    .line 685
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconUrl()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;

    move-result-object v9

    .line 687
    .local v9, "response":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->getStatus()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    move-result-object v10

    sget-object v11, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;->Status_OK:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse$ResponseCode;

    if-ne v10, v11, :cond_3

    .line 688
    const-string v10, "AllJoynDeviceManager"

    const-string v11, "getIconUsingURL - Successfully retrieved icon url"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual {v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceResponse;->getMsg()Ljava/lang/String;

    move-result-object v5

    .line 691
    .local v5, "iconUrl":Ljava/lang/String;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    .line 692
    invoke-virtual {v1, v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setStoredIconUrl(Ljava/lang/String;)V

    .line 694
    :try_start_0
    new-instance v10, Ljava/net/URL;

    invoke-direct {v10, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/InputStream;

    .line 695
    .local v6, "is":Ljava/io/InputStream;
    if-nez v6, :cond_1

    move-object v4, v3

    .line 696
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 699
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_1
    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 700
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 701
    const/4 v6, 0x0

    .line 702
    if-nez v0, :cond_2

    move-object v4, v3

    .line 703
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 707
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconMimeType()Ljava/lang/String;

    move-result-object v7

    .line 708
    .local v7, "mimeType":Ljava/lang/String;
    const-string v10, "image/png"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 709
    move-object v3, v0

    .line 728
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "iconUrl":Ljava/lang/String;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_1
    if-nez v3, :cond_5

    .line 729
    const-string v10, "AllJoynDeviceManager"

    const-string v11, "getIconUsingURL - Null icon"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setIsUsingDefaultIcon(Z)V

    :goto_2
    move-object v4, v3

    .line 736
    .end local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v4    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 713
    .end local v4    # "icon":Landroid/graphics/Bitmap;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v3    # "icon":Landroid/graphics/Bitmap;
    .restart local v5    # "iconUrl":Ljava/lang/String;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "mimeType":Ljava/lang/String;
    :cond_4
    :try_start_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 714
    .local v8, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 715
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 717
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 718
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 722
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "mimeType":Ljava/lang/String;
    .end local v8    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 723
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "AllJoynDeviceManager"

    invoke-static {v10, v2}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 733
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "iconUrl":Ljava/lang/String;
    :cond_5
    const-string v10, "AllJoynDeviceManager"

    const-string v11, "getIconUsingURL - Successfully retrieved icon"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setIsUsingDefaultIcon(Z)V

    goto :goto_2
.end method

.method public init()V
    .locals 5

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDeviceList()Ljava/util/Map;

    .line 101
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->init()V

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    if-nez v1, :cond_1

    .line 109
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    if-nez v1, :cond_2

    .line 115
    new-instance v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    const-string v2, "com.qualcomm.qce.alljoyn"

    const-string v3, "AllJoyn"

    const-string v4, "alljoyn_app.zip"

    invoke-direct {v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->setNewAppZip(Z)V

    .line 122
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->installInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V

    .line 128
    :goto_1
    const-string v1, "AllJoynDeviceManager"

    const-string v2, "init - removing devices.dat"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v1, "devices.dat"

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->removeFileFMS(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    :goto_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v1

    const-string v2, "com.qualcomm.qce.alljoyn"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->removeInternalEventListener(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v1

    const-string v2, "com.qualcomm.qce.alljoyn"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$DeckOfCardsEventListenerImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$DeckOfCardsEventListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;)V

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->addInternalEventListener(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;)V

    .line 138
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AllJoynDeviceManager"

    const-string v2, "init - an error occurred getting reference to the local deck of cards manager"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->updateInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;)V
    :try_end_2
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 131
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v1, "AllJoynDeviceManager"

    const-string v2, "init - an error occured installing/updating the deck of cards on the WD"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public invertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "original"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 787
    const v8, 0xffffff

    .line 789
    .local v8, "RGB_MASK":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    .local v0, "inversion":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 793
    .local v3, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 794
    .local v7, "height":I
    mul-int v10, v3, v7

    .line 797
    .local v10, "size":I
    new-array v1, v10, [I

    .local v1, "pixels":[I
    move v4, v2

    move v5, v2

    move v6, v3

    .line 798
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 801
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    .line 802
    aget v4, v1, v9

    const v5, 0xffffff

    xor-int/2addr v4, v5

    aput v4, v1, v9

    .line 801
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    move v4, v2

    move v5, v2

    move v6, v3

    .line 803
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 806
    return-object v0
.end method

.method public isDeviceUsingDefaultImage(Ljava/util/UUID;)Z
    .locals 2
    .param p1, "deviceID"    # Ljava/util/UUID;

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v0

    .line 615
    .local v0, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-eqz v0, :cond_0

    .line 616
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIsUsingDefaultIcon()Z

    move-result v1

    .line 618
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onAnnouncement(Ljava/lang/String;S[Lorg/alljoyn/services/common/BusObjectDescription;Ljava/util/Map;)V
    .locals 14
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "port"    # S
    .param p3, "objectDescriptions"    # [Lorg/alljoyn/services/common/BusObjectDescription;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "S[",
            "Lorg/alljoyn/services/common/BusObjectDescription;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/bus/Variant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 322
    .local p4, "serviceMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/alljoyn/bus/Variant;>;"
    const/4 v8, 0x0

    .line 324
    .local v8, "newMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-static/range {p4 .. p4}, Lorg/alljoyn/services/common/utils/TransportUtil;->fromVariantMap(Ljava/util/Map;)Ljava/util/Map;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 328
    :goto_0
    if-nez v8, :cond_0

    .line 402
    :goto_1
    return-void

    .line 325
    :catch_0
    move-exception v4

    .line 326
    .local v4, "e":Lorg/alljoyn/bus/BusException;
    invoke-virtual {v4}, Lorg/alljoyn/bus/BusException;->printStackTrace()V

    goto :goto_0

    .line 331
    .end local v4    # "e":Lorg/alljoyn/bus/BusException;
    :cond_0
    const-string v11, "AppId"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/UUID;

    .line 332
    .local v9, "uniqueId":Ljava/util/UUID;
    if-nez v9, :cond_1

    .line 333
    const-string v11, "AllJoynDeviceManager"

    const-string v12, "onAnnouncement: received null device uuid!! ignoring."

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 336
    :cond_1
    const-string v11, "DeviceName"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 337
    .local v5, "friendlyName":Ljava/lang/String;
    const-string v11, "DefaultLanguage"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 340
    .local v2, "defaultLanguage":Ljava/lang/String;
    const-string v11, "SupportUrl"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 346
    .local v6, "helpPage":Ljava/lang/String;
    const-string v11, "AllJoynDeviceManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onAnnouncement: Receive announcment from device "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Name = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const/4 v7, 0x0

    .line 349
    .local v7, "isNewDevice":Z
    invoke-virtual {p0, v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v3

    .line 350
    .local v3, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-eqz v3, :cond_5

    .line 351
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->stopControlPanelSession()V

    .line 352
    const/4 v3, 0x0

    .line 361
    :goto_2
    new-instance v3, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .end local v3    # "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    invoke-direct {v3, p1, v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;-><init>(Ljava/lang/String;Ljava/util/UUID;)V

    .line 362
    .restart local v3    # "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDeviceList()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    invoke-virtual {v3, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setServiceName(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v3, v8}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setAbout(Ljava/util/Map;)V

    .line 366
    invoke-virtual {v3, v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setFriendlyName(Ljava/lang/String;)V

    .line 367
    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setInterfaces([Lorg/alljoyn/services/common/BusObjectDescription;)V

    .line 368
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setDirty()V

    .line 369
    move/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setPort(S)V

    .line 370
    invoke-virtual {v3, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setDefaultLanguage(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v3, v6}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setHelpUrl(Ljava/lang/String;)V

    .line 374
    const/4 v10, 0x0

    .line 375
    .local v10, "wasDeviceGone":Z
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getStatus()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    move-result-object v11

    sget-object v12, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->GONE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    if-ne v11, v12, :cond_2

    .line 376
    const/4 v10, 0x1

    .line 378
    :cond_2
    sget-object v11, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->AVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-virtual {v3, v11}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setStatus(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;)V

    .line 379
    if-nez v10, :cond_3

    if-eqz v7, :cond_4

    .line 380
    :cond_3
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->generateDatFile()V

    .line 384
    :cond_4
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;

    invoke-direct {v1, p0, v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$1;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;Ljava/util/UUID;)V

    .line 400
    .local v1, "bkgdTask":Landroid/os/AsyncTask;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v1, v11}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 401
    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getId()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->addNewDeviceToQueue(Ljava/util/UUID;)V

    goto/16 :goto_1

    .line 355
    .end local v1    # "bkgdTask":Landroid/os/AsyncTask;
    .end local v10    # "wasDeviceGone":Z
    :cond_5
    const/4 v7, 0x1

    goto :goto_2
.end method

.method public onDeviceAlive(Ljava/lang/String;)V
    .locals 5
    .param p1, "busName"    # Ljava/lang/String;

    .prologue
    .line 299
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDeviceByServiceName(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v0

    .line 301
    .local v0, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    const-string v2, "AllJoynDeviceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAlive busName = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", friendly name = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    if-eqz v0, :cond_1

    .line 308
    const-string v1, "AllJoynDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAlive device is alive busName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", friendly name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->AVAILABLE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setStatus(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;)V

    .line 311
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_deviceList:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->generateDatFile()V

    .line 316
    :goto_1
    return-void

    .line 301
    :cond_0
    const-string v1, " device not found"

    goto :goto_0

    .line 314
    :cond_1
    const-string v1, "AllJoynDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceAlive found no device for busName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onDeviceFound(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->onDeviceAlive(Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public onDeviceLost(Ljava/lang/String;)V
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 257
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDeviceByServiceName(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v0

    .line 264
    .local v0, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    const-string v4, "AllJoynDeviceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceLost busName = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", friendly name = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    if-eqz v0, :cond_0

    .line 272
    const-string v3, "AllJoynDeviceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceLost verified. busName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", friendly name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getId()Ljava/util/UUID;

    move-result-object v1

    .line 274
    .local v1, "deviceId":Ljava/util/UUID;
    const-string v3, "AllJoynDeviceManager"

    const-string v4, "lost an unpinned device. Deleting the device"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    :try_start_0
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->removeFileFMS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_1
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->removeDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .line 282
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->generateDatFile()V

    .line 292
    .end local v1    # "deviceId":Ljava/util/UUID;
    :cond_0
    return-void

    .line 264
    :cond_1
    const-string v3, " device not found"

    goto :goto_0

    .line 278
    .restart local v1    # "deviceId":Ljava/util/UUID;
    :catch_0
    move-exception v2

    .line 279
    .local v2, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v3, "AllJoynDeviceManager"

    invoke-static {v3, v2}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public registerReceiverForWifiConnectionChanged()V
    .locals 3

    .prologue
    .line 461
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 462
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 464
    new-instance v1, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$2;-><init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 525
    return-void
.end method

.method public removeDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .locals 4
    .param p1, "deviceID"    # Ljava/util/UUID;

    .prologue
    .line 210
    if-nez p1, :cond_0

    .line 211
    const/4 v2, 0x0

    .line 224
    :goto_0
    return-object v2

    .line 214
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v0

    .line 215
    .local v0, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-eqz v0, :cond_1

    .line 217
    :try_start_0
    sget-object v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;->GONE:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setStatus(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice$DeviceStatus;)V

    .line 218
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->removeFileFMS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDeviceList()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v2, "AllJoynDeviceManager"

    invoke-static {v2, v1}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method removeFileFMS(Ljava/lang/String;)V
    .locals 7
    .param p1, "wdFile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 585
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    .line 587
    .local v1, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v1, :cond_0

    .line 588
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/packages/com.qualcomm.qce.alljoyn/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 590
    .local v3, "wdFilePath":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v1, v4, v3}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsRemoveFile(ILjava/lang/String;)I

    move-result v2

    .line 592
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 593
    const-string v4, "AllJoynDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeFileFMS - Success, wdFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    .end local v2    # "result":I
    .end local v3    # "wdFilePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 596
    .restart local v2    # "result":I
    .restart local v3    # "wdFilePath":Ljava/lang/String;
    :cond_1
    const-string v4, "AllJoynDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeFileFMS - Failed, wdFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 599
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AllJoynDeviceManager"

    invoke-static {v4, v0}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method sendFileFMS(Ljava/io/File;Ljava/lang/String;)V
    .locals 7
    .param p1, "localFile"    # Ljava/io/File;
    .param p2, "wdFile"    # Ljava/lang/String;

    .prologue
    .line 563
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    .line 565
    .local v1, "fmsController":Lcom/qualcomm/toq/smartwatch/controller/FMSController;
    if-eqz v1, :cond_0

    .line 566
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/packages/com.qualcomm.qce.alljoyn/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 568
    .local v3, "wdFilePath":Ljava/lang/String;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v1, v4, v5, v3, v6}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 570
    .local v2, "result":I
    if-nez v2, :cond_1

    .line 571
    const-string v4, "AllJoynDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFileFMS - Success, localFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wdFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .end local v2    # "result":I
    .end local v3    # "wdFilePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 574
    .restart local v2    # "result":I
    .restart local v3    # "wdFilePath":Ljava/lang/String;
    :cond_1
    const-string v4, "AllJoynDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendFileFMS - Failed, localFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", wdFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 577
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "AllJoynDeviceManager"

    invoke-static {v4, v0}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendIconToWD(Ljava/util/UUID;)Z
    .locals 14
    .param p1, "deviceID"    # Ljava/util/UUID;

    .prologue
    .line 622
    const-string v9, "AllJoynDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendIconToWD - Device: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const/4 v6, 0x0

    .line 624
    .local v6, "success":Z
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v3

    .line 625
    .local v3, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-nez v3, :cond_0

    move v7, v6

    .line 672
    .end local v6    # "success":Z
    .local v7, "success":I
    :goto_0
    return v7

    .line 630
    .end local v7    # "success":I
    .restart local v6    # "success":Z
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getIconUsingURL(Ljava/util/UUID;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 631
    .local v5, "icon":Landroid/graphics/Bitmap;
    if-nez v5, :cond_1

    .line 632
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getIconUsingContent(Ljava/util/UUID;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 633
    if-nez v5, :cond_1

    .line 634
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->setIsUsingDefaultIcon(Z)V

    move v7, v6

    .line 635
    .restart local v7    # "success":I
    goto :goto_0

    .line 639
    .end local v7    # "success":I
    :cond_1
    const/4 v8, 0x0

    .line 640
    .local v8, "tempIconFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 643
    .local v0, "bos":Ljava/io/BufferedOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->invertBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/16 v11, 0x30

    const/16 v12, 0x30

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->convertPNGIcon(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    .line 644
    .local v2, "convertedBitmapData":[B
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getId()Ljava/util/UUID;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Icon"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ".img"

    invoke-static {v9, v10}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 645
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 647
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 648
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 649
    const-string v9, "AllJoynDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendIconToWD - IconFileName: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->sendFileFMS(Ljava/io/File;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->generateDatFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 652
    const/4 v6, 0x1

    .line 658
    if-eqz v8, :cond_2

    .line 659
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 662
    :cond_2
    if-eqz v1, :cond_7

    .line 663
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 664
    const/4 v0, 0x0

    .line 671
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "convertedBitmapData":[B
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    :cond_3
    :goto_1
    const-string v9, "AllJoynDeviceManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendIconToWD - Result: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v6

    .line 672
    .restart local v7    # "success":I
    goto/16 :goto_0

    .line 667
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v7    # "success":I
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "convertedBitmapData":[B
    :catch_0
    move-exception v4

    .line 668
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "AllJoynDeviceManager"

    invoke-static {v9, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 670
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 654
    .end local v2    # "convertedBitmapData":[B
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 655
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v9, "AllJoynDeviceManager"

    invoke-static {v9, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 658
    if-eqz v8, :cond_4

    .line 659
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 662
    :cond_4
    if-eqz v0, :cond_3

    .line 663
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 664
    const/4 v0, 0x0

    goto :goto_1

    .line 667
    :catch_2
    move-exception v4

    .line 668
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "AllJoynDeviceManager"

    invoke-static {v9, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 658
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v8, :cond_5

    .line 659
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 662
    :cond_5
    if-eqz v0, :cond_6

    .line 663
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 664
    const/4 v0, 0x0

    .line 669
    :cond_6
    :goto_4
    throw v9

    .line 667
    :catch_3
    move-exception v4

    .line 668
    .restart local v4    # "e":Ljava/io/IOException;
    const-string v10, "AllJoynDeviceManager"

    invoke-static {v10, v4}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4

    .line 658
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "convertedBitmapData":[B
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 654
    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_2

    .end local v0    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    :cond_7
    move-object v0, v1

    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v0    # "bos":Ljava/io/BufferedOutputStream;
    goto :goto_1
.end method

.method public shutdown()V
    .locals 5

    .prologue
    .line 141
    const-string v3, "AllJoynDeviceManager"

    const-string v4, "Going to shutdown and should remove the alljoyn deck of cards"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :try_start_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->uninstallInternalDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;)V

    .line 144
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->m_ImageCacheManager:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->stopImageThread()V

    .line 146
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    .line 147
    .local v0, "d":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getIconFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->removeFileFMS(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    .end local v0    # "d":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    const-string v3, "AllJoynDeviceManager"

    const-string v4, "shutdown - an error occured uninstalling the deck of cards on the WD"

    invoke-static {v3, v4, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 154
    .end local v1    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    move-result-object v3

    const-string v4, "com.qualcomm.qce.alljoyn"

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->removeInternalEventListener(Ljava/lang/String;)V

    .line 155
    return-void

    .line 149
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->clearDeviceList()V
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public unregisterReceiverForWifiConnectionChanged()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 529
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 530
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 532
    :cond_0
    return-void
.end method

.method protected updateTheUi(Ljava/lang/String;)V
    .locals 1
    .param p1, "refreshType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, p1, v0, v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->updateTheUi(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    .line 539
    return-void
.end method

.method protected updateTheUi(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V
    .locals 6
    .param p1, "refreshType"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "m_uniqueId"    # Ljava/util/UUID;

    .prologue
    .line 550
    const-string v1, ""

    .line 551
    .local v1, "deviceName":Ljava/lang/String;
    invoke-virtual {p0, p3}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v0

    .line 552
    .local v0, "d":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getFriendlyName()Ljava/lang/String;

    move-result-object v1

    .line 554
    :cond_0
    const-string v3, "AllJoynDeviceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Send intent: Action = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " UUID = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " device name = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " msg = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v2, "AJ_ON_DEVICE_FOUND"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    :cond_1
    return-void

    .line 554
    :cond_2
    const-string v2, ""

    goto :goto_0

    :cond_3
    const-string v2, ""

    goto :goto_1

    :cond_4
    const-string v2, ""

    goto :goto_2
.end method

.method protected updateTheUi(Ljava/lang/String;Ljava/util/UUID;)V
    .locals 1
    .param p1, "refreshType"    # Ljava/lang/String;
    .param p2, "m_uniqueId"    # Ljava/util/UUID;

    .prologue
    .line 544
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->updateTheUi(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;)V

    .line 545
    return-void
.end method
