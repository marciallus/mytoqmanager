.class Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;
.super Ljava/lang/Object;
.source "AmbientController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/AmbientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AmbientTask"
.end annotation


# instance fields
.field private taskId:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "id"    # J

    .prologue
    .line 818
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 819
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;->taskId:I

    .line 820
    const-string v0, "Ambient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " AmbientTask-addAmbientTask taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    return-void
.end method


# virtual methods
.method public getTaskId()I
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AmbientController$AmbientTask;->taskId:I

    return v0
.end method
