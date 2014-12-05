.class Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;
.super Ljava/lang/Object;
.source "BTPHubReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;

.field final synthetic val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;Landroid/content/Intent;Lcom/qualcomm/toq/base/factory/ConnectionFactory;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver;

    iput-object p2, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    iput-object p4, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 229
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->isEulaAgreementAccepted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 230
    const-string v7, "BTPHubReceiver"

    const-string v8, "Eula is not yet accepted, so discard the ACTION_BOND_STATE_CHANGED broadcast"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 236
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v8, "android.bluetooth.device.extra.BOND_STATE"

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 239
    .local v6, "state":I
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 240
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Device name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Device address = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    if-eqz v3, :cond_3

    .line 250
    :cond_2
    const/16 v7, 0xa

    if-ne v6, v7, :cond_a

    .line 251
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 260
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_address"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 266
    const-string v7, "BTPHubReceiver"

    const-string v8, "WD got Unpaired"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v7, "BTPHubReceiver"

    const-string v8, "disassociatePhoneWD() from BTPHubReceiver"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->onWatchUnpaired()V

    .line 277
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 279
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->disassociatePhoneWD()V

    .line 414
    .end local v0    # "address":Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 420
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside Constants.END_POINT_EP_LEFT   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v9

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ToqApplication.getDeviceType() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const/16 v7, 0xa

    if-ne v6, v7, :cond_f

    .line 428
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPStateUpdate(I)V

    .line 431
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_l_device_name"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_l_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 439
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_l_device_address"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .restart local v0    # "address":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 445
    const-string v7, "BTPHubReceiver"

    const-string v8, "EPL got unpaired"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 453
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 455
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->disassociatePhoneEPLeft()V

    .line 541
    .end local v0    # "address":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_6

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_7

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 546
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Inside Constants.END_POINT_EP_RIGHT"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v9

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", ToqApplication.getDeviceType() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/16 v7, 0xa

    if-ne v6, v7, :cond_13

    .line 554
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPStateUpdate(I)V

    .line 557
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_r_device_name"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_r_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 569
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_r_device_address"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .restart local v0    # "address":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 575
    const-string v7, "BTPHubReceiver"

    const-string v8, "EPR got unpaired"

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 583
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 585
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->disassociatePhoneEPRight()V

    .line 668
    .end local v0    # "address":Ljava/lang/String;
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v7

    new-instance v8, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1$1;

    invoke-direct {v8, p0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1$1;-><init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;)V

    invoke-virtual {v7, v8}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto/16 :goto_0

    .line 294
    .restart local v0    # "address":Ljava/lang/String;
    :cond_8
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unpaired, but this is not an associated device"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 303
    .end local v0    # "address":Ljava/lang/String;
    :cond_9
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " unpaired, but WD details are not in preferences to cross check"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 311
    :cond_a
    const/16 v7, 0xc

    if-ne v6, v7, :cond_3

    .line 312
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 315
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_address"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 323
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_address"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 327
    .restart local v0    # "address":Ljava/lang/String;
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Another WD device got paired, but already Phone is is connected with other WD having address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Another WD device got paired, but already Phone is connected with other WD having address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 335
    .end local v0    # "address":Ljava/lang/String;
    :cond_b
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone got paired to WD with address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone got paired to WD with address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/StateListenerFacade;->onWatchPaired()V

    .line 346
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_wd_device_name"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 355
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 358
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v7, "associated_wd_device_name"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
    const-string v7, "associated_wd_device_address"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 362
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 365
    sget-boolean v7, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v7, :cond_c

    .line 366
    const-string v7, "BTPHubReceiver"

    const-string v8, "Starting Service for Pair Event"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    .local v5, "serviceIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 370
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 374
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    :cond_c
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 376
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneWD()V

    goto/16 :goto_1

    .line 383
    .end local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_d
    sget-boolean v7, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v7, :cond_e

    .line 384
    const-string v7, "BTPHubReceiver"

    const-string v8, "Starting New Service for Pair Event"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .restart local v5    # "serviceIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_1

    .line 391
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    :cond_e
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 393
    const-string v7, "BTPHubReceiver"

    const-string v8, "Service already running so just calling associate WD"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    .line 401
    const/4 v7, 0x0

    sput v7, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    .line 402
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneWD()V

    goto/16 :goto_1

    .line 461
    :cond_f
    const/16 v7, 0xc

    if-ne v6, v7, :cond_5

    .line 463
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPStateUpdate(I)V

    .line 471
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    .line 472
    .local v2, "bondInfo":Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;
    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v1

    .line 473
    .local v1, "areMoreEarPiecesBonded":Z
    if-eqz v1, :cond_10

    .line 474
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v2, v7, v8, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->disassociateEarPieces(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 479
    :cond_10
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_l_device_name"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_l_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 485
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_l_device_address"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .restart local v0    # "address":Ljava/lang/String;
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Another EPL device got paired, but already Phone is in associated state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    goto/16 :goto_2

    .line 497
    .end local v0    # "address":Ljava/lang/String;
    :cond_11
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone got paired to EPL with address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 505
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 508
    .restart local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v7, "associated_ep_l_device_name"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 510
    const-string v7, "associated_ep_l_device_address"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 512
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 514
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 522
    sget-boolean v7, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    if-nez v7, :cond_12

    .line 523
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/qualcomm/toq/base/service/PHubBaseService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .restart local v5    # "serviceIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 528
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    :cond_12
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 530
    const/4 v7, 0x0

    sput v7, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    .line 531
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneEPLeft()V

    goto/16 :goto_2

    .line 591
    .end local v1    # "areMoreEarPiecesBonded":Z
    .end local v2    # "bondInfo":Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;
    .end local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_13
    const/16 v7, 0xc

    if-ne v6, v7, :cond_7

    .line 593
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->broadcastEPStateUpdate(I)V

    .line 600
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    .line 601
    .restart local v2    # "bondInfo":Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;
    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v1

    .line 602
    .restart local v1    # "areMoreEarPiecesBonded":Z
    if-eqz v1, :cond_14

    .line 603
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v2, v7, v8, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->disassociateEarPieces(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 608
    :cond_14
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_r_device_name"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_r_device_address"

    invoke-interface {v7, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 614
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "associated_ep_r_device_address"

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .restart local v0    # "address":Ljava/lang/String;
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Another EPR device got paired, but already Phone is in associated state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    goto/16 :goto_3

    .line 626
    .end local v0    # "address":Ljava/lang/String;
    :cond_15
    const-string v7, "BTPHubReceiver"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Phone got paired to EPR with address"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x3

    invoke-static {v7, v8, v9, v10, v11}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 634
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 637
    .restart local v4    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v7, "associated_ep_r_device_name"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 639
    const-string v7, "associated_ep_r_device_address"

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 641
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 643
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 651
    sget-boolean v7, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    if-nez v7, :cond_16

    .line 652
    new-instance v5, Landroid/content/Intent;

    const-class v7, Lcom/qualcomm/toq/base/service/PHubBaseService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .restart local v5    # "serviceIntent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    .line 657
    .end local v5    # "serviceIntent":Landroid/content/Intent;
    :cond_16
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 659
    const/4 v7, 0x0

    sput v7, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    .line 660
    iget-object v7, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/BTPHubReceiver$1;->val$connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v7

    invoke-interface {v7}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneEPRight()V

    goto/16 :goto_3
.end method
