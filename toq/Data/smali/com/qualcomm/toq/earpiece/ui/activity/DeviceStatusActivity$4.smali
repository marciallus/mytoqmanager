.class Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V
    .locals 0

    .prologue
    .line 586
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 590
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "action":Ljava/lang/String;
    const-string v8, "endpointtype"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 593
    .local v4, "endPointType":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->endPointType:I
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$300(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)I

    move-result v8

    if-eq v8, v4, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    sget-object v8, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 599
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 601
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const/4 v8, 0x1

    if-ne v4, v8, :cond_2

    const-string v8, "associated_ep_l_device_address"

    invoke-interface {v5, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    const-string v8, "associated_ep_r_device_address"

    invoke-interface {v5, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 603
    :cond_3
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "Name: NA"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "Address: NA"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "Status: NA"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 607
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 611
    :cond_4
    const-string v8, "endpointname"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "endPointName":Ljava/lang/String;
    const-string v8, "endpointaddress"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 613
    .local v2, "endPointAddress":Ljava/lang/String;
    const-string v8, "state"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 614
    .local v6, "state":I
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 615
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 616
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 618
    :cond_5
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    const/4 v9, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$802(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 620
    :cond_6
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Address: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    const/4 v8, 0x3

    if-ne v6, v8, :cond_a

    .line 625
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    const-string v9, "Status: Connected"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 627
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 632
    :cond_7
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 633
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->clearHeaderList()V

    .line 660
    :cond_8
    :goto_1
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$900()I

    move-result v8

    const/4 v9, 0x5

    if-le v8, v9, :cond_0

    .line 661
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 662
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 665
    :cond_9
    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$902(I)I

    goto/16 :goto_0

    .line 637
    :cond_a
    const/4 v8, 0x4

    if-eq v6, v8, :cond_b

    if-nez v6, :cond_c

    .line 640
    :cond_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 644
    # operator++ for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$908()I

    .line 645
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    const v11, 0x7f0a0009

    invoke-virtual {v10, v11}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 651
    :cond_c
    const/4 v8, 0x1

    if-ne v6, v8, :cond_8

    goto :goto_1

    .line 669
    .end local v2    # "endPointAddress":Ljava/lang/String;
    .end local v3    # "endPointName":Ljava/lang/String;
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    .end local v6    # "state":I
    :cond_d
    sget-object v8, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 670
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 671
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 673
    :cond_e
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 674
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 675
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 677
    :cond_f
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    const/4 v9, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$802(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 680
    :cond_10
    sget-object v8, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SERVICE_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 681
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_12

    .line 682
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 683
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 685
    :cond_11
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    const/4 v9, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$802(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 687
    :cond_12
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->serviceConnected:Z

    goto/16 :goto_0

    .line 689
    :cond_13
    sget-object v8, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 690
    const-string v8, "version_message"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 692
    .local v7, "versionMessage":Ljava/lang/String;
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$1000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 693
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$1000(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Firmware Version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :cond_14
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_16

    .line 700
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 701
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 703
    :cond_15
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    const/4 v9, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$802(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 705
    :cond_16
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-direct {v1, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 706
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v8, "VERSION DETAILS:"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 707
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 709
    const-string v8, "OK"

    new-instance v9, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4$1;

    invoke-direct {v9, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;)V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 717
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$802(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 718
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 720
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v7    # "versionMessage":Ljava/lang/String;
    :cond_17
    sget-object v8, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_PROFILE_UPDATE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 721
    const/4 v8, 0x1

    if-eq v4, v8, :cond_18

    const/4 v8, 0x2

    if-ne v4, v8, :cond_0

    .line 723
    :cond_18
    iget-object v8, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$4;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mEPProfilesList:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$1100(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Profiles: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPConnectedProfiles(I)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
