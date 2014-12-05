.class public interface abstract Lcom/qualcomm/toq/earpiece/utils/IHeadsetState;
.super Ljava/lang/Object;
.source "IHeadsetState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetSubStatesEnum;,
        Lcom/qualcomm/toq/earpiece/utils/IHeadsetState$HeadsetStatesEnum;
    }
.end annotation


# static fields
.field public static final RESPONSE_CODE_BT_DISCONNECT:I = 0x0

.field public static final RESPONSE_CODE_CHECK_STATUS_AGAIN:I = 0x3

.field public static final RESPONSE_CODE_EXIT:I = 0x2

.field public static final RESPONSE_CODE_FIRMWARE_CONFIRMATION:I = 0x1

.field public static final RESPONSE_CODE_NONE:I = -0x1

.field public static final STATE_CONNECTION_ATTEMPT:I = 0x1

.field public static final STATE_DISCONNECTION_ATTEMPT:I = 0x5

.field public static final STATE_FIRMWARE_UPDATE:I = 0x2

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_SWAP_ROLES:I = 0x3

.field public static final STATE_VERIFICATION:I = 0x4

.field public static final SUB_STATE_FAILURE:I = 0x66

.field public static final SUB_STATE_PROGRESS:I = 0x64

.field public static final SUB_STATE_SUCCESS:I = 0x65


# virtual methods
.method public abstract updateState(III)V
.end method
