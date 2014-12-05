.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;
.super Ljava/lang/Object;
.source "LocalDeckOfCardsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstallationCallback"
.end annotation


# instance fields
.field private binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;

.field private callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

.field private deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;

.field private packageName:Ljava/lang/String;

.field private resourceStore:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;)V
    .locals 0
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "deckOfCards"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p4, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .param p5, "callback"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    .param p6, "binderDeathHandler"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;

    .prologue
    .line 1351
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->this$0:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1353
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->packageName:Ljava/lang/String;

    .line 1354
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;

    .line 1355
    iput-object p4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->resourceStore:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

    .line 1356
    iput-object p5, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

    .line 1357
    iput-object p6, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;

    .line 1358
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .param p4, "x3"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .param p5, "x4"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    .param p6, "x5"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;
    .param p7, "x6"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$1;

    .prologue
    .line 1341
    invoke-direct/range {p0 .. p6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;-><init>(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->resourceStore:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1365
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "deckOfCards="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->deckOfCards:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resourceStore="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->resourceStore:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->callback:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/IInstallationCallback_v1;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "binderDeathHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallback;->binderDeathHandler:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$InstallationCallbackBinderDeathHandler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
