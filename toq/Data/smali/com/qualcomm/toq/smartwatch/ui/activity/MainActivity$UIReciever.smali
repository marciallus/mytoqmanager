.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2470
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2472
    .local v1, "action":Ljava/lang/String;
    const-string v13, "endpointtype"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2473
    .local v8, "endPointType":I
    if-eqz v8, :cond_1

    .line 2474
    const-string v13, "MainActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EPL/EPR broadcasted this action. No need to handle in WD MainAcvitiy. Action:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2712
    :cond_0
    :goto_0
    return-void

    .line 2500
    :cond_1
    sget-object v13, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2502
    const-string v13, "MainActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2503
    const-string v13, "endpointname"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2504
    .local v7, "endPointName":Ljava/lang/String;
    const-string v13, "endpointaddress"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2505
    .local v6, "endPointAddress":Ljava/lang/String;
    const-string v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2520
    .local v12, "state":I
    if-nez v8, :cond_0

    .line 2531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v13, v12, v7, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2538
    .end local v6    # "endPointAddress":Ljava/lang/String;
    .end local v7    # "endPointName":Ljava/lang/String;
    .end local v12    # "state":I
    :cond_2
    sget-object v13, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_WD_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 2554
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const/4 v14, 0x0

    const-string v15, ""

    const-string v16, ""

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v13 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2563
    :cond_3
    const-string v13, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2565
    const-string v13, "MainActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "onReceive: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2566
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2567
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v13, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 2569
    .local v5, "currBtEnableState":I
    const/16 v13, 0xa

    if-ne v5, v13, :cond_4

    .line 2570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2575
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_0

    .line 2576
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 2580
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mBTOffLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v13

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2585
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUnpairLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v13

    if-nez v13, :cond_0

    .line 2586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mPairingButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 2590
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v5    # "currBtEnableState":I
    :cond_5
    sget-object v13, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2602
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDConnectionState(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v13 .. v16}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$2600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2609
    :cond_6
    sget-object v13, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2610
    const-string v13, "MainActivity"

    const-string v14, "ACTION_VERSION_INFO Broadcast received"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateWDFirmware()V
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 2614
    :cond_7
    sget-object v13, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 2615
    const-string v13, "MainActivity"

    const-string v14, "ACTION_FIRMWARE_TRANSFER Broadcast Received"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2616
    const-string v13, "file_name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2617
    .local v10, "fileName":Ljava/lang/String;
    const-string v13, "firmware_status"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2620
    .local v11, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressTextview:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_9

    const-string v13, "1234"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    const-string v13, "failed"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2625
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2633
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v4

    .line 2635
    .local v4, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2637
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v13

    invoke-interface {v13}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v13

    invoke-interface {v4, v13}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v12

    .line 2640
    .restart local v12    # "state":I
    const/4 v13, 0x3

    if-ne v12, v13, :cond_8

    .line 2641
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-string v14, "Software Update Available"

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2644
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-string v14, "firmware_layout_gone"

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2649
    .end local v4    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v12    # "state":I
    :cond_9
    const-string v13, "success"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-string v14, "Transfer complete"

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2663
    .end local v10    # "fileName":Ljava/lang/String;
    .end local v11    # "result":Ljava/lang/String;
    :cond_a
    sget-object v13, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER_PROGRESS:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2664
    const-string v13, "MainActivity"

    const-string v14, "ACTION_FIRMWARE_TRANSFER_PROGRESS Broadcast Received"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    const-string v13, "file_length"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2667
    .local v9, "fileLength":I
    const-string v13, "sent_file_bytes"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 2668
    .local v3, "bytesTransferred":I
    const/4 v13, -0x1

    if-eq v9, v13, :cond_0

    if-eqz v9, :cond_0

    const/4 v13, -0x1

    if-eq v3, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressTextview:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDSoftwareAvailableText:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2672
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-string v14, "Transferring update..."

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Ljava/lang/String;)V

    .line 2673
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressBar:Landroid/widget/ProgressBar;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v13

    mul-int/lit8 v14, v3, 0x64

    div-int/2addr v14, v9

    invoke-virtual {v13, v14}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2675
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDFirmwareProgressTextview:Landroid/widget/TextView;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v15, v3, 0x64

    div-int/2addr v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2677
    const-string v13, "MainActivity"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v15

    aget-object v15, v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " Firmware percentage: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    mul-int/lit8 v15, v3, 0x64

    div-int/2addr v15, v9

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    if-ne v3, v9, :cond_0

    .line 2690
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-string v14, "Transfer complete"

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2695
    .end local v3    # "bytesTransferred":I
    .end local v9    # "fileLength":I
    :cond_b
    sget-object v13, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_ACTIVITY_MONITORING_UPDATE:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2696
    const-string v13, "MainActivity"

    const-string v14, "Activity Monitoring Update Called"

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->activityMonitoringPrefs:Landroid/content/SharedPreferences;
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/content/SharedPreferences;

    move-result-object v13

    const-string v14, "activity_monitoring_settings_toggle_key"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2700
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->addGraphsForActivityMonitorCard()V
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 2704
    :cond_c
    const-string v13, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2706
    const-string v13, "MainActivity"

    const-string v14, " Location providers changed called "

    invoke-static {v13, v14}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->showLocationWarningCard()V
    invoke-static {v13}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$3700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    goto/16 :goto_0
.end method
