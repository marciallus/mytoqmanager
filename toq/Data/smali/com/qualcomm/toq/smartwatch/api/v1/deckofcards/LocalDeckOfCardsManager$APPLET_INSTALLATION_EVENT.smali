.class final enum Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;
.super Ljava/lang/Enum;
.source "LocalDeckOfCardsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "APPLET_INSTALLATION_EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

.field public static final enum APPLET_INSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

.field public static final enum APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

.field public static final enum APPLET_UPDATE:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    const-string v1, "APPLET_INSTALL"

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_INSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    .line 74
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    const-string v1, "APPLET_UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UPDATE:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    .line 75
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    const-string v1, "APPLET_UNINSTALL"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_INSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UPDATE:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->APPLET_UNINSTALL:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->$VALUES:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->$VALUES:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager$APPLET_INSTALLATION_EVENT;

    return-object v0
.end method
