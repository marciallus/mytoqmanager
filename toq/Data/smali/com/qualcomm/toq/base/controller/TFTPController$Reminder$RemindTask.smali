.class Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;
.super Ljava/util/TimerTask;
.source "TFTPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemindTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    iget-object v0, v0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->this$0:Lcom/qualcomm/toq/base/controller/TFTPController;

    const/4 v1, 0x1

    # setter for: Lcom/qualcomm/toq/base/controller/TFTPController;->timeoutFlag:I
    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/controller/TFTPController;->access$002(Lcom/qualcomm/toq/base/controller/TFTPController;I)I

    .line 208
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    iget-object v0, v0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 209
    iget-object v0, p0, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/controller/TFTPController$Reminder;->notifyObject()V

    .line 210
    return-void
.end method
