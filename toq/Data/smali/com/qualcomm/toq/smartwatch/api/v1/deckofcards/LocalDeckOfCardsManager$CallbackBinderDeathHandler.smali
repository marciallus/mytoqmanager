.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;
.super Ljava/lang/Object;
.source "LocalDeckOfCardsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackBinderDeathHandler"
.end annotation


# instance fields
.field private packageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1272
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;->packageName:Ljava/lang/String;

    .line 1273
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;

    .prologue
    .line 1266
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1280
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalDeckOfCardsManager.CallbackBinderDeathHandler.binderDied - remote callback to client app died, packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$CallbackBinderDeathHandler;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->removeCallback(Ljava/lang/String;)V

    .line 1283
    return-void
.end method