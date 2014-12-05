.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;
.super Ljava/lang/Object;
.source "DeckOfCardsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;
    }
.end annotation


# static fields
.field private static final TOQ_API_PREFS_FILE:Ljava/lang/String; = "QualcommToqApiPrefsFile_v1"

.field private static final TOQ_INSTALLATION_TOKEN:Ljava/lang/String; = "QualcommToqInstallationToken"

.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;


# instance fields
.field private _binder:Landroid/os/IBinder;

.field private _installationToken:Ljava/lang/String;

.field private binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;

.field private context:Landroid/content/Context;

.field private deckOfCardsEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private deckOfCardsManagerListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mutex:Ljava/lang/Object;

.field private packageName:Ljava/lang/String;

.field private service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

.field private serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->mutex:Ljava/lang/Object;

    .line 582
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->serviceConnection:Landroid/content/ServiceConnection;

    .line 76
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->context:Landroid/content/Context;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    .line 80
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;

    .line 82
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;

    .line 83
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;

    .line 85
    const-string v0, "Qualcomm Toq 3rd party API v1.5.2 (152)"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static synthetic access$0(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Landroid/os/IBinder;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_binder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$1(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    return-void
.end method

.method static synthetic access$10(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 847
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->resetInstallationToken()V

    return-void
.end method

.method static synthetic access$11(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$2(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    return-object v0
.end method

.method static synthetic access$3(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_binder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;

    return-object v0
.end method

.method static synthetic access$5(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 762
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isValidInstall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 637
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->addCallback()V

    return-void
.end method

.method static synthetic access$7(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$8(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    .locals 0

    .prologue
    .line 808
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->reset()V

    return-void
.end method

.method static synthetic access$9(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 870
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->writeInstallationToken(Ljava/lang/String;)V

    return-void
.end method

.method private addCallback()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 642
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 643
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "Deck of cards is not installed"

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 646
    :cond_0
    new-instance v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;-><init>()V

    .line 649
    .local v1, "status":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->getInstallationToken()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V

    invoke-interface {v2, v1, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;->addCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 753
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An error occurred adding the callback: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "An error occurred adding the callback"

    invoke-direct {v2, v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 756
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private getInstallationToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 830
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_installationToken:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 832
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_installationToken:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->readInstallationToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_installationToken:Ljava/lang/String;

    .line 832
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_installationToken:Ljava/lang/String;

    return-object v0

    .line 832
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 544
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    if-nez v0, :cond_1

    .line 546
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    monitor-enter v1

    .line 548
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    if-nez v0, :cond_0

    .line 549
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    .line 546
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    return-object v0

    .line 546
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isValidInstall()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 766
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-direct {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;-><init>()V

    .line 768
    .local v2, "status":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    const/4 v1, 0x0

    .line 772
    .local v1, "isValid":Z
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->getInstallationToken()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v2, v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;->isValidInstall(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 778
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v3

    .line 781
    .local v3, "statusCode":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 784
    const/16 v4, -0xc8

    if-eq v3, v4, :cond_0

    const/16 v4, -0xc9

    if-ne v3, v4, :cond_2

    .line 787
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->resetInstallationToken()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 803
    :cond_1
    return v1

    .line 774
    .end local v3    # "statusCode":I
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v5, "An error occurred validating the installation"

    invoke-direct {v4, v5, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 789
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "statusCode":I
    :catch_1
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v5, "An error occurred resetting the installation token"

    invoke-direct {v4, v5, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 796
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "An error occurred validating the installation: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(ILjava/lang/String;)V

    throw v4
.end method

.method private readInstallationToken()Ljava/lang/String;
    .locals 5

    .prologue
    .line 860
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->context:Landroid/content/Context;

    const-string v3, "QualcommToqApiPrefsFile_v1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 861
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "QualcommToqInstallationToken"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 865
    .local v0, "installationToken":Ljava/lang/String;
    return-object v0
.end method

.method private reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 810
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    .line 812
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_binder:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_binder:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 814
    iput-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_binder:Landroid/os/IBinder;

    .line 820
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 824
    return-void

    .line 821
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;

    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;->onDisconnected()V

    goto :goto_0
.end method

.method private resetInstallationToken()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 849
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->writeInstallationToken(Ljava/lang/String;)V

    .line 851
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 852
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_installationToken:Ljava/lang/String;

    .line 851
    monitor-exit v1

    .line 854
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private writeInstallationToken(Ljava/lang/String;)V
    .locals 5
    .param p1, "installationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->context:Landroid/content/Context;

    const-string v3, "QualcommToqApiPrefsFile_v1"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 875
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 876
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "QualcommToqInstallationToken"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 877
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 878
    return-void
.end method


# virtual methods
.method public addDeckOfCardsEventListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    .prologue
    .line 452
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method public addDeckOfCardsManagerListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 433
    return-void
.end method

.method public declared-synchronized connect()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 486
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 514
    :cond_0
    monitor-exit p0

    return-void

    .line 491
    :cond_1
    const/4 v2, 0x0

    .line 494
    .local v2, "isInstalled":Z
    :try_start_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.qualcomm.toq"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_2

    .line 495
    const/4 v2, 0x1

    .line 502
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 503
    :try_start_2
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v4, "Qualcomm Toq app is not installed on this device"

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 486
    .end local v2    # "isInstalled":Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 498
    .restart local v2    # "isInstalled":Z
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0

    .line 507
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :try_start_3
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.qualcomm.toq"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->serviceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 511
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v4, "Failed to bind to the Qualcomm Toq app service (different version of api or Toq app uninstalled?)"

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized disconnect()V
    .locals 3

    .prologue
    .line 526
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeckOfCardsManager.disconnect - an error occurred disconnecting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->w(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 526
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;)V
    .locals 1
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 170
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    .locals 7
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DeckOfCardsManager.installDeckOfCards - deckOfCards: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resourceStore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 198
    if-nez p1, :cond_0

    .line 199
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v2, "DeckOfCards must not be null"

    invoke-direct {v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v2, "Deck of cards applet is already installed"

    invoke-direct {v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    .local v1, "status":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :try_start_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    new-instance v5, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;->installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :try_start_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 268
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred installing the deck of cards applet: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 262
    :catch_0
    move-exception v6

    .line 263
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v2, "An error occurred installing the deck of cards applet"

    invoke-direct {v0, v2, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 271
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isInstalled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v1, "Not connected to Qualcomm Toq app service"

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 150
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->getInstallationToken()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isToqWatchConnected()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 108
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v4, "Not connected to Qualcomm Toq app service"

    invoke-direct {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 111
    :cond_0
    const/4 v1, 0x0

    .line 113
    .local v1, "isToqWatchConnected":Z
    :try_start_1
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-direct {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    .local v2, "status":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :try_start_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;->isToqWatchConnected(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 123
    :try_start_3
    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 124
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "An error occurred checking if the Toq smartwatch is connected: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v4, "An error occurred checking if the Toq smartwatch is connected"

    invoke-direct {v3, v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    monitor-exit p0

    return v1
.end method

.method public removeDeckOfCardsEventListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    .prologue
    .line 462
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 463
    return-void
.end method

.method public removeDeckOfCardsManagerListener(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 443
    return-void
.end method

.method public declared-synchronized sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;)V
    .locals 6
    .param p1, "notification"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeckOfCardsManager.sendNotification - notification: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 395
    if-nez p1, :cond_0

    .line 396
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "Notification must not be null"

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 400
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 401
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "Deck of cards applet is not installed"

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 407
    .local v1, "status":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->getInstallationToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;->sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 414
    :try_start_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    .line 415
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An error occurred sending the notification: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "An error occurred sending the notification"

    invoke-direct {v2, v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized uninstallDeckOfCards()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    const-string v2, "DeckOfCardsManager.uninstallDeckOfCards"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isInstalled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 351
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "Deck of cards applet is not installed"

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 354
    :cond_0
    :try_start_1
    new-instance v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    .local v1, "status":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->getInstallationToken()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v1, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;->uninstallDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 364
    :try_start_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 365
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "An error occurred uninstalling the deck of cards applet: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "An error occurred uninstalling the deck of cards applet"

    invoke-direct {v2, v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_4
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->resetInstallationToken()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 372
    :catch_1
    move-exception v0

    .line 373
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v3, "An error occurred resetting the installation token"

    invoke-direct {v2, v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public declared-synchronized updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;)V
    .locals 1
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 283
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    monitor-exit p0

    return-void

    .line 283
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    .locals 7
    .param p1, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .param p2, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "DeckOfCardsManager.updateDeckOfCards - deckOfCards: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", resourceStore: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 300
    if-nez p1, :cond_0

    .line 301
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v2, "DeckOfCards must not be null"

    invoke-direct {v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isInstalled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 306
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v2, "Deck of cards applet is not installed"

    invoke-direct {v0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_1
    new-instance v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    .local v1, "status":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    :try_start_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->packageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->getInstallationToken()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;->updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :try_start_3
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 333
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getStatusCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An error occurred updating the deck of cards applet: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 327
    :catch_0
    move-exception v6

    .line 328
    .local v6, "e":Ljava/lang/Exception;
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;

    const-string v2, "An error occurred updating the deck of cards applet"

    invoke-direct {v0, v2, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    monitor-exit p0

    return-void
.end method
