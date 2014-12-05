.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1$Stub;
.source "DeckOfCardsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
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
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    .line 211
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallationDenied()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 250
    const-string v1, "DeckOfCardsManager.installDeckOfCards.onInstallationDenied"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 253
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$7(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 257
    return-void

    .line 254
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;

    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;->onInstallationDenied()V

    goto :goto_0
.end method

.method public onInstallationSuccessful(Ljava/lang/String;)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v2, "DeckOfCardsManager.installDeckOfCards.onInstallationSuccessful"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->writeInstallationToken(Ljava/lang/String;)V
    invoke-static {v2, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$9(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->addCallback()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$6(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    :try_end_1
    .catch Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 239
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$2;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsManagerListeners:Ljava/util/Set;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$7(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    return-void

    .line 225
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "DeckOfCardsManager.installDeckOfCards.onInstallationSuccessful - an error occurred storing the installation token"

    invoke-static {v2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "An error occurred storing the installation token"

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 235
    .local v0, "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
    const-string v2, "DeckOfCardsManager.installDeckOfCards.onInstallationSuccessful - an error occurred adding the callback"

    invoke-static {v2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 240
    .end local v0    # "e":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;

    invoke-interface {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;->onInstallationSuccessful()V

    goto :goto_1
.end method
