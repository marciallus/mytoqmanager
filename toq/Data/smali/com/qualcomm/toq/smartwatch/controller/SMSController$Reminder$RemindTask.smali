.class Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;
.super Ljava/util/TimerTask;
.source "SMSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemindTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 414
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->isTimesUp:Z

    .line 416
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 436
    :cond_0
    return-void
.end method
