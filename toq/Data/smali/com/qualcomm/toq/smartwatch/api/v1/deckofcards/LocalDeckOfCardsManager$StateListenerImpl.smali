.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$StateListenerImpl;
.super Ljava/lang/Object;
.source "LocalDeckOfCardsManager.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;

    .prologue
    .line 1502
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$StateListenerImpl;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;)V

    return-void
.end method


# virtual methods
.method public onBluetoothDisabled()V
    .locals 0

    .prologue
    .line 1512
    return-void
.end method

.method public onBluetoothEnabled()V
    .locals 0

    .prologue
    .line 1507
    return-void
.end method

.method public onWatchConnected()V
    .locals 0

    .prologue
    .line 1539
    return-void
.end method

.method public onWatchDisconnected()V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method

.method public onWatchPaired()V
    .locals 0

    .prologue
    .line 1517
    return-void
.end method

.method public onWatchUnpaired()V
    .locals 3

    .prologue
    .line 1524
    const-string v1, "DeckOfCards"

    const-string v2, "LocalDeckOfCardsManager.StateListenerImpl.onWatchUnpaired - purging..."

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$StateListenerImpl;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->purgeAll()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->access$1900(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1533
    :goto_0
    return-void

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "DeckOfCards"

    const-string v2, "LocalDeckOfCardsManager.StateListenerImpl.onWatchUnpaired - an error occurred storing the toq applet records after purging"

    invoke-static {v1, v2, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
