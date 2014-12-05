.class public abstract Lcom/qualcomm/toq/base/controller/DefaultController;
.super Ljava/lang/Object;
.source "DefaultController.java"

# interfaces
.implements Lcom/qualcomm/toq/base/controller/IController;


# instance fields
.field public appID:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/qualcomm/toq/base/controller/DefaultController;->appID:I

    return v0
.end method

.method public abstract handleConnHandlerMessage(IILjava/lang/Object;II)V
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 7
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    if-nez p1, :cond_2

    .line 35
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 41
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 42
    const-string v1, "BTConnectionListener"

    const-string v2, "DefaultController: sendControllerMessageData() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    .line 53
    invoke-interface/range {v0 .. v6}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->handleControllerData(IIILjava/lang/Object;II)V

    .line 61
    :cond_1
    return-void

    .line 37
    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 39
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    goto :goto_0
.end method

.method public setAppID(I)V
    .locals 0
    .param p1, "appID"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/qualcomm/toq/base/controller/DefaultController;->appID:I

    .line 17
    return-void
.end method
