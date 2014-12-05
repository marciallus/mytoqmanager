.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1$Stub;
.source "DeckOfCardsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->addCallback()V
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
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    .line 649
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/ICallback_v1$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;)V
    .locals 5
    .param p1, "message"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DeckOfCardsManager.addCallback().onMessage - unable to parse event, message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->w(Ljava/lang/String;)V

    .line 743
    :cond_0
    return-void

    .line 687
    :pswitch_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$11(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 688
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;->onCardOpen(Ljava/lang/String;)V

    goto :goto_0

    .line 696
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :pswitch_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$11(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;->onCardVisible(Ljava/lang/String;)V

    goto :goto_1

    .line 705
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :pswitch_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$11(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 706
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;->onCardInvisible(Ljava/lang/String;)V

    goto :goto_2

    .line 714
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :pswitch_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$11(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;->onCardClosed(Ljava/lang/String;)V

    goto :goto_3

    .line 723
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :pswitch_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$11(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getSelectedMenuOption()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;->onMenuOptionSelected(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 732
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :pswitch_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->deckOfCardsEventListeners:Ljava/util/Set;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$11(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getSelectedMenuOption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getQuickReplyOption()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsEventListener;->onMenuOptionSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onUninstalled()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 656
    const-string v2, "DeckOfCardsManager.addCallback().onUninstalled"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->i(Ljava/lang/String;)V

    .line 660
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->resetInstallationToken()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$10(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 669
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$3;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

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

    .line 673
    return-void

    .line 662
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :catch_0
    move-exception v0

    .line 663
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "DeckOfCardsManager.addCallback().onUninstalled - an error occurred resetting the installation token"

    invoke-static {v2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 670
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;

    invoke-interface {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManagerListener;->onUninstalled()V

    goto :goto_1
.end method
