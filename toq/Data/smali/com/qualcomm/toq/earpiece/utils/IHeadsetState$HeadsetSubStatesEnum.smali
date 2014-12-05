.class public final enum Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;
.super Ljava/lang/Enum;
.source "IHeadsetState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/utils/IHeadsetState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeadsetSubStatesEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

.field public static final enum SUB_STATE_FAILURE:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

.field public static final enum SUB_STATE_PROGRESS:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

.field public static final enum SUB_STATE_SUCCESS:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 38
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    const-string v1, "SUB_STATE_PROGRESS"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v3, v2}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->SUB_STATE_PROGRESS:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    .line 39
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    const-string v1, "SUB_STATE_SUCCESS"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v4, v2}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->SUB_STATE_SUCCESS:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    .line 40
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    const-string v1, "SUB_STATE_FAILURE"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v5, v2}, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->SUB_STATE_FAILURE:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->SUB_STATE_PROGRESS:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->SUB_STATE_SUCCESS:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->SUB_STATE_FAILURE:Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->$VALUES:[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "subState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    return-object v0
.end method

.method public static values()[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->$VALUES:[Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    invoke-virtual {v0}, [Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;

    return-object v0
.end method
