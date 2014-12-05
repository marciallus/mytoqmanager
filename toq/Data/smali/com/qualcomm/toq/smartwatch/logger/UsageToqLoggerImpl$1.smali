.class Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl$1;
.super Ljava/lang/Object;
.source "UsageToqLoggerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->createUsageLogUploadTask(II)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 441
    # getter for: Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start usage log upload:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl$1;->this$0:Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;

    # invokes: Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->upload()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;->access$100(Lcom/qualcomm/toq/smartwatch/logger/UsageToqLoggerImpl;)V

    .line 447
    return-void
.end method
