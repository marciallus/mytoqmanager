.class public interface abstract Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;
.super Ljava/lang/Object;
.source "IHeadsetAction.java"


# static fields
.field public static final ACTION_BASS_BOOST:I = 0x3

.field public static final ACTION_BASS_BOOST__STATES:[I

.field public static final ACTION_CHECK_STATUS:I = 0x2

.field public static final ACTION_CHECK_STATUS_STATES:[I

.field public static final ACTION_INSTALL_UPDATE:I = 0x0

.field public static final ACTION_INSTALL_UPDATE_STATES:[I

.field public static final ACTION_SWAP_ROLES:I = 0x1

.field public static final ACTION_SWAP_ROLES__STATES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_INSTALL_UPDATE_STATES:[I

    .line 20
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_SWAP_ROLES__STATES:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_CHECK_STATUS_STATES:[I

    .line 32
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/IHeadsetAction;->ACTION_BASS_BOOST__STATES:[I

    return-void

    .line 14
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
    .end array-data

    .line 20
    :array_1
    .array-data 4
        0x0
        0x1
        0x4
        0x5
    .end array-data

    .line 26
    :array_2
    .array-data 4
        0x0
        0x1
        0x4
        0x5
    .end array-data

    .line 32
    :array_3
    .array-data 4
        0x0
        0x1
        0x4
        0x5
    .end array-data
.end method


# virtual methods
.method public abstract broadcastResponsetoHeadset(II)V
.end method

.method public abstract getCurrentAction()I
.end method

.method public abstract getCurrentState()I
.end method

.method public abstract processAction(I)V
.end method

.method public abstract processState(Lcom/qualcomm/toq/earpiece/utils/HeadsetState;I)V
.end method

.method public abstract processSubState(Lcom/qualcomm/toq/earpiece/utils/HeadsetState;[II)V
.end method

.method public abstract setCurrentAction(I)V
.end method
