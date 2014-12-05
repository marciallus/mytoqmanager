.class Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;
.super Ljava/lang/Object;
.source "BTProfilesUtil.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;->this$0:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 50
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;->this$0:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, p2}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$002(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 52
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->HFP_PROFILE_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->broadcastProfileUpdateToUiReceiver(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;->this$0:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    # setter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, p2}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$202(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 58
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->A2DP_PROFILE_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->broadcastProfileUpdateToUiReceiver(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(I)V
    .locals 3
    .param p1, "profile"    # I

    .prologue
    const/4 v2, 0x0

    .line 65
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;->this$0:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    # setter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v0, v2}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$002(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    .line 67
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->HFP_PROFILE_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->broadcastProfileUpdateToUiReceiver(Ljava/lang/String;)V

    .line 71
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;->this$0:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    # setter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;
    invoke-static {v0, v2}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$202(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 73
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 74
    # getter for: Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v0

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->A2DP_PROFILE_CONNECTED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->broadcastProfileUpdateToUiReceiver(Ljava/lang/String;)V

    .line 77
    :cond_1
    return-void
.end method
