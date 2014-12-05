.class Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FindPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 267
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "action":Ljava/lang/String;
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CANCEL_FIND_PHONE_REQUEST:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 269
    const-string v4, "FindPhoneActivity"

    const-string v5, "The ACTION_CANCEL_FIND_PHONE_REQUEST is received "

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :try_start_0
    const-string v4, "FindPhoneActivity"

    const-string v5, "The ACTION_CANCEL_FIND_PHONE_REQUEST is received "

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    const/4 v5, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z
    invoke-static {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;Z)Z

    .line 285
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->resetFindPhoneFlags()V
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)V

    .line 287
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->stopMediaPlayer()V

    .line 289
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "FindPhoneActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 299
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_ENABLED:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 300
    const-string v4, "FindPhoneActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_2
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    const-string v4, "FindPhoneActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 305
    .local v3, "state":I
    const-string v4, "endpointtype"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 306
    .local v2, "endPointType":I
    if-nez v2, :cond_0

    .line 311
    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 313
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v4

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    .line 314
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->stopMediaPlayer()V

    .line 315
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    iget-object v4, v4, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_3

    .line 316
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 318
    :cond_3
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 321
    :catch_1
    move-exception v1

    .line 322
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "FindPhoneActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 327
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "endPointType":I
    .end local v3    # "state":I
    :cond_4
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 328
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 329
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->pauseMediaPlayer()V

    goto/16 :goto_0

    .line 332
    :cond_5
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 333
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->startMediaPlayer()V

    goto/16 :goto_0

    .line 337
    :cond_6
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CALL_STATE_OFF_HOOK:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 339
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->pauseMediaPlayer()V

    goto/16 :goto_0
.end method
