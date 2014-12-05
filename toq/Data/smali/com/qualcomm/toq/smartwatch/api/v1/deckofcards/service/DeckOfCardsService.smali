.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/DeckOfCardsService;
.super Landroid/app/Service;
.source "DeckOfCardsService.java"


# instance fields
.field private remoteDeckOfCardsManagerImpl_v1:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 88
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeckOfCardsService.onBind - intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "binder":Landroid/os/IBinder;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.qualcomm.toq.smartwatch.api.v1.deckofcards.remote.rpc.IDeckOfCardsManager_v1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/DeckOfCardsService;->remoteDeckOfCardsManagerImpl_v1:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;

    .line 99
    :goto_0
    return-object v0

    .line 96
    :cond_0
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DeckOfCardsService.onBind - unrecognised interface requested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 37
    const-string v3, "DeckOfCards"

    const-string v4, "DeckOfCardsService.onCreate - start..."

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-boolean v3, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v3, :cond_1

    .line 42
    const-string v3, "DeckOfCards"

    const-string v4, "DeckOfCardsService.onCreate - Toq service not running, launching..."

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 46
    .local v2, "mBTAdapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->isEulaAgreementAccepted()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/DeckOfCardsService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mBTAdapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;

    invoke-direct {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;-><init>()V

    iput-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/DeckOfCardsService;->remoteDeckOfCardsManagerImpl_v1:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DeckOfCardsService.onCreate - remoteDeckOfCardsManagerImpl_v1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/DeckOfCardsService;->remoteDeckOfCardsManagerImpl_v1:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/service/RemoteDeckOfCardsManagerImpl_v1;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DeckOfCards"

    const-string v4, "DeckOfCardsService.onCreate - an error occurred launching the Toq service"

    invoke-static {v3, v4, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "DeckOfCards"

    const-string v4, "DeckOfCardsService.onCreate - Toq service already running"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :catch_1
    move-exception v0

    .line 68
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unable to start service"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 108
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 79
    const/4 v0, 0x1

    return v0
.end method
