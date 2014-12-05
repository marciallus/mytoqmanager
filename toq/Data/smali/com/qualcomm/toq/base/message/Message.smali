.class public Lcom/qualcomm/toq/base/message/Message;
.super Ljava/lang/Object;
.source "Message.java"


# instance fields
.field public destAdd:I

.field public messageType:I

.field public payload:Ljava/lang/Object;

.field public payloadLength:I

.field public srcAdd:I

.field public transactionId:I


# direct methods
.method public constructor <init>(IILjava/lang/Object;II)V
    .locals 1
    .param p1, "srcAdd"    # I
    .param p2, "destAdd"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "messageType"    # I
    .param p5, "transactionId"    # I

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/qualcomm/toq/base/message/Message;->srcAdd:I

    .line 8
    iput v0, p0, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    .line 9
    iput v0, p0, Lcom/qualcomm/toq/base/message/Message;->payloadLength:I

    .line 11
    iput v0, p0, Lcom/qualcomm/toq/base/message/Message;->messageType:I

    .line 12
    iput v0, p0, Lcom/qualcomm/toq/base/message/Message;->transactionId:I

    .line 16
    iput p1, p0, Lcom/qualcomm/toq/base/message/Message;->srcAdd:I

    .line 17
    iput p2, p0, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    .line 18
    iput-object p3, p0, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    .line 19
    iput p4, p0, Lcom/qualcomm/toq/base/message/Message;->messageType:I

    .line 20
    iput p5, p0, Lcom/qualcomm/toq/base/message/Message;->transactionId:I

    .line 21
    return-void
.end method


# virtual methods
.method public setPayloadLength(I)V
    .locals 0
    .param p1, "payloadLength"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/qualcomm/toq/base/message/Message;->payloadLength:I

    .line 25
    return-void
.end method
