.class Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;
.super Ljava/lang/Object;
.source "HandleMessageService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->onHandleIntent(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 301
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "associated_wd_device_name"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v7, "associated_wd_device_address"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 308
    const-string v6, "HandleMessageService"

    const-string v7, "REQ_CONNECT_ANOTHER_DEVICE called but WD associated details present in SP, this state not expected"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    .line 316
    .local v5, "setBTDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 317
    .local v0, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v8}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 320
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 323
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "associated_wd_device_name"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 325
    const-string v6, "associated_wd_device_address"

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    const-string v6, "HandleMessageService"

    const-string v7, "associatePhoneWD() from HandleMessageService"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v6, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget-object v6, v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget-object v6, v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 333
    iget-object v6, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget-object v6, v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v6

    invoke-interface {v6}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneWD()V

    goto :goto_0

    .line 339
    .end local v0    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    iget-object v6, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget-object v6, v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget-object v6, v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 341
    const-string v6, "HandleMessageService"

    const-string v7, "HandleMessageService: send ACTION_WD_DEVICE_DISASSOCIATED Broadcast"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v1, Landroid/content/Intent;

    sget-object v6, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_WD_DEVICE_DISASSOCIATED:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 344
    .local v1, "disIntent":Landroid/content/Intent;
    const-string v6, "endpointtype"

    invoke-virtual {v1, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 346
    iget-object v6, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    iget-object v6, v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 349
    const-string v6, "HandleMessageService"

    const-string v7, "HandleMessageService: stop PHubService"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 354
    .local v4, "serviceIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;->this$0:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    # getter for: Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;
    invoke-static {v6}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->access$100(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0
.end method
