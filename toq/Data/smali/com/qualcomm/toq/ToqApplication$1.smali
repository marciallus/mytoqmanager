.class Lcom/qualcomm/toq/ToqApplication$1;
.super Ljava/lang/Object;
.source "ToqApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/ToqApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/ToqApplication;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/ToqApplication;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/qualcomm/toq/ToqApplication$1;->this$0:Lcom/qualcomm/toq/ToqApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v1

    const-string v2, "usage_log"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v0

    .line 108
    .local v0, "usageLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    if-eqz v0, :cond_0

    .line 109
    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;->init()V

    .line 110
    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;->autoUploadLogs()V

    .line 111
    const-string v1, "ToqApplication"

    const-string v2, "ToqApplication is created"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 116
    return-void
.end method
