.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;
.super Ljava/lang/Object;
.source "DeckOfCardsManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BinderDeathHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V
    .locals 0

    .prologue
    .line 566
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 573
    const-string v0, "DeckOfCardsManager.BinderDeathHandler.binderDied - binder to service died"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/Logger;->w(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager$BinderDeathHandler;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;

    # invokes: Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->reset()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;->access$8(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/DeckOfCardsManager;)V

    .line 576
    return-void
.end method
