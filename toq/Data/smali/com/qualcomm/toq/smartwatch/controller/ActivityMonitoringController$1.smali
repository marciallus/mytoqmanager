.class Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController$1;
.super Ljava/lang/Object;
.source "ActivityMonitoringController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->initiateActivityOperation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 322
    const-string v0, "ActivityMonitoringController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendGetActivityInd() called from ExecutorService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/ActivityMonitoringController;->sendActivityUpdateInd()V

    .line 326
    return-void
.end method
