.class public Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;
.super Ljava/lang/Object;
.source "SMSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/controller/SMSController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reminder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

.field timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController;I)V
    .locals 4
    .param p2, "seconds"    # I

    .prologue
    .line 402
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->isTimesUp:Z

    .line 404
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;->timer:Ljava/util/Timer;

    .line 406
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;)V

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 408
    return-void
.end method
