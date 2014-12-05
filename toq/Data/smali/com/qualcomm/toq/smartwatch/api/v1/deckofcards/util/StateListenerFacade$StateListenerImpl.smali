.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;
.super Ljava/lang/Object;
.source "StateListenerFacade.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$1;

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)V

    return-void
.end method


# virtual methods
.method public onBluetoothDisabled()V
    .locals 3

    .prologue
    .line 312
    const-string v1, "DeckOfCards"

    const-string v2, "StateListenerFacade.StateListenerImpl.onBluetoothDisabled"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 315
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.bluetooth.disabled"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 317
    return-void
.end method

.method public onBluetoothEnabled()V
    .locals 3

    .prologue
    .line 300
    const-string v1, "DeckOfCards"

    const-string v2, "StateListenerFacade.StateListenerImpl.onBluetoothEnabled"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.bluetooth.enabled"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 305
    return-void
.end method

.method public onWatchConnected()V
    .locals 3

    .prologue
    .line 348
    const-string v1, "DeckOfCards"

    const-string v2, "StateListenerFacade.StateListenerImpl.onWatchConnected"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 351
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.connected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    return-void
.end method

.method public onWatchDisconnected()V
    .locals 3

    .prologue
    .line 360
    const-string v1, "DeckOfCards"

    const-string v2, "StateListenerFacade.StateListenerImpl.onWatchDisconnected"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 363
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.disconnected"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 365
    return-void
.end method

.method public onWatchPaired()V
    .locals 3

    .prologue
    .line 324
    const-string v1, "DeckOfCards"

    const-string v2, "StateListenerFacade.StateListenerImpl.onWatchPaired"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.paired"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 329
    return-void
.end method

.method public onWatchUnpaired()V
    .locals 3

    .prologue
    .line 336
    const-string v1, "DeckOfCards"

    const-string v2, "StateListenerFacade.StateListenerImpl.onWatchUnpaired"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.qualcomm.toq.smartwatch.unpaired"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    # getter for: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->access$100(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 341
    return-void
.end method
