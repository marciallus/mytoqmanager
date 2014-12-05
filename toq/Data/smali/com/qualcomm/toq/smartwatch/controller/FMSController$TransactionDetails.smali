.class public Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;
.super Ljava/lang/Object;
.source "FMSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/FMSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransactionDetails"
.end annotation


# instance fields
.field destPath:Ljava/lang/String;

.field response:I

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/FMSController;ILjava/lang/String;)V
    .locals 0
    .param p2, "response"    # I
    .param p3, "destPath"    # Ljava/lang/String;

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->this$0:Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1388
    iput p2, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->response:I

    .line 1389
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->destPath:Ljava/lang/String;

    .line 1390
    return-void
.end method


# virtual methods
.method public getDestPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->destPath:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()I
    .locals 1

    .prologue
    .line 1393
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->response:I

    return v0
.end method

.method public setDestPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "destPath"    # Ljava/lang/String;

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->destPath:Ljava/lang/String;

    .line 1406
    return-void
.end method

.method public setResponse(I)V
    .locals 0
    .param p1, "response"    # I

    .prologue
    .line 1397
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FMSController$TransactionDetails;->response:I

    .line 1398
    return-void
.end method
