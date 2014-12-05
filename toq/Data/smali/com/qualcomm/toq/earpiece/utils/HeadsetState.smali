.class public Lcom/qualcomm/toq/earpiece/utils/HeadsetState;
.super Ljava/lang/Object;
.source "HeadsetState.java"

# interfaces
.implements Lcom/qualcomm/toq/earpiece/utils/IHeadsetState;


# instance fields
.field private responseCode:I

.field private state:I

.field private subState:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "subState"    # I
    .param p3, "responseCode"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->state:I

    .line 15
    iput p2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->subState:I

    .line 16
    iput p3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->responseCode:I

    .line 17
    return-void
.end method


# virtual methods
.method public getResponseCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->responseCode:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->state:I

    return v0
.end method

.method public getSubState()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->subState:I

    return v0
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->responseCode:I

    .line 48
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->state:I

    .line 32
    return-void
.end method

.method public setSubState(I)V
    .locals 0
    .param p1, "subState"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->subState:I

    .line 40
    return-void
.end method

.method public updateState(III)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "subState"    # I
    .param p3, "responseCode"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->state:I

    .line 22
    iput p2, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->subState:I

    .line 23
    iput p3, p0, Lcom/qualcomm/toq/earpiece/utils/HeadsetState;->responseCode:I

    .line 24
    return-void
.end method
