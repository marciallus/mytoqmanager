.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V
    .locals 0

    .prologue
    .line 1008
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1011
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "action":Ljava/lang/String;
    const-string v7, "endpointtype"

    const/4 v8, -0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1013
    .local v4, "endPointType":I
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1014
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1015
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1017
    :cond_0
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1018
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1019
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    .line 1021
    :cond_1
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1023
    :cond_2
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1024
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1026
    :cond_3
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Name: NA"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Address: NA"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1028
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Status: NA"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1030
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1212
    :cond_4
    :goto_0
    return-void

    .line 1033
    :cond_5
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1034
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 1037
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Name: NA"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Address: NA"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1039
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Status: NA"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1040
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1041
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1043
    :cond_6
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1044
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 1047
    :cond_7
    const-string v7, "endpointname"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1048
    .local v3, "endPointName":Ljava/lang/String;
    const-string v7, "endpointaddress"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1049
    .local v2, "endPointAddress":Ljava/lang/String;
    const-string v7, "state"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1050
    .local v5, "state":I
    const/4 v7, 0x1

    if-eq v4, v7, :cond_4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_4

    .line 1057
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 1058
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1060
    :cond_8
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 1061
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1062
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    .line 1064
    :cond_9
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1066
    :cond_a
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceName:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1067
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceAddr:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Address: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    const/4 v7, 0x3

    if-ne v5, v7, :cond_c

    .line 1069
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    const-string v8, "Status: Connected"

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1071
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1072
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1073
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1077
    :cond_b
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1078
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileTransferStatusLogger:Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/FileTransferStatusLogger;->clearHeaderList()V

    goto/16 :goto_0

    .line 1081
    :cond_c
    const/4 v7, 0x4

    if-eq v5, v7, :cond_d

    if-nez v5, :cond_4

    .line 1085
    :cond_d
    # operator++ for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1208()I

    .line 1086
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mDeviceStatus:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Status: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const v10, 0x7f0a0009

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1090
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFTPFileBrowserButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1095
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1200()I

    move-result v7

    const/4 v8, 0x3

    if-le v7, v8, :cond_4

    .line 1096
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1098
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1099
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0111

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1105
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->resetConnectionButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/Button;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 1107
    :cond_e
    const/4 v7, -0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->disconnectTimerCount:I
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1202(I)I

    goto/16 :goto_0

    .line 1112
    .end local v2    # "endPointAddress":Ljava/lang/String;
    .end local v3    # "endPointName":Ljava/lang/String;
    .end local v5    # "state":I
    :cond_f
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1113
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1114
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1116
    :cond_10
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 1117
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1119
    :cond_11
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1120
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 1121
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    .line 1123
    :cond_12
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1126
    :cond_13
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SERVICE_STOPPED:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 1127
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 1128
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFirmwareTransferProgressSpinner:Landroid/app/ProgressDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1130
    :cond_14
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1131
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1133
    :cond_15
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_17

    .line 1134
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1135
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    .line 1137
    :cond_16
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1139
    :cond_17
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->serviceConnected:Z

    goto/16 :goto_0

    .line 1141
    :cond_18
    sget-object v7, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1142
    const-string v7, "version_message"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1144
    .local v6, "versionMessage":Ljava/lang/String;
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_19

    .line 1145
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mToqFirmwareVersion:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/widget/TextView;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Firmware Version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointFirmwareVersion(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1151
    :cond_19
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    if-eqz v7, :cond_1b

    .line 1152
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1153
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->cancel()V

    .line 1156
    :cond_1a
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v8, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1158
    :cond_1b
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {v1, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1159
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v7, "VERSION DETAILS:"

    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1160
    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1162
    const-string v7, "OK"

    new-instance v8, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14$1;

    invoke-direct {v8, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;)V

    invoke-virtual {v1, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1170
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1171
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$14;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
