.class public Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;
.super Ljava/lang/Object;
.source "PopUpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/PopUpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Popup"
.end annotation


# instance fields
.field private controllerID:I

.field private destAdd:I

.field private endPointType:I

.field private messageType:I

.field private popupReq:Lorg/json/JSONObject;

.field private srcAdd:I

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

.field private transactionID:I


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/PopUpController;ILorg/json/JSONObject;IIIII)V
    .locals 0
    .param p2, "controllerID"    # I
    .param p3, "createPopupReq"    # Lorg/json/JSONObject;
    .param p4, "transactionID"    # I
    .param p5, "endPointType"    # I
    .param p6, "srcAdd"    # I
    .param p7, "destAdd"    # I
    .param p8, "messageType"    # I

    .prologue
    .line 493
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->this$0:Lcom/qualcomm/toq/smartwatch/controller/PopUpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput p2, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->controllerID:I

    .line 495
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->popupReq:Lorg/json/JSONObject;

    .line 496
    iput p4, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->transactionID:I

    .line 497
    iput p5, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->endPointType:I

    .line 498
    iput p6, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->srcAdd:I

    .line 499
    iput p7, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->destAdd:I

    .line 500
    iput p8, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->messageType:I

    .line 501
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;)I
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;

    .prologue
    .line 482
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->transactionID:I

    return v0
.end method


# virtual methods
.method public getControllerID()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->controllerID:I

    return v0
.end method

.method public getDestAdd()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->destAdd:I

    return v0
.end method

.method public getEndPointType()I
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->endPointType:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 528
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->messageType:I

    return v0
.end method

.method public getPopupReq()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->popupReq:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getSrcAdd()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->srcAdd:I

    return v0
.end method

.method public getTransactionID()I
    .locals 1

    .prologue
    .line 512
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/PopUpController$Popup;->transactionID:I

    return v0
.end method
