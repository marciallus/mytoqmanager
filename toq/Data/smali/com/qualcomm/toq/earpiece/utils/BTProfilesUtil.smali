.class public Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
.super Ljava/lang/Object;
.source "BTProfilesUtil.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;


# instance fields
.field private mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil$1;-><init>(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;)V

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 32
    return-void
.end method

.method static synthetic access$002(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$100()Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    return-object v0
.end method

.method static synthetic access$202(Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method private closeProxy()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 113
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const-class v1, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    invoke-direct {v0}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    .line 38
    sput-object p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mContext:Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    invoke-direct {v0}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->openProxy()V

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private openProxy()V
    .locals 4

    .prologue
    .line 86
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 89
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 95
    return-void
.end method


# virtual methods
.method public broadcastProfileUpdateToUiReceiver(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EAR_PIECE_PROFILE_UPDATE:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "actionType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    sget-object v1, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 160
    return-void
.end method

.method public isA2DPConnected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "btName"    # Ljava/lang/String;
    .param p2, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v3, 0x0

    .line 140
    .local v3, "status":Z
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v4, :cond_1

    .line 141
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothA2DP:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 142
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 143
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    const/4 v3, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method public isHeadsetProfileConnected(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "btName"    # Ljava/lang/String;
    .param p2, "btAddress"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 121
    .local v3, "status":Z
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v4, :cond_1

    .line 122
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mBluetoothHFPHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 123
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 124
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 126
    const/4 v3, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 166
    sget-object v0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->closeProxy()V

    .line 168
    iput-object v1, p0, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 169
    sput-object v1, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->sBtProfilesUtil:Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    .line 171
    :cond_0
    return-void
.end method
