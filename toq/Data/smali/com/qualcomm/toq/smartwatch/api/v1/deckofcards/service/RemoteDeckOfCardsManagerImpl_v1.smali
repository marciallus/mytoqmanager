.class final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;
.source "RemoteDeckOfCardsManagerImpl_v1.java"


# static fields
.field private static final VERIFY_DEVICE_STATE:Z = true

.field private static final VERIFY_SECURITY:Z = true


# instance fields
.field private context:Landroid/content/Context;

.field private localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;


# direct methods
.method constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;-><init>()V

    .line 44
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    .line 46
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    .line 48
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.constructor"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method private isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .prologue
    const/16 v3, 0x98

    .line 457
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getClientApiVersion()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 458
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isValidClientApiVersion - client api version incompatible (client api version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->getClientApiVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Toq app api version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), Toq app upgrade required..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    const/16 v0, -0x258

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    .line 464
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidCredentials(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .prologue
    const/16 v3, -0xc8

    const/4 v0, 0x0

    .line 500
    if-nez p2, :cond_1

    .line 501
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isValidCredentials - package name is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v2, 0x7f0a00ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    .line 517
    :cond_0
    :goto_0
    return v0

    .line 506
    :cond_1
    if-nez p3, :cond_2

    .line 507
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isValidCredentials - token is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v2, 0x7f0a00ed

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isValidInstall(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isValidDeviceState(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;

    .prologue
    const/4 v0, 0x0

    .line 476
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isBluetoothEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isValidDeviceState - bluetooth is disabled"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/16 v1, -0x64

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v3, 0x7f0a00ea

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    .line 488
    :goto_0
    return v0

    .line 482
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isValidWDState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isValidDeviceState - qualcomm Toq invalid state"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/16 v1, -0x65

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v3, 0x7f0a00eb

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;)V
    .locals 3
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "remoteCallback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.addCallback - status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    if-nez p1, :cond_0

    .line 376
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.addCallback - status is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "status is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 387
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidCredentials(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    if-nez p4, :cond_3

    .line 394
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.addCallback - remote callback is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/16 v0, -0x3e7

    const-string v1, "remote callback is null"

    invoke-virtual {p1, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v0, p2, p4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->addCallback(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1;)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V

    goto :goto_0
.end method

.method public installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .param p4, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .param p5, "remoteInstallationCallback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v3, -0x3e7

    .line 141
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", deckOfCards: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resourceStore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", remoteInstallationCallback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-nez p1, :cond_0

    .line 146
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - status is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "status is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 197
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidDeviceState(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    if-nez p2, :cond_3

    .line 164
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - package name is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v0, -0xc8

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v2, 0x7f0a00ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - deck of cards already installed"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const/16 v0, -0xca

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v2, 0x7f0a00ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_4
    if-nez p3, :cond_5

    .line 178
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - deck of cards is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "deck of cards is null"

    invoke-virtual {p1, v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 186
    :cond_5
    if-nez p5, :cond_6

    .line 187
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.installDeckOfCards - remote installation callback is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "remote installation callback is null"

    invoke-virtual {p1, v3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_6
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->triggerInstallation(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;)V

    .line 196
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V

    goto :goto_0
.end method

.method public isToqWatchConnected(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;)Z
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 58
    if-nez p1, :cond_0

    .line 59
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isToqWatchConnected - status is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "status is null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 82
    :goto_0
    return v0

    .line 70
    :cond_1
    if-nez p2, :cond_2

    .line 71
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isToqWatchConnected - package name is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/16 v1, -0xc8

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->context:Landroid/content/Context;

    const v3, 0x7f0a00ec

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isBluetoothEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/DeckOfCardsUtils;->isValidWDState()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 80
    .local v0, "isToqWatchConnected":Z
    :cond_3
    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V

    goto :goto_0
.end method

.method public isValidInstall(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 92
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteDeckOfCardsManagerImpl_v1.isValidInstall - status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    if-nez p1, :cond_0

    .line 96
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.isValidInstall - status is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "status is null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 131
    :cond_1
    :goto_0
    return v1

    .line 107
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidCredentials(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 112
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->isInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v2, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->manualUninstall(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeckOfCards"

    const-string v3, "RemoteDeckOfCardsManagerImpl_v1.isValidInstall - an error occurred uninstalling"

    invoke-static {v2, v3, v0}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    const/16 v2, -0x1f4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual {p1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V

    move v1, v2

    .line 131
    goto :goto_0
.end method

.method public removeCallback(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 413
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.removeCallback - status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-nez p1, :cond_0

    .line 417
    const-string v0, "DeckOfCards"

    const-string v1, "RemoteDeckOfCardsManagerImpl_v1.removeCallback - status is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "status is null"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 438
    :cond_1
    :goto_0
    return-void

    .line 428
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidCredentials(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeCallback(Ljava/lang/String;)V

    .line 437
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V

    goto :goto_0
.end method

.method public sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;)V
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "notification"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteToqNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteDeckOfCardsManagerImpl_v1.sendNotification - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-nez p1, :cond_0

    .line 319
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.sendNotification - status is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "status is null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 324
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 363
    :cond_1
    :goto_0
    return-void

    .line 330
    :cond_2
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidDeviceState(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidCredentials(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 342
    if-nez p4, :cond_3

    .line 343
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.sendNotification - notification is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const/16 v1, -0x3e7

    const-string v2, "notification is null"

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 351
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v1, p4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->sendNotification(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;)V

    .line 354
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteDeckOfCardsManagerImpl_v1.sendNotification - an error occurred sending the notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    const/16 v1, -0x12c

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public uninstallDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteDeckOfCardsManagerImpl_v1.uninstallDeckOfCards - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    if-nez p1, :cond_0

    .line 269
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.uninstallDeckOfCards - status is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "status is null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 280
    :cond_2
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidDeviceState(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidCredentials(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->uninstallDeckOfCards(Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteDeckOfCardsManagerImpl_v1.uninstallDeckOfCards - an error occurred uninstalling the deck of cards for package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 302
    const/16 v1, -0x192

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    .locals 4
    .param p1, "status"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;
    .param p4, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
    .param p5, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 207
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", deckOfCards: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resourceStore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    if-nez p1, :cond_0

    .line 212
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - status is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "status is null"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidClientApiVersion(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 256
    :cond_1
    :goto_0
    return-void

    .line 223
    :cond_2
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidDeviceState(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->isValidCredentials(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    if-nez p4, :cond_3

    .line 236
    const-string v1, "DeckOfCards"

    const-string v2, "RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - deck of cards is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const/16 v1, -0x3e7

    const-string v2, "deck of cards is null"

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_3
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;->localDeckOfCardsManager:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-virtual {v1, p4, p5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V

    .line 247
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteDeckOfCardsManagerImpl_v1.updateDeckOfCards - an error occurred updating the deck of cards: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    const/16 v1, -0x191

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Status;->setStatus(ILjava/lang/String;)V

    goto :goto_0
.end method
