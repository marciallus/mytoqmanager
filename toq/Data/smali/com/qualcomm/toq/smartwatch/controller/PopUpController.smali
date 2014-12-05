.class public Lcom/qualcomm/toq/smartwatch/controller/PopUpController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "PopUpController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "PopUpController"

.field public static final appName:Ljava/lang/String; = "POPUP_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;


# instance fields
.field private popupControllerIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private popupList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;",
            ">;"
        }
    .end annotation
.end field

.field private popupTimer:Ljava/util/Timer;

.field private popupTransIDTimeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private transIDControllerIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    .line 28
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->transIDControllerIdMap:Ljava/util/HashMap;

    .line 29
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    .line 30
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    .line 32
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->transIDControllerIdMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->transIDControllerIdMap:Ljava/util/HashMap;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-nez v0, :cond_3

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    .line 49
    :cond_3
    return-void
.end method

.method public static getPopUpController()Lcom/qualcomm/toq/smartwatch/controller/PopUpController;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    .line 55
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    return-object v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 479
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    .line 480
    return-void
.end method


# virtual methods
.method protected checkPendingPopupRequest()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 351
    const-string v0, "PopUpController"

    const-string v1, "checkPendingPopupRequest() called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 353
    :cond_0
    const-string v0, "PopUpController"

    const-string v1, "No Pending Popup Requests"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 356
    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    .line 357
    const-string v0, "PopUpController"

    const-string v1, "Popup State Timer cancelled 2"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_1
    :goto_0
    return-void

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v0, v1, v3

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 369
    const-string v1, "PopUpController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CreatePopupReq timed out to receive CreatePopupResp for Transaction ID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 375
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    .line 377
    .local v7, "popup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    if-eqz v7, :cond_1

    .line 378
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v0, "PopUpController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendControllerMessageData() is called 2: srcAdd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getSrcAdd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " destAdd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getDestAdd()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getMessageType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v0, "PopUpController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CalendarCreatePopupReq sent to WD with payload 2: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getPopupReq()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " transaction ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getEndPointType()I

    move-result v1

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getSrcAdd()I

    move-result v2

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getDestAdd()I

    move-result v3

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getPopupReq()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getMessageType()I

    move-result v5

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 401
    .end local v7    # "popup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 403
    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    .line 404
    const-string v0, "PopUpController"

    const-string v1, "Popup State Timer cancelled 3"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public controllerIdExists(I)Z
    .locals 4
    .param p1, "controllerId"    # I

    .prologue
    const/4 v3, 0x0

    .line 463
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v3

    .line 475
    :goto_0
    return v2

    .line 466
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 467
    .local v1, "popID":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 468
    const-string v2, "PopUpController"

    const-string v3, "**popID Exists**"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 472
    goto :goto_0

    .end local v1    # "popID":Ljava/lang/Integer;
    :cond_3
    move v2, v3

    .line 475
    goto :goto_0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 14
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 62
    move-object/from16 v4, p3

    check-cast v4, Lorg/json/JSONObject;

    .line 64
    .local v4, "jsonPayload":Lorg/json/JSONObject;
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleConnHandlerMessage function of PopUpController called, messageType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " jsonPayload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transaction ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sparse-switch p2, :sswitch_data_0

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 74
    :sswitch_0
    const-string v1, "PopUpController"

    const-string v2, "Received CreatePopupResp from WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreatePopupResp received = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :cond_1
    const-string v1, "PopUpController"

    const-string v2, "Recieved CreatePopupResp, but popupList is null or empty"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v13

    .line 156
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 157
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in CreatePopupResp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->transactionID:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->access$000(Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;)I

    move-result v1

    move/from16 v0, p4

    if-ne v1, v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getControllerID()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 123
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "PopUpController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendControllerMessageData() is called 3: srcAdd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getSrcAdd()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " destAdd = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getDestAdd()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " messageType = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getMessageType()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getEndPointType()I

    move-result v6

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getSrcAdd()I

    move-result v7

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getDestAdd()I

    move-result v8

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getPopupReq()Lorg/json/JSONObject;

    move-result-object v9

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getMessageType()I

    move-result v10

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v11

    move-object v5, p0

    invoke-super/range {v5 .. v11}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 92
    :sswitch_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    const-string v2, "popup_id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 96
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v1

    const/16 v3, 0xd

    move v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->handleConnHandlerMessage(IILjava/lang/Object;II)V

    goto/16 :goto_1

    .line 108
    :sswitch_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    const-string v2, "popup_id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 112
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->getController()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    move-result-object v1

    const/16 v3, 0x17

    move v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->handleConnHandlerMessage(IILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 164
    :sswitch_3
    const-string v1, "PopUpController"

    const-string v2, "Received UpdatePopupResp from WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdatePopupResp received = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :sswitch_4
    const-string v1, "PopUpController"

    const-string v2, "Received PopupInd from WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PopupInd received, payload = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :try_start_2
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "popupID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "popup_id"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    const-string v2, "popup_id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    const-string v1, "PopUpController"

    const-string v2, "PopupId id is not present"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 229
    :catch_1
    move-exception v13

    .line 230
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception PopupInd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    const-string v2, "popup_id"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 200
    .local v12, "controllerID":I
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PopupInd received for ControllerId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    sparse-switch v12, :sswitch_data_2

    goto/16 :goto_0

    .line 206
    :sswitch_5
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->getCalendarController()Lcom/qualcomm/toq/smartwatch/controller/CalendarController;

    move-result-object v1

    const/16 v3, 0x10

    move v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController;->handleConnHandlerMessage(IILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 217
    :sswitch_6
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->getController()Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;

    move-result-object v1

    const/16 v3, 0x1a

    move v2, p1

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/DemoAllJoynNotificationController;->handleConnHandlerMessage(IILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 238
    .end local v12    # "controllerID":I
    :sswitch_7
    const-string v1, "PopUpController"

    const-string v2, "Received DestroyPopupResp from WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received DestroyPopupResp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 70
    nop

    :sswitch_data_0
    .sparse-switch
        0x4000 -> :sswitch_0
        0x4001 -> :sswitch_3
        0x4002 -> :sswitch_7
        0x8000 -> :sswitch_4
    .end sparse-switch

    .line 89
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0x14 -> :sswitch_2
    .end sparse-switch

    .line 203
    :sswitch_data_2
    .sparse-switch
        0x9 -> :sswitch_5
        0x14 -> :sswitch_6
    .end sparse-switch
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 9
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    const/4 v8, 0x0

    .line 262
    const-string v1, "PopUpController"

    const-string v2, "sendControllerMessageData() called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, "thePopup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    sparse-switch p5, :sswitch_data_0

    .line 291
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 292
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    const/4 p5, 0x0

    .line 295
    const-string v1, "PopUpController"

    const-string v2, "Add Popup to first popupList queue"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    .line 302
    const-string v1, "PopUpController"

    const-string v2, "Popup State Timer cancelled 1"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    .line 305
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    new-instance v2, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/PopUpController;)V

    const-wide/16 v3, 0x2710

    const-wide/16 v5, 0x2710

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 311
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Popup createPopupReq Timer created with transaction Id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->getTransactionID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CalendarCreatePopupReq sent to WD with payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " transactionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v1, "PopUpController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendControllerMessageData() is called 1: srcAdd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destAdd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " messageType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 348
    .end local v0    # "thePopup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    :cond_1
    :goto_2
    return-void

    .line 269
    .restart local v0    # "thePopup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    :sswitch_0
    const-string v1, "PopUpController"

    const-string v2, "Sending CalendarCreatePopupReq to WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    .end local v0    # "thePopup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    const/16 v2, 0x9

    move-object v3, p4

    check-cast v3, Lorg/json/JSONObject;

    move-object v1, p0

    move v4, p6

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;-><init>(Lcom/qualcomm/toq/smartwatch/controller/PopUpController;ILorg/json/JSONObject;IIIII)V

    .line 278
    .restart local v0    # "thePopup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    goto/16 :goto_0

    .line 280
    :sswitch_1
    const-string v1, "PopUpController"

    const-string v2, "Sending AJNotificationCreatePopupReq to WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    .end local v0    # "thePopup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    const/16 v2, 0x14

    move-object v3, p4

    check-cast v3, Lorg/json/JSONObject;

    move-object v1, p0

    move v4, p6

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;-><init>(Lcom/qualcomm/toq/smartwatch/controller/PopUpController;ILorg/json/JSONObject;IIIII)V

    .restart local v0    # "thePopup":Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
    goto/16 :goto_0

    .line 339
    :cond_2
    if-eqz v0, :cond_1

    .line 340
    const-string v1, "PopUpController"

    const-string v2, "Add Popup to last popupList queue"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 345
    :cond_3
    const-string v1, "PopUpController"

    const-string v2, "popupList is NULL"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 315
    :catch_0
    move-exception v1

    goto/16 :goto_1

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
    .end sparse-switch
.end method

.method public unMapPopup(II)V
    .locals 8
    .param p1, "controllerId"    # I
    .param p2, "popIdValue"    # I

    .prologue
    .line 413
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 414
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 415
    .local v2, "key":I
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v5, "PopUpController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "popID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "controllerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .end local v2    # "key":I
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 421
    .local v4, "popupKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 422
    .local v3, "popID":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 423
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v5, "PopUpController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "popID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "controllerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " removed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "popID":Ljava/lang/Integer;
    .end local v4    # "popupKeySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PopUpController"

    const-string v6, "Exception in unMapPopup()"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unMapPopupAll()V
    .locals 3

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 439
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTransIDTimeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->transIDControllerIdMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->transIDControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 446
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->transIDControllerIdMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    if-eqz v1, :cond_4

    .line 452
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 453
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController;->popupTimer:Ljava/util/Timer;

    .line 454
    const-string v1, "PopUpController"

    const-string v2, "Popup State Timer cancelled 4"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_4
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PopUpController"

    const-string v2, "Exception in unMapPopupAll()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
