.class Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AboutScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    const v9, 0x3ecccccd

    const/4 v8, 0x0

    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "action":Ljava/lang/String;
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 338
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 342
    :cond_0
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 343
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 344
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 346
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 350
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForUnpairedState()V
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    .line 536
    :cond_3
    :goto_0
    return-void

    .line 352
    :cond_4
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_WD_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 353
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 355
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 357
    :cond_5
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 358
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 359
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 361
    :cond_6
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 365
    :cond_7
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForUnpairedState()V
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    goto :goto_0

    .line 367
    :cond_8
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 368
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "associated_wd_device_address"

    invoke-interface {v5, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 372
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 373
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 377
    :cond_9
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForUnpairedState()V
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$200(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    goto/16 :goto_0

    .line 382
    :cond_a
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->updateLayoutsForPairedState()V
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$300(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)V

    .line 383
    const-string v5, "state"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 384
    .local v3, "state":I
    const-string v5, "endpointtype"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 385
    .local v2, "endPointType":I
    if-eq v2, v11, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_3

    .line 394
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 395
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 396
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 398
    :cond_b
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 400
    :cond_c
    if-ne v3, v12, :cond_d

    .line 401
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "State Connected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/TextView;

    move-result-object v5

    const/high16 v6, 0x3f800000

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 407
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 408
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto/16 :goto_0

    .line 411
    :cond_d
    const/4 v5, 0x4

    if-eq v3, v5, :cond_e

    if-nez v3, :cond_3

    .line 414
    :cond_e
    # operator++ for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I
    invoke-static {}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$508()I

    .line 415
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "State Disconnected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 424
    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I
    invoke-static {}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$500()I

    move-result v5

    if-le v5, v12, :cond_3

    .line 425
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 427
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 428
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0111

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 434
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResetConnectionLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$600(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 436
    :cond_f
    const/4 v5, -0x1

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->disconnectTimerCount:I
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$502(I)I

    goto/16 :goto_0

    .line 441
    .end local v2    # "endPointType":I
    .end local v3    # "state":I
    :cond_10
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 442
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 446
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 447
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 449
    :cond_11
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 450
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 451
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 453
    :cond_12
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 456
    :cond_13
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SERVICE_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 457
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->getResetConnButtonText()Landroid/widget/TextView;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$400(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setAlpha(F)V

    .line 462
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 463
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 465
    :cond_14
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 466
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 467
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 469
    :cond_15
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 472
    :cond_16
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 473
    const-string v5, "AboutScreenActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string v5, "version_message"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, "versionMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_18

    .line 478
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 479
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 481
    :cond_17
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5, v8}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 483
    :cond_18
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 484
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$700(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a015a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 485
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 487
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$700(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a015b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1$1;

    invoke-direct {v6, p0}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1$1;-><init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 495
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    # setter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$102(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 496
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
