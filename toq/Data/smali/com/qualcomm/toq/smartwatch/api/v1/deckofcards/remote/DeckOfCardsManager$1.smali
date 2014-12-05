.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;
.super Ljava/lang/Object;
.source "DeckOfCardsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 589
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    invoke-static {v2, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$0(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Landroid/os/IBinder;)V

    .line 590
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    invoke-static {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$1(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;)V

    .line 592
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DeckOfCardsManager.ServiceConnection.onServiceConnected - className: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$2(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 595
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->_binder:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$3(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$4(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->isValidInstall()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$5(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->addCallback()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$6(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$7(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 616
    return-void

    .line 597
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :catch_0
    move-exception v0

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeckOfCardsManager.ServiceConnection.onServiceConnected - unable to link to binder death handler"

    invoke-static {v2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 607
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 608
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
    const-string v2, "DeckOfCardsManager.ServiceConnection.onServiceConnected - an error occurred adding the callback"

    invoke-static {v2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 613
    .end local v0    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;

    invoke-interface {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;->onConnected()V

    goto :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeckOfCardsManager.ServiceConnection.onServiceDisconnected - className: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->service:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$2(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IDeckOfCardsManager_v1;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$1;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->reset()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$8(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V

    .line 626
    return-void
.end method
