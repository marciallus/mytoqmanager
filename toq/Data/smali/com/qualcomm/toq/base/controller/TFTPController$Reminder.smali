.class public Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;
.super Ljava/lang/Object;
.source "TFTPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/controller/TFTPController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reminder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/controller/TFTPController;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/controller/TFTPController;I)V
    .locals 4
    .param p2, "seconds"    # I

    .prologue
    .line 200
    iput-object p1, p0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->this$0:Lcom/qualcomm/toq/base/controller/TFTPController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->timer:Ljava/util/Timer;

    .line 202
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;-><init>(Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;)V

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 203
    return-void
.end method


# virtual methods
.method public notifyObject()V
    .locals 1

    .prologue
    .line 214
    monitor-enter p0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
