.class public Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BTPHubReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BTPHubReceiver"


# instance fields
.field public connectionHandlerThread:Landroid/os/HandlerThread;

.field public connectionStateHandler:Landroid/os/Handler;

.field public looper:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionHandlerThread:Landroid/os/HandlerThread;

    .line 38
    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->looper:Landroid/os/Looper;

    .line 39
    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionStateHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->removeHandlerThread()V

    return-void
.end method

.method private removeHandlerThread()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 42
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->looper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 45
    :cond_0
    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionStateHandler:Landroid/os/Handler;

    .line 46
    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionHandlerThread:Landroid/os/HandlerThread;

    .line 47
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 52
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    .line 56
    .local v3, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    const-string v10, "BTPHubReceiver"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BTPHubReceiver  onReceive:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getConnectionType()Ljava/lang/String;

    move-result-object v10

    const-string v11, "TCP"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v10, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 67
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->isEulaAgreementAccepted()Z

    move-result v10

    if-nez v10, :cond_2

    .line 68
    const-string v10, "BTPHubReceiver"

    const-string v11, "Eula is not yet accepted, so discard the BT OFF/ON broadcast"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_2
    const-string v10, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 74
    .local v4, "currBtEnableState":I
    const-class v10, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 78
    .local v8, "phubServiceIntentName":Ljava/lang/String;
    const/16 v10, 0xc

    if-ne v4, v10, :cond_a

    .line 80
    const-string v10, "BTPHubReceiver"

    const-string v11, "STATE_ON:"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v10, "BTPHubReceiver"

    const-string v11, "BT turned ON"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->onBluetoothEnabled()V

    .line 86
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_6

    .line 89
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "associated_wd_device_address"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 92
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v9

    .line 94
    .local v9, "setBTDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 95
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 98
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 101
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "associated_wd_device_name"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 103
    const-string v10, "associated_wd_device_address"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 107
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 113
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "setBTDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_5
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 117
    :cond_6
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 120
    :cond_7
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v9

    .line 122
    .restart local v9    # "setBTDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 133
    .restart local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "associated_ep_l_device_name"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "associated_ep_l_device_address"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 140
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 143
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 146
    .restart local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "associated_ep_l_device_name"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    const-string v10, "associated_ep_l_device_address"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 157
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_9
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "associated_ep_r_device_name"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "associated_ep_r_device_address"

    invoke-interface {v10, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 164
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v10

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 167
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 170
    .restart local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "associated_ep_r_device_name"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    const-string v10, "associated_ep_r_device_address"

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 184
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v9    # "setBTDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_a
    const/16 v10, 0xa

    if-ne v4, v10, :cond_0

    .line 186
    const-string v10, "BTPHubReceiver"

    const-string v11, "STATE_OFF:"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v10, "BTPHubReceiver"

    const-string v11, "BT turned OFF"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->onBluetoothDisabled()V

    .line 192
    new-instance v7, Landroid/content/Intent;

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STOPPED:Ljava/lang/String;

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v7, "intentBTOFF":Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 195
    invoke-static {p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 196
    invoke-static {p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->stopConnectionManager()V

    .line 200
    :cond_b
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 202
    :cond_c
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 211
    .end local v4    # "currBtEnableState":I
    .end local v7    # "intentBTOFF":Landroid/content/Intent;
    .end local v8    # "phubServiceIntentName":Ljava/lang/String;
    :cond_d
    const-string v10, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 213
    iget-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionHandlerThread:Landroid/os/HandlerThread;

    if-nez v10, :cond_e

    .line 214
    new-instance v10, Landroid/os/HandlerThread;

    const-string v11, "BTPHubReceiver"

    invoke-direct {v10, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionHandlerThread:Landroid/os/HandlerThread;

    .line 215
    iget-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    .line 216
    iget-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v10

    iput-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->looper:Landroid/os/Looper;

    .line 217
    new-instance v10, Landroid/os/Handler;

    iget-object v11, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->looper:Landroid/os/Looper;

    invoke-direct {v10, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionStateHandler:Landroid/os/Handler;

    .line 221
    :cond_e
    iget-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionStateHandler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 222
    iget-object v10, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->connectionStateHandler:Landroid/os/Handler;

    new-instance v11, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;

    invoke-direct {v11, p0, p2, v3, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;-><init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;Landroid/content/Intent;Lcom/qualcomm/toq/base/factory/ConnectionFactory;Landroid/content/Context;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
