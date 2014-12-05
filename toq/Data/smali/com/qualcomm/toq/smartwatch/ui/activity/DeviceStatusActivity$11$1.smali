.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;)V
    .locals 0

    .prologue
    .line 687
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 692
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 694
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 697
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    const-string v3, "/firmware/1234.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 700
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    const-string v3, "/firmware/1234.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->getFMSState(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 703
    const-string v2, ""

    const-string v3, "Force Pushing the Firmware to WD"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v2

    const-string v3, "/firmware/1234.zip"

    const/4 v4, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->updateFMSState(Ljava/lang/String;IJ)V

    .line 710
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 711
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 714
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 716
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Force Push Firmware Upgrade"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 718
    const-string v2, "Firmware upgrade initiated with Toq"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 719
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 720
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 728
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 729
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 835
    :goto_0
    return-void

    .line 733
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 734
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 735
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 737
    :cond_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 739
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Force Push Firmware Upgrade"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 741
    const-string v2, "Can\'t push the firmware upgrade as currently firmware upgrade is being pushed to Toq!"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 742
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 743
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$2;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 751
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 752
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 757
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_5
    const-string v2, "DeviceStatusActivity"

    const-string v3, "FMS has no entry for firmware file"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    const/4 v1, 0x0

    .line 760
    .local v1, "result":Z
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a3.zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 763
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->getFirmwareUpdateController(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    move-result-object v2

    const-string v3, "a3.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->pushFirmwareUpdateToWD(Ljava/lang/String;)Z

    move-result v1

    .line 766
    const-string v2, "DeviceStatusActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A3 Firmware push result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 792
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 793
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 795
    :cond_7
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 797
    :cond_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 798
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Force Push Firmware Upgrade"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 799
    const-string v2, "Firmware upgrade initiated with Toq"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 801
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$3;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 809
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 810
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 770
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_9
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "p0_kairos.zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 773
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->getFirmwareUpdateController(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    move-result-object v2

    const-string v3, "p0_kairos.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->pushFirmwareUpdateToWD(Ljava/lang/String;)Z

    move-result v1

    .line 776
    const-string v2, "DeviceStatusActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FFA Firmware push result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 780
    :cond_a
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "p1.zip"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 783
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->getFirmwareUpdateController(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    move-result-object v2

    const-string v3, "p1.zip"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->pushFirmwareUpdateToWD(Ljava/lang/String;)Z

    move-result v1

    .line 786
    const-string v2, "DeviceStatusActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FFA Firmware push result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 815
    .end local v1    # "result":Z
    :cond_b
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 816
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 817
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 819
    :cond_c
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 821
    :cond_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 822
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Force Push Firmware Upgrade"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 823
    const-string v2, "Make sure Phone and Toq are in connected state to force upgrade the firmware"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 824
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 825
    const-string v2, "OK"

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$4;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 833
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 834
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method
