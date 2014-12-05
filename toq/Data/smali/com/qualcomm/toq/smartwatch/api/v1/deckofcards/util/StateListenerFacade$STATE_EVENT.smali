.class final enum Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
.super Ljava/lang/Enum;
.source "StateListenerFacade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "STATE_EVENT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

.field public static final enum BLUETOOTH_DISABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

.field public static final enum BLUETOOTH_ENABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

.field public static final enum WATCH_CONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

.field public static final enum WATCH_DISCONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

.field public static final enum WATCH_PAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

.field public static final enum WATCH_UNPAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const-string v1, "BLUETOOTH_ENABLED"

    invoke-direct {v0, v1, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_ENABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    .line 28
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const-string v1, "BLUETOOTH_DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_DISABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    .line 29
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const-string v1, "WATCH_PAIRED"

    invoke-direct {v0, v1, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_PAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    .line 30
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const-string v1, "WATCH_UNPAIRED"

    invoke-direct {v0, v1, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_UNPAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    .line 31
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const-string v1, "WATCH_CONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_CONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    .line 32
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    const-string v1, "WATCH_DISCONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_DISCONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_ENABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->BLUETOOTH_DISABLED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_PAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_UNPAIRED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_CONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->WATCH_DISCONNECTED:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->$VALUES:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->$VALUES:[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade$STATE_EVENT;

    return-object v0
.end method
