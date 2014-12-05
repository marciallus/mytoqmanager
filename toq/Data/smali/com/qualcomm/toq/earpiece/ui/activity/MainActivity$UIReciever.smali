.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UIReciever"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 5690
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5693
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 5694
    .local v3, "action":Ljava/lang/String;
    const-string v41, "endpointtype"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 5702
    .local v14, "endPointType":I
    const-string v41, "android.bluetooth.adapter.action.STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_2

    .line 5703
    const-string v41, "MainActivity"

    const-string v42, "ACTION_BT_ADAPTER_STATE_CHANGE Broadcast Received"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5708
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 5709
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v41, "android.bluetooth.adapter.extra.STATE"

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 5711
    .local v8, "currBtEnableState":I
    const/16 v41, 0xa

    move/from16 v0, v41

    if-ne v8, v0, :cond_0

    .line 5712
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_status_checked"

    const-string v43, "none"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 5715
    .local v39, "str":Ljava/lang/String;
    const-string v41, "none"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_0

    .line 5716
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_status_checked"

    const-string v43, "true"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5722
    .end local v39    # "str":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->clearAppPreferences()V

    .line 5725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6643
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "currBtEnableState":I
    :cond_1
    :goto_0
    return-void

    .line 5730
    :cond_2
    const-string v41, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3

    const-string v41, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3

    const-string v41, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3

    const-string v41, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_3

    const-string v41, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 5736
    :cond_3
    :try_start_0
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[A2DP/HFP] onReceive:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5744
    const-string v41, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    .line 5745
    .local v11, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v41, "android.bluetooth.profile.extra.STATE"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 5747
    .local v38, "state":I
    const-string v41, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 5749
    .local v29, "previousState":I
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[A2DP/HFP] device = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", state = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", previousState = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5753
    const-string v41, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_4

    const-string v41, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_6

    .line 5755
    :cond_4
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[BassBoost] A2DP Playing / Connection state action = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5758
    const/16 v41, 0xa

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_5

    const/16 v41, 0x2

    move/from16 v0, v38

    move/from16 v1, v41

    if-ne v0, v1, :cond_6

    .line 5760
    :cond_5
    const/16 v17, -0x1

    .line 5762
    .local v17, "epValue":I
    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    .line 5763
    .local v27, "name":Ljava/lang/String;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[BassBoost] A2DP Playing device name = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v27

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEPNameEndPoint(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;)I

    move-result v17

    .line 5767
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[BassBoost] A2DP Playing epValue = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5769
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_known_primary_headset"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 5777
    .end local v11    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v17    # "epValue":I
    .end local v27    # "name":Ljava/lang/String;
    .end local v29    # "previousState":I
    .end local v38    # "state":I
    :cond_6
    :goto_1
    const-string v41, "android.bluetooth.headset.action.VENDOR_SPECIFIC_HEADSET_EVENT"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_7

    .line 5779
    :try_start_1
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[A2DP/HFP] onReceive:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5788
    const-string v41, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/bluetooth/BluetoothDevice;

    .line 5789
    .restart local v11    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[A2DP/HFP] Vendor specific event device = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v11}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 5795
    .end local v11    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_7
    :goto_2
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPEndPointType(I)Z

    move-result v41

    if-nez v41, :cond_8

    .line 5797
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "WD broadcasted this action. No need to handle in Headset MainAcvitiy. Action:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5803
    :cond_8
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_CONNECTED:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_9

    .line 5805
    const-string v41, "MainActivity"

    const-string v42, "ACTION_EAR_PIECE_CONNECTED Broadcast Received"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5812
    :cond_9
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_DISCONNECTED:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_a

    .line 5814
    const-string v41, "MainActivity"

    const-string v42, "ACTION_EAR_PIECE_DISCONNECTED Broadcast Received"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 5815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceFirmwareUpdateProgressDialog()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 5824
    :cond_a
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_UI_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4a

    .line 5828
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "onReceive:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5829
    const/16 v38, 0x0

    .line 5830
    .restart local v38    # "state":I
    const-string v41, "perform_action"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5831
    .local v4, "actionStr":Ljava/lang/String;
    const-string v41, "display_message"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 5833
    .local v26, "msgStr":Ljava/lang/String;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "perform_action = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", display_message = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5835
    const/4 v15, 0x0

    .line 5836
    .local v15, "epFirmwareUpdateErr":Ljava/lang/Integer;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "ep_firmware_update_error"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    if-eqz v41, :cond_b

    .line 5837
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "ep_firmware_update_error"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "epFirmwareUpdateErr":Ljava/lang/Integer;
    check-cast v15, Ljava/lang/Integer;

    .line 5841
    .restart local v15    # "epFirmwareUpdateErr":Ljava/lang/Integer;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "state"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    if-eqz v41, :cond_c

    .line 5842
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v41

    const-string v42, "state"

    invoke-virtual/range {v41 .. v42}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Ljava/lang/Integer;

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Integer;->intValue()I

    move-result v38

    .line 5845
    :cond_c
    if-eqz v4, :cond_21

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_21

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v41

    if-lez v41, :cond_21

    .line 5847
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    const-string v42, "PERFORM_CHANGE_ROLE"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_d

    .line 5848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceProgressDialog()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x0

    const/16 v43, 0x0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5852
    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    const-string v42, "PERFORM_BASS_BOOST"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_19

    .line 5854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceProgressDialog()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5856
    const/16 v37, -0x1

    .line 5857
    .local v37, "selected":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getBassBoostMode(I)Ljava/lang/String;

    move-result-object v22

    .line 5858
    .local v22, "leftBassBoostVal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v41

    const/16 v42, 0x2

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getBassBoostMode(I)Ljava/lang/String;

    move-result-object v33

    .line 5860
    .local v33, "rightBassBoostVal":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v23

    .line 5861
    .local v23, "leftEPRole":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v41

    const/16 v42, 0x2

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v34

    .line 5863
    .local v34, "rightEPRole":Ljava/lang/String;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[BassBoost] rightBassBoostVal = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", leftBassBoostVal = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", leftEPRole = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", rightEPRole = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5869
    if-nez v23, :cond_e

    if-eqz v34, :cond_18

    .line 5871
    :cond_e
    const-string v41, "Primary"

    move-object/from16 v0, v23

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_13

    .line 5873
    if-eqz v22, :cond_f

    .line 5875
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[BassBoost] Storing LEFT Headset LAST_KNOWN_HEADSET_PBE_MODE = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5878
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_known_headset_mode"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5882
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "low"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_10

    .line 5884
    const/16 v37, 0x1

    .line 5930
    :cond_f
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v37

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceBassBoostDialog(II)V
    invoke-static {v0, v1, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V

    goto/16 :goto_0

    .line 5885
    :cond_10
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "medium"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_11

    .line 5887
    const/16 v37, 0x2

    goto :goto_3

    .line 5888
    :cond_11
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v22

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "high"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_12

    .line 5890
    const/16 v37, 0x3

    goto :goto_3

    .line 5892
    :cond_12
    const/16 v37, 0x0

    goto :goto_3

    .line 5895
    :cond_13
    const-string v41, "Primary"

    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-eqz v41, :cond_17

    .line 5896
    if-eqz v33, :cond_f

    .line 5898
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "[BassBoost] Storing RIGHT Headset LAST_KNOWN_HEADSET_PBE_MODE = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5901
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_known_headset_mode"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5905
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "low"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_14

    .line 5907
    const/16 v37, 0x1

    goto/16 :goto_3

    .line 5908
    :cond_14
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "medium"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_15

    .line 5910
    const/16 v37, 0x2

    goto/16 :goto_3

    .line 5911
    :cond_15
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v41

    const-string v42, "high"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_16

    .line 5913
    const/16 v37, 0x3

    goto/16 :goto_3

    .line 5915
    :cond_16
    const/16 v37, 0x0

    goto/16 :goto_3

    .line 5919
    :cond_17
    const-string v41, "MainActivity"

    const-string v42, "Both headsets are having DIFFERENT bass boost value..So setting default Value as OFF"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5921
    const/16 v37, 0x0

    .line 5922
    const-string v41, "MainActivity"

    const-string v42, "[BassBoost] Storing RIGHT&LEFT Headset Values are different Off "

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5924
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_known_headset_mode"

    const-string v43, "Off"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5933
    :cond_18
    const-string v41, "MainActivity"

    const-string v42, "Bass boost values are null"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5937
    .end local v22    # "leftBassBoostVal":Ljava/lang/String;
    .end local v23    # "leftEPRole":Ljava/lang/String;
    .end local v33    # "rightBassBoostVal":Ljava/lang/String;
    .end local v34    # "rightEPRole":Ljava/lang/String;
    .end local v37    # "selected":I
    :cond_19
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    const-string v42, "PERFORM_CHANGE_ROLE_IN_VIEW_STATUS"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1a

    .line 5939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    const-string v42, "Choose headset roles"

    const-string v43, "Please choose which headset you want to use for calls. Otherwise, your headsets may not work correctly."

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5944
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    const-string v42, "PERFORM_CHANGE_ROLE_FOR_SINGLE_HEADSET_IN_VIEW_STATUS"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1e

    .line 5946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5947
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "current_status_text2"

    const-string v43, ""

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 5951
    .local v30, "rStatus":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "current_status_text1"

    const-string v43, ""

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 5957
    .local v20, "lStatus":Ljava/lang/String;
    const-string v40, ""

    .local v40, "title":Ljava/lang/String;
    const-string v9, ""

    .local v9, "desc1":Ljava/lang/String;
    const-string v10, ""

    .line 5958
    .local v10, "desc2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_1b

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1c

    .line 5960
    :cond_1b
    const v41, 0x7f0a0198

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 5961
    const v41, 0x7f0a0199

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5962
    const v41, 0x7f0a019a

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeSingleHeadsetDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v9, v10}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5967
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_1d

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 5969
    :cond_1d
    const v41, 0x7f0a019b

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 5970
    const v41, 0x7f0a019c

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 5971
    const v41, 0x7f0a019d

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeSingleHeadsetDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v9, v10}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5978
    .end local v9    # "desc1":Ljava/lang/String;
    .end local v10    # "desc2":Ljava/lang/String;
    .end local v20    # "lStatus":Ljava/lang/String;
    .end local v30    # "rStatus":Ljava/lang/String;
    .end local v40    # "title":Ljava/lang/String;
    :cond_1e
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    const-string v42, "SAME_FIRMEARE_INFO"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1f

    .line 5980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    const-string v42, "Software Update"

    const-string v43, "Your headset software is up to date."

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceInfoDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 5984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 5987
    :cond_1f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v41

    const-string v42, "UPDATE_HEADSET"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_20

    .line 5988
    if-eqz v26, :cond_1

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_1

    .line 5989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move-object/from16 v1, v26

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceProgressDialog(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5994
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 5996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 6001
    :cond_21
    if-eqz v15, :cond_49

    .line 6003
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_known_primary_headset"

    const/16 v43, -0x1

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getInteger(Ljava/lang/String;I)I

    move-result v16

    .line 6007
    .local v16, "epVal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_26

    .line 6009
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v0, v14, :cond_26

    .line 6012
    :try_start_2
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Dialog;->isShowing()Z

    move-result v41

    if-nez v41, :cond_22

    .line 6013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceFirmwareUpdateProgressDialog()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_22

    .line 6015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressLoadingLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6017
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    const v42, 0x7f090189

    invoke-virtual/range {v41 .. v42}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 6018
    const-string v41, "MainActivity"

    const-string v42, "...[View GONE 2]"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6024
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v41

    if-nez v41, :cond_39

    .line 6027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_COMPLETE:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#74c594"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6029
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x4

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6043
    :cond_22
    :goto_4
    const/16 v41, -0x1

    move/from16 v0, v16

    move/from16 v1, v41

    if-eq v0, v1, :cond_23

    move/from16 v0, v16

    if-ne v0, v14, :cond_24

    :cond_23
    const/16 v41, -0x1

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_26

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v14, v0, :cond_26

    .line 6046
    :cond_24
    const/16 v41, -0x1

    move/from16 v0, v16

    move/from16 v1, v41

    if-eq v0, v1, :cond_25

    const/16 v41, 0x2

    move/from16 v0, v16

    move/from16 v1, v41

    if-ne v0, v1, :cond_3b

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v28

    .line 6049
    .local v28, "phubTv":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    :goto_5
    invoke-virtual/range {v28 .. v28}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    .line 6053
    .local v19, "lLoadingStr":Ljava/lang/String;
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_26

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_COMPLETE:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_26

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_26

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_REBOOTING:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_26

    const-string v41, "Transfer"

    move-object/from16 v0, v19

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v41

    if-nez v41, :cond_26

    .line 6058
    const-string v41, "MainActivity"

    const-string v42, "Set L / R Loading text as CONNECTING"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6060
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_CONNECTING:Ljava/lang/String;

    move-object/from16 v0, v28

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6074
    .end local v19    # "lLoadingStr":Ljava/lang/String;
    .end local v28    # "phubTv":Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    :cond_26
    :goto_6
    const/16 v41, 0x65

    move/from16 v0, v41

    move/from16 v1, v38

    if-ne v0, v1, :cond_29

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Dialog;->isShowing()Z

    move-result v41

    if-eqz v41, :cond_29

    .line 6077
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_27

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v0, v14, :cond_27

    .line 6080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x4

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_COMPLETE:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#74c594"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6085
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_28

    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v0, v14, :cond_28

    .line 6088
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "FW Success Updating Left EP text if bonded. Constants.EP_STATUS_HAS_UPDATED_SW "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    sget-object v43, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x4

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#74c594"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6100
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 6101
    .local v31, "rStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 6103
    .local v21, "lStr":Ljava/lang/String;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "FW Success rStr = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", lStr = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v16

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateSoftwareUpdateRetryContinue(II)V
    invoke-static {v0, v1, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 6117
    .end local v21    # "lStr":Ljava/lang/String;
    .end local v31    # "rStr":Ljava/lang/String;
    :cond_29
    :goto_7
    const/16 v41, 0x66

    move/from16 v0, v41

    move/from16 v1, v38

    if-ne v0, v1, :cond_2f

    .line 6119
    :try_start_4
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    if-eqz v41, :cond_1

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Dialog;->isShowing()Z

    move-result v41

    if-eqz v41, :cond_1

    .line 6122
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v0, v14, :cond_3d

    .line 6123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    if-eqz v41, :cond_2a

    .line 6124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6125
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#c04241"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    if-eqz v41, :cond_2b

    .line 6129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v42

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7800()Z

    move-result v41

    if-eqz v41, :cond_3c

    const v41, 0x7f0a01ec

    :goto_8
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V

    .line 6133
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    if-eqz v41, :cond_2c

    .line 6134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6136
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    if-eqz v41, :cond_2d

    .line 6137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6139
    :cond_2d
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "...[View GONE 3] Val = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v43, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v43 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6168
    :cond_2e
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v16

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateSoftwareUpdateRetryContinue(II)V
    invoke-static {v0, v1, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 6179
    :cond_2f
    :goto_a
    const/16 v41, 0x7e4

    move/from16 v0, v41

    move/from16 v1, v38

    if-ne v0, v1, :cond_34

    .line 6181
    :try_start_5
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    if-eqz v41, :cond_30

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Dialog;->isShowing()Z

    move-result v41

    if-nez v41, :cond_31

    .line 6183
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceFirmwareUpdateProgressDialog()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceFirmwareText(I)V
    invoke-static {v0, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    .line 6187
    :cond_31
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v0, v14, :cond_42

    .line 6188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    if-eqz v41, :cond_32

    .line 6189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6190
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#c04241"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6192
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "...[View GONE 3] Val = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v43, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v43 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6201
    const/16 v41, 0x1

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7802(Z)Z

    .line 6202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v42

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7800()Z

    move-result v41

    if-eqz v41, :cond_41

    const v41, 0x7f0a01ec

    :goto_b
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V

    .line 6230
    :cond_33
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v16

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateSoftwareUpdateRetryContinue(II)V
    invoke-static {v0, v1, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 6241
    :cond_34
    :goto_d
    const/16 v41, 0x7e5

    move/from16 v0, v41

    move/from16 v1, v38

    if-ne v0, v1, :cond_1

    .line 6243
    :try_start_6
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    if-eqz v41, :cond_1

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Dialog;->isShowing()Z

    move-result v41

    if-eqz v41, :cond_1

    .line 6246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 6247
    .restart local v31    # "rStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 6248
    .restart local v21    # "lStr":Ljava/lang/String;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "FW EP_STATUS_SW_UPDATE_CHECKER rStr = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, ", lStr = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6250
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_CONNECTING:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_35

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_WAITING:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_46

    .line 6251
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#c04241"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v42

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLeftLowBattery:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7800()Z

    move-result v41

    if-eqz v41, :cond_45

    const v41, 0x7f0a01ec

    :goto_e
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V

    .line 6259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6274
    :cond_36
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_37

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v41

    const/16 v42, 0x2

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v41

    if-nez v41, :cond_37

    .line 6277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_COMPLETE:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#74c594"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x4

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6282
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_38

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v41

    const/16 v42, 0x1

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v41

    if-nez v41, :cond_38

    .line 6285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_COMPLETE:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#74c594"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x4

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6291
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    const/16 v42, 0x270f

    const/16 v43, 0x270f

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateSoftwareUpdateRetryContinue(II)V
    invoke-static/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 6294
    .end local v21    # "lStr":Ljava/lang/String;
    .end local v31    # "rStr":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 6295
    .local v12, "e":Ljava/lang/Exception;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Exception Constants.EP_STATUS_SW_UPDATE_CHECKER == state "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6298
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 6034
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_39
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#c04241"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v42

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7400()Z

    move-result v41

    if-eqz v41, :cond_3a

    const v41, 0x7f0a01ec

    :goto_10
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_4

    .line 6067
    :catch_1
    move-exception v12

    .line 6068
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Exception epFirmwareUpdateErr != null "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6070
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 6037
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3a
    const v41, 0x7f0a01eb

    goto :goto_10

    .line 6046
    :cond_3b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v28

    goto/16 :goto_5

    .line 6109
    :catch_2
    move-exception v12

    .line 6110
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Exception IHeadsetState.SUB_STATE_SUCCESS == state "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6113
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 6130
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3c
    const v41, 0x7f0a01eb

    goto/16 :goto_8

    .line 6146
    :cond_3d
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v0, v14, :cond_2e

    .line 6147
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    if-eqz v41, :cond_3e

    .line 6148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6150
    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#c04241"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    if-eqz v41, :cond_3f

    .line 6154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v42

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7400()Z

    move-result v41

    if-eqz v41, :cond_40

    const v41, 0x7f0a01ec

    :goto_11
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V

    .line 6158
    :cond_3f
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "...[View GONE 4] val = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v43, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v43 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    if-eqz v41, :cond_2e

    .line 6164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_9

    .line 6171
    :catch_3
    move-exception v12

    .line 6172
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Exception IHeadsetState.SUB_STATE_FAILURE == state "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6175
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 6155
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_40
    const v41, 0x7f0a01eb

    goto :goto_11

    .line 6202
    :cond_41
    const v41, 0x7f0a01eb

    goto/16 :goto_b

    .line 6210
    :cond_42
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v0, v14, :cond_33

    .line 6211
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    if-eqz v41, :cond_43

    .line 6212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6213
    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#c04241"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6216
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "...[View GONE 4] val = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v43, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v43 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6222
    const/16 v41, 0x1

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7402(Z)Z

    .line 6223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v42

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7400()Z

    move-result v41

    if-eqz v41, :cond_44

    const v41, 0x7f0a01ec

    :goto_12
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_c

    .line 6233
    :catch_4
    move-exception v12

    .line 6234
    .restart local v12    # "e":Ljava/lang/Exception;
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "Exception Constants.EP_STATUS_LOW_BATTERY_STATE == state "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 6237
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 6224
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_44
    const v41, 0x7f0a01eb

    goto :goto_12

    .line 6256
    .restart local v21    # "lStr":Ljava/lang/String;
    .restart local v31    # "rStr":Ljava/lang/String;
    :cond_45
    const v41, 0x7f0a01eb

    goto/16 :goto_e

    .line 6262
    :cond_46
    :try_start_b
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_CONNECTING:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_47

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_WAITING:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_36

    .line 6263
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const-string v42, "#c04241"

    invoke-static/range {v42 .. v42}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 6266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setVisibility(I)V

    .line 6267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightDisconnectInfo:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v42

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isRightLowBattery:Z
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7400()Z

    move-result v41

    if-eqz v41, :cond_48

    const v41, 0x7f0a01ec

    :goto_13
    move-object/from16 v0, v42

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(I)V

    .line 6270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightProgressCompleteIcon:Landroid/widget/ImageView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_f

    .line 6267
    :cond_48
    const v41, 0x7f0a01eb

    goto :goto_13

    .line 6303
    .end local v16    # "epVal":I
    .end local v21    # "lStr":Ljava/lang/String;
    .end local v31    # "rStr":Ljava/lang/String;
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 6308
    .end local v4    # "actionStr":Ljava/lang/String;
    .end local v15    # "epFirmwareUpdateErr":Ljava/lang/Integer;
    .end local v26    # "msgStr":Ljava/lang/String;
    .end local v38    # "state":I
    :cond_4a
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4d

    .line 6310
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "onReceive:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6311
    const-string v41, "endpointname"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 6314
    .local v13, "endPointName":Ljava/lang/String;
    const-string v41, "state"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v38

    .line 6316
    .restart local v38    # "state":I
    const/16 v41, 0x3

    move/from16 v0, v38

    move/from16 v1, v41

    if-eq v0, v1, :cond_4b

    if-eqz v38, :cond_4b

    .line 6318
    const/16 v38, 0x4

    .line 6321
    :cond_4b
    const/16 v41, 0x1

    move/from16 v0, v41

    if-eq v14, v0, :cond_4c

    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v14, v0, :cond_1

    .line 6323
    :cond_4c
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "PHUB-EP-L or R connection state changed to: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    move/from16 v1, v38

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V
    invoke-static {v0, v13, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6339
    .end local v13    # "endPointName":Ljava/lang/String;
    .end local v38    # "state":I
    :cond_4d
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_REMOTE_DEVICE_DISASSOCIATED:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_4f

    .line 6351
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v14, v0, :cond_4e

    .line 6352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_LEFT_EAR_PIECE:[Ljava/lang/String;

    const/16 v43, 0x0

    aget-object v42, v42, v43

    const/16 v43, 0x0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V
    invoke-static/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6355
    :cond_4e
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v14, v0, :cond_1

    .line 6356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_RIGHT_EAR_PIECE:[Ljava/lang/String;

    const/16 v43, 0x0

    aget-object v42, v42, v43

    const/16 v43, 0x0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V
    invoke-static/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6365
    :cond_4f
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_50

    .line 6366
    const-string v41, "MainActivity"

    const-string v42, "ACTION_VERSION_INFO Broadcast received"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareLayout(I)V
    invoke-static {v0, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    goto/16 :goto_0

    .line 6370
    :cond_50
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_52

    .line 6371
    const-string v41, "MainActivity"

    const-string v42, "ACTION_FIRMWARE_TRANSFER Broadcast Received"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6373
    const-string v41, "firmware_status"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 6375
    .local v32, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRetryContinuteButtonsLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6377
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "current_status_text1"

    const-string v43, "none"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 6382
    .local v25, "leftStatus":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "current_status_text2"

    const-string v43, "none"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 6386
    .local v36, "rightStatus":Ljava/lang/String;
    const-string v41, "OK"

    move-object/from16 v0, v25

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_51

    const-string v41, "OK"

    move-object/from16 v0, v36

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_51

    .line 6388
    const-string v41, "MainActivity"

    const-string v42, "Making RetryButton visibility as GONE..<<10>>"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->eEarpieceSoftwareUpdateButtonDivder:Landroid/view/View;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/view/View;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/view/View;->setVisibility(I)V

    .line 6390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateRetryButton:Landroid/widget/Button;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 6411
    :cond_51
    const-string v41, "success"

    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 6412
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 6415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    const-string v42, "Transfer complete"

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateFirmwareUILayout(Ljava/lang/String;I)V
    invoke-static {v0, v1, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 6420
    .end local v25    # "leftStatus":Ljava/lang/String;
    .end local v32    # "result":Ljava/lang/String;
    .end local v36    # "rightStatus":Ljava/lang/String;
    :cond_52
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FIRMWARE_TRANSFER_PROGRESS:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5a

    .line 6421
    const-string v41, "MainActivity"

    const-string v42, "ACTION_FIRMWARE_TRANSFER_PROGRESS Broadcast Received"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6423
    const-string v41, "file_length"

    const/16 v42, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 6424
    .local v18, "fileLength":I
    const-string v41, "sent_file_bytes"

    const/16 v42, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 6426
    .local v7, "bytesTransferred":I
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceSoftwareUpdateProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1200()Landroid/app/Dialog;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/app/Dialog;->isShowing()Z

    move-result v41

    if-nez v41, :cond_53

    .line 6427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceFirmwareUpdateProgressDialog()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$6700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6429
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    move-object/from16 v0, v41

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceFirmwareText(I)V
    invoke-static {v0, v14}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$7900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    .line 6430
    const/16 v41, -0x1

    move/from16 v0, v18

    move/from16 v1, v41

    if-eq v0, v1, :cond_1

    if-eqz v18, :cond_1

    const/16 v41, -0x1

    move/from16 v0, v41

    if-eq v7, v0, :cond_1

    .line 6433
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v14, v0, :cond_58

    .line 6434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v41

    if-eqz v41, :cond_54

    .line 6435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v41

    mul-int/lit8 v42, v7, 0x64

    div-int v42, v42, v18

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6438
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    if-eqz v41, :cond_55

    .line 6439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceLeftFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v43, v7, 0x64

    div-int v43, v43, v18

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "%"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6455
    :cond_55
    :goto_14
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v43

    aget-object v43, v43, v14

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, " Firmware percentage: "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    mul-int/lit8 v43, v7, 0x64

    div-int v43, v43, v18

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6489
    move/from16 v0, v18

    if-ne v7, v0, :cond_1

    .line 6491
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v0, v14, :cond_56

    .line 6492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 6495
    .local v35, "rightLoadingStr":Ljava/lang/String;
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_56

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_56

    .line 6498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceRightProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_REBOOTING:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6501
    .end local v35    # "rightLoadingStr":Ljava/lang/String;
    :cond_56
    const/16 v41, 0x1

    move/from16 v0, v41

    if-ne v0, v14, :cond_57

    .line 6502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v41

    if-eqz v41, :cond_57

    .line 6503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 6506
    .local v24, "leftLoadingstr":Ljava/lang/String;
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_HAS_UPDATED_SW:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_57

    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_FAILED:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_57

    .line 6508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEarpieceLeftProgressLoadingText()Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    sget-object v42, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_REBOOTING:Ljava/lang/String;

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6513
    .end local v24    # "leftLoadingstr":Ljava/lang/String;
    :cond_57
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v41

    if-eqz v41, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 6521
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "current_status_text"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, "OK"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6525
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "current_status_subtext"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    const-string v43, ""

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6442
    :cond_58
    const/16 v41, 0x2

    move/from16 v0, v41

    if-ne v14, v0, :cond_55

    .line 6444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v41

    if-eqz v41, :cond_59

    .line 6445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressBar:Landroid/widget/ProgressBar;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ProgressBar;

    move-result-object v41

    mul-int/lit8 v42, v7, 0x64

    div-int v42, v42, v18

    invoke-virtual/range {v41 .. v42}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 6448
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    if-eqz v41, :cond_55

    .line 6449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceRightFirmwareProgressText:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v41

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v43, v7, 0x64

    div-int v43, v43, v18

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "%"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-virtual/range {v41 .. v42}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_14

    .line 6534
    .end local v7    # "bytesTransferred":I
    .end local v18    # "fileLength":I
    :cond_5a
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EP_CONFIG_STATE_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5c

    .line 6536
    const-string v41, "MainActivity"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string v43, "onReceive() action = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string v43, "Closing dialog if any, stopping EP state machine"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6542
    const-string v41, "MainActivity"

    const-string v42, "[BassBoost] setting -1 for PBE primay headset Constants.ACTION_EP_CONFIG_STATE_UPDATE"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6544
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_known_primary_headset"

    const/16 v43, -0x1

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    .line 6548
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 6551
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->clearAppPreferences()V

    .line 6554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissAllDialogs()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6557
    const/16 v41, 0x1

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1702(Z)Z

    .line 6559
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_status_checked"

    const-string v43, "none"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 6562
    .restart local v39    # "str":Ljava/lang/String;
    const-string v41, "none"

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v41

    if-nez v41, :cond_5b

    .line 6563
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v41

    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v41

    const-string v42, "last_status_checked"

    const-string v43, "true"

    invoke-virtual/range {v41 .. v43}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6567
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6570
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    goto/16 :goto_0

    .line 6615
    .end local v39    # "str":Ljava/lang/String;
    :cond_5c
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_PROFILE_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_5e

    .line 6616
    const-string v41, "actionType"

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6617
    .local v5, "actionType":Ljava/lang/String;
    if-eqz v5, :cond_5d

    .line 6618
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->A2DP_PROFILE_CONNECTED:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1

    .line 6621
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->A2DP_PROFILE_DISCONNECTED:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1

    .line 6624
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->HFP_PROFILE_CONNECTED:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-nez v41, :cond_1

    .line 6627
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->HFP_PROFILE_DISCONNECTED:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1

    goto/16 :goto_0

    .line 6633
    :cond_5d
    const-string v41, "MainActivity"

    const-string v42, "Ear piece Profile actionType is null!!!"

    invoke-static/range {v41 .. v42}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 6636
    .end local v5    # "actionType":Ljava/lang/String;
    :cond_5e
    sget-object v41, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EP_MORE_HEADSETS_FOUND_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_1

    .line 6637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v41

    const/16 v42, 0x8

    move/from16 v0, v41

    move/from16 v1, v42

    if-ne v0, v1, :cond_1

    .line 6638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mDeviceIconsLinearLayout:Landroid/widget/LinearLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$9000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v41

    const/16 v42, 0x8

    invoke-virtual/range {v41 .. v42}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEPStereoAudioUI()V
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$9100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 6640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$UIReciever;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v41, v0

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mMoreEarPiecesPairedWarningLayout:Landroid/widget/RelativeLayout;
    invoke-static/range {v41 .. v41}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$8900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v41

    const/16 v42, 0x0

    invoke-virtual/range {v41 .. v42}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 5792
    :catch_5
    move-exception v41

    goto/16 :goto_2

    .line 5775
    :catch_6
    move-exception v41

    goto/16 :goto_1
.end method
