.class Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeckOfCardsEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    .locals 0

    .prologue
    .line 862
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;

    .prologue
    .line 862
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V

    return-void
.end method


# virtual methods
.method public onCardClosed(Ljava/lang/String;)V
    .locals 3
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 909
    const-string v0, "NotificationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationHandler.DeckOfCardsEventListenerImpl.onCardClosed - cardId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    return-void
.end method

.method public onCardInvisible(Ljava/lang/String;)V
    .locals 3
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 899
    const-string v0, "NotificationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationHandler.DeckOfCardsEventListenerImpl.onCardInvisible - cardId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->currentVisibleCardId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$402(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 903
    return-void
.end method

.method public onCardOpen(Ljava/lang/String;)V
    .locals 3
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 868
    const-string v0, "NotificationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationHandler.DeckOfCardsEventListenerImpl.onCardOpen - cardId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    return-void
.end method

.method public onCardVisible(Ljava/lang/String;)V
    .locals 5
    .param p1, "cardId"    # Ljava/lang/String;

    .prologue
    .line 875
    const-string v1, "NotificationHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationHandler.DeckOfCardsEventListenerImpl.onCardVisible - cardId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    monitor-enter v2

    .line 880
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # setter for: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->currentVisibleCardId:Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$402(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Ljava/lang/String;)Ljava/lang/String;

    .line 882
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->cachedNotificationsMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$500(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;

    .line 885
    .local v0, "cachedNotification":Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;
    if-eqz v0, :cond_0

    .line 886
    const-string v1, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.DeckOfCardsEventListenerImpl.onCardVisible - processing cached notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$DeckOfCardsEventListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->handleAndroidNotification(Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V
    invoke-static {v1, v0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$600(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;)V

    .line 890
    :cond_0
    monitor-exit v2

    .line 892
    return-void

    .line 890
    .end local v0    # "cachedNotification":Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils$PHubNotification;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onMenuOptionSelected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "menuOption"    # Ljava/lang/String;

    .prologue
    .line 923
    const-string v0, "NotificationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationHandler.DeckOfCardsEventListenerImpl.onMenuOptionSelected - cardId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", menuOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    return-void
.end method

.method public onMenuOptionSelected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "menuOption"    # Ljava/lang/String;
    .param p3, "quickReplyOption"    # Ljava/lang/String;

    .prologue
    .line 930
    const-string v0, "NotificationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationHandler.DeckOfCardsEventListenerImpl.onMenuOptionSelected - cardId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", menuOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quickReplyOption: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public onReceivedMessage([B)V
    .locals 3
    .param p1, "message"    # [B

    .prologue
    .line 916
    const-string v0, "NotificationHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NotificationHandler.DeckOfCardsEventListenerImpl.onReceivedMessage - message.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    return-void
.end method
