.class public final enum Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;
.super Ljava/lang/Enum;
.source "IHeadsetState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/utils/IHeadsetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadsetStatesEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

.field public static final enum STATE_CONNECTION_ATTEMPT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

.field public static final enum STATE_DISCONNECTION_ATTEMPT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

.field public static final enum STATE_FIRMWARE_UPDATE:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

.field public static final enum STATE_INIT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

.field public static final enum STATE_SWAP_ROLES:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

.field public static final enum STATE_VERIFICATION:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 27
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    const-string v1, "STATE_INIT"

    invoke-direct {v0, v1, v4, v4}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_INIT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    const-string v1, "STATE_CONNECTION_ATTEMPT"

    invoke-direct {v0, v1, v5, v5}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_CONNECTION_ATTEMPT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    .line 28
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    const-string v1, "STATE_FIRMWARE_UPDATE"

    invoke-direct {v0, v1, v6, v6}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_FIRMWARE_UPDATE:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    .line 29
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    const-string v1, "STATE_SWAP_ROLES"

    invoke-direct {v0, v1, v7, v7}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_SWAP_ROLES:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    .line 30
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    const-string v1, "STATE_VERIFICATION"

    invoke-direct {v0, v1, v8, v8}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_VERIFICATION:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    .line 31
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    const-string v1, "STATE_DISCONNECTION_ATTEMPT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_DISCONNECTION_ATTEMPT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_INIT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_CONNECTION_ATTEMPT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_FIRMWARE_UPDATE:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_SWAP_ROLES:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_VERIFICATION:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->STATE_DISCONNECTION_ATTEMPT:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->$VALUES:[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->$VALUES:[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;

    return-object v0
.end method
