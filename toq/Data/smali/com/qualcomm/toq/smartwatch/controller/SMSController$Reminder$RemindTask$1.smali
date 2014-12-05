.class Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask$1;
.super Ljava/util/TimerTask;
.source "SMSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask$1;->this$2:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 422
    new-instance v1, Landroid/content/Intent;

    const-string v2, "SMS_SENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 423
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "status"

    const-string v3, "response_error"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 426
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 429
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask$1;->this$2:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder$RemindTask;->this$1:Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/controller/SMSController$Reminder;->timer:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 430
    return-void
.end method
