.class Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;
.super Landroid/content/BroadcastReceiver;
.source "SMSController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

.field final synthetic val$actWdSMSNum:Ljava/lang/String;

.field final synthetic val$phoneNumber:Ljava/lang/String;

.field final synthetic val$smsName:Ljava/lang/String;

.field final synthetic val$smsText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$smsName:Ljava/lang/String;

    iput-object p4, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$actWdSMSNum:Ljava/lang/String;

    iput-object p5, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$smsText:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, -0x1

    .line 505
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 506
    .local v5, "responsePayload":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->getResultCode()I

    move-result v6

    .line 507
    .local v6, "resultcode":I
    const-string v0, "SMSController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResultCode =="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 510
    .local v8, "str":Ljava/lang/String;
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, "intentPhNumber":Ljava/lang/String;
    const-string v0, "name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, "intentPhName":Ljava/lang/String;
    const-string v0, "actWdSMSNum"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 513
    .local v2, "intentActWdSMSNum":Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "intentSmsText":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$phoneNumber:Ljava/lang/String;

    .line 518
    :cond_0
    if-nez v4, :cond_1

    .line 519
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$smsName:Ljava/lang/String;

    .line 521
    :cond_1
    if-nez v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$actWdSMSNum:Ljava/lang/String;

    .line 524
    :cond_2
    if-nez v3, :cond_3

    .line 525
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->val$smsText:Ljava/lang/String;

    .line 529
    :cond_3
    const-string v0, "HTC"

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 530
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->isTimesUp:Z

    if-nez v0, :cond_6

    .line 531
    if-ne v6, v11, :cond_5

    .line 532
    const/4 v6, -0x1

    .line 533
    const-string v0, "SMSController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Getting result ok code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/SMSController;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 535
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->isTimesUp:Z

    .line 559
    :cond_4
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 607
    :pswitch_0
    const-string v0, "SMSController"

    const-string v9, "Inside error"

    invoke-static {v0, v9}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 616
    :cond_5
    :goto_0
    return-void

    .line 547
    :cond_6
    const-string v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 548
    .local v7, "status":Ljava/lang/String;
    const-string v0, "response_error"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 549
    const-string v0, "SMSController"

    const-string v9, "HTC device can not process request"

    invoke-static {v0, v9}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/SMSController;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 551
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 561
    .end local v7    # "status":Ljava/lang/String;
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    iput v11, v0, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->mHtcLastSMSResultCode:I

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # getter for: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->broadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$000(Lcom/qualcomm/toq/smartwatch/controller/SMSController;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :goto_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendSuccessMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static/range {v0 .. v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$200(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 577
    :pswitch_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 584
    :pswitch_3
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 591
    :pswitch_4
    const-string v0, "SMSController"

    const-string v9, "Inside STATUS_ON_ICC_SENT"

    invoke-static {v0, v9}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 599
    :pswitch_5
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SMSController$1;->this$0:Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SMSController;->sendErrorMessageToWD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    invoke-static {v0, v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->access$100(Lcom/qualcomm/toq/smartwatch/controller/SMSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 565
    :catch_0
    move-exception v0

    goto :goto_1

    .line 559
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
