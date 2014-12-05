.class public Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
.super Ljava/lang/Object;
.source "BTConnectionManager.java"

# interfaces
.implements Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "BTConnectionManager"

.field private static mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static mInstance:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

.field public static sLocalBluetoothAddress:Ljava/lang/String;


# instance fields
.field public btcontext:Landroid/content/Context;

.field protected connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

.field public counter:Ljava/util/Timer;

.field private mEndPointConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/qualcomm/toq/base/endpoint/IEndPoint;",
            "Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    const-string v0, "00:00:00:00:00:00"

    sput-object v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->sLocalBluetoothAddress:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    .line 47
    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->btcontext:Landroid/content/Context;

    .line 51
    :try_start_0
    iput-object p1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->btcontext:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 62
    sget-object v2, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_1

    .line 63
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_SUPPORTED:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    instance-of v2, p0, Landroid/app/Service;

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "BTConnectionManager"

    const-string v3, "Stopping Service as bluetooth not supported"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    check-cast p0, Landroid/app/Service;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 85
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-object v1

    .line 71
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_ENABLED:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 74
    instance-of v2, p0, Landroid/app/Service;

    if-eqz v2, :cond_0

    .line 75
    const-string v2, "BTConnectionManager"

    const-string v3, "Stopping Service to enable bluetooth"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    check-cast p0, Landroid/app/Service;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    goto :goto_0

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_2
    sget-object v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mInstance:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    if-nez v1, :cond_3

    .line 82
    new-instance v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mInstance:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    .line 83
    sget-object v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->sLocalBluetoothAddress:Ljava/lang/String;

    .line 85
    :cond_3
    sget-object v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mInstance:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    goto :goto_0
.end method


# virtual methods
.method public associatePhoneEPLeft()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 325
    const-string v4, "BTConnectionManager"

    const-string v5, "associatePhoneEPLeft() called"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    .line 328
    .local v1, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_l_device_name"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_l_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-nez v4, :cond_0

    .line 335
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_l_device_name"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_l_device_address"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "deviceAddress":Ljava/lang/String;
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endpointname "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endpointaddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0, v3, v2, v7}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->createEndPoint(Ljava/lang/String;Ljava/lang/String;I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    .line 349
    .local v0, "btEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-virtual {v1, v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 351
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->registerEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 352
    const-string v4, "BTConnectionManager"

    const-string v5, "EP-L Connect call from associatePhoneEPLeft()"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .end local v0    # "btEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .end local v3    # "deviceName":Ljava/lang/String;
    :goto_0
    return-void

    .line 356
    :cond_0
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Associated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " details might not be there in shared preference and connectionFactory.getEndPoint() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public associatePhoneEPRight()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 367
    const-string v4, "BTConnectionManager"

    const-string v5, "associatePhoneEPright() called"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    .line 370
    .local v1, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_r_device_name"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_r_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-nez v4, :cond_0

    .line 377
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_r_device_name"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 381
    .local v3, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_r_device_address"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 385
    .local v2, "deviceAddress":Ljava/lang/String;
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endpointname "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endpointaddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p0, v3, v2, v7}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->createEndPoint(Ljava/lang/String;Ljava/lang/String;I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    .line 391
    .local v0, "btEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-virtual {v1, v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 393
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->registerEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 394
    const-string v4, "BTConnectionListener"

    const-string v5, "EP-R Connect call from associatePhoneEPRight()"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v0    # "btEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .end local v3    # "deviceName":Ljava/lang/String;
    :goto_0
    return-void

    .line 399
    :cond_0
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Associated "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " details might not be there in shared preference and connectionFactory.getEndPoint() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public associatePhoneWD()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 634
    const-string v4, "BTConnectionManager"

    const-string v5, "associatePhoneWD() called"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    .line 637
    .local v1, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_name"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-nez v4, :cond_0

    .line 644
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_name"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 648
    .local v3, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_address"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    .local v2, "deviceAddress":Ljava/lang/String;
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endpointname "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "endpointaddress "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    invoke-virtual {p0, v3, v2, v7}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->createEndPoint(Ljava/lang/String;Ljava/lang/String;I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    .line 656
    .local v0, "btEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-virtual {v1, v7, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 657
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->registerEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 658
    const-string v4, "BTConnectionListener"

    const-string v5, "WD Connect call from associatePhoneWD()"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 669
    .end local v0    # "btEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .end local v2    # "deviceAddress":Ljava/lang/String;
    .end local v3    # "deviceName":Ljava/lang/String;
    :goto_0
    return-void

    .line 664
    :cond_0
    const-string v4, "BTConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Associated WD details might not be there in shared preference and connectionFactory.getWdEndPoint() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 3
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    const-string v0, "BTConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v0, "BTConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect() using endpoint object endPoint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->connect(Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 103
    const-string v0, "BTConnectionListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connect using BT address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 105
    return-void
.end method

.method public connectEndpoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 3
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 598
    if-eqz p1, :cond_0

    .line 599
    const-string v0, "BTConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectEndpoint() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "BTConnectionListener"

    const-string v1, "connectEndpoint() using endpoint object"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->connect(Ljava/lang/String;)V

    .line 605
    :cond_0
    return-void
.end method

.method public connectionStateChange(Lcom/qualcomm/toq/base/endpoint/IEndPoint;I)V
    .locals 2
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "state"    # I

    .prologue
    .line 293
    if-eqz p1, :cond_1

    .line 298
    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v0

    if-nez v0, :cond_2

    .line 299
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    .line 306
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->updateState(II)V

    .line 308
    :cond_1
    return-void

    .line 301
    :cond_2
    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 303
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    goto :goto_0
.end method

.method public createEndPoint(Ljava/lang/String;Ljava/lang/String;I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 146
    new-instance v1, Lcom/qualcomm/toq/base/endpoint/bluetooth/BTEndPoint;

    invoke-direct {v1, p1, p2, p3}, Lcom/qualcomm/toq/base/endpoint/bluetooth/BTEndPoint;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 147
    .local v1, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_wd_device_address"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 154
    const-string v2, "associated_wd_device_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 155
    const-string v2, "associated_wd_device_address"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 187
    :cond_0
    :goto_0
    return-object v1

    .line 160
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 163
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_l_device_address"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const-string v2, "associated_ep_l_device_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v2, "associated_ep_l_device_address"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, p1, v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 177
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_r_device_address"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    const-string v2, "associated_ep_r_device_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v2, "associated_ep_r_device_address"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Z)V
    .locals 5
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "itemRemove"    # Z

    .prologue
    .line 226
    const-string v2, "BTConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destroyEndPoint() called endPoint = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    .line 229
    .local v0, "iConnectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 230
    check-cast v1, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .line 236
    .local v1, "instance":Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
    if-eqz v1, :cond_0

    .line 237
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;->setStopListenerCalled(Z)V

    .line 239
    :cond_0
    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->stopConnectionListener()V

    .line 240
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .end local v1    # "instance":Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;
    :cond_1
    return-void
.end method

.method public disassociatePhoneEPLeft()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 409
    const-string v3, "BTConnectionManager"

    const-string v4, "disassociatePhoneEPLeft() called"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 412
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "associated_ep_l_device_name"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 413
    const-string v3, "associated_ep_l_device_address"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 486
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 487
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {v0, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    .line 489
    .local v2, "epEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v2, :cond_0

    .line 490
    invoke-virtual {p0, v2, v5}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Z)V

    .line 493
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 498
    .end local v2    # "epEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_0
    return-void

    .line 496
    :cond_1
    const-string v3, "BTConnectionManager"

    const-string v4, "ConnectionFactory.getConnectionFactory() is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disassociatePhoneEPRight()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 505
    const-string v3, "BTConnectionManager"

    const-string v4, "disassociatePhoneEPRight() called"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 507
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "associated_ep_r_device_name"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 508
    const-string v3, "associated_ep_r_device_address"

    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 582
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 583
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_1

    .line 584
    invoke-virtual {v0, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    .line 585
    .local v2, "epEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v2, :cond_0

    .line 586
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Z)V

    .line 589
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v5, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 594
    .end local v2    # "epEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_0
    return-void

    .line 592
    :cond_1
    const-string v3, "BTConnectionManager"

    const-string v4, "ConnectionFactory.getConnectionFactory() is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disassociatePhoneWD()V
    .locals 20

    .prologue
    .line 674
    const-string v17, "BTConnectionManager"

    const-string v18, "disassociatePhoneWD() called"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v16

    .line 677
    .local v16, "wdEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v16, :cond_2

    .line 680
    const/16 v17, 0x1

    :try_start_0
    sput-boolean v17, Lcom/qualcomm/toq/base/tftp/filetransfer/TFTPFiletransferClient;->isStopTFTPPush:Z

    .line 681
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "app_pref"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 686
    .local v4, "appPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 687
    .local v3, "appEdit":Landroid/content/SharedPreferences$Editor;
    const-string v17, "checkCompatibility"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 689
    const-string v17, "processedEventsSet"

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 690
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 692
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 695
    .local v8, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v17, "associated_wd_device_name"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 696
    const-string v17, "associated_wd_device_address"

    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 697
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 699
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "stores_pref"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 704
    .local v15, "storesPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 705
    .local v14, "storesEdit":Landroid/content/SharedPreferences$Editor;
    const-string v17, "contactsequence"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 706
    const-string v17, "smssequence"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 707
    const-string v17, "quickreplysequence"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 708
    const-string v17, "calllogsequence"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 709
    const-string v17, "agendasequence"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 710
    const-string v17, "recentcommsequence"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 711
    const-string v17, "clocksettingssequence"

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 712
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 714
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "popup_pref"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 718
    .local v11, "popupPrefs":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 719
    .local v12, "popupPrefsEdit":Landroid/content/SharedPreferences$Editor;
    const-string v17, "controller_popup_id"

    move-object/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 720
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 722
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v17

    const-string v18, "first_time_connected_pref"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 727
    .local v10, "firstTimeConnectedprefs":Landroid/content/SharedPreferences;
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 728
    .local v9, "firstTimeConnectedEdit":Landroid/content/SharedPreferences$Editor;
    const-string v17, "first_time_connected"

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 730
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v3    # "appEdit":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "appPrefs":Landroid/content/SharedPreferences;
    .end local v8    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "firstTimeConnectedEdit":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "firstTimeConnectedprefs":Landroid/content/SharedPreferences;
    .end local v11    # "popupPrefs":Landroid/content/SharedPreferences;
    .end local v12    # "popupPrefsEdit":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "storesEdit":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "storesPrefs":Landroid/content/SharedPreferences;
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v17

    if-eqz v17, :cond_1

    .line 760
    const-string v17, "BTConnectionManager"

    const-string v18, "Send ACTION_WD_DEVICE_DISASSOCIATED Broadcast"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v6, Landroid/content/Intent;

    sget-object v17, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_WD_DEVICE_DISASSOCIATED:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v6, "disIntent":Landroid/content/Intent;
    const-string v17, "endpointtype"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 763
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 774
    const-string v17, "BTConnectionManager"

    const-string v18, "disassociating only watch endPoint"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    .line 776
    .local v5, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v5, :cond_3

    .line 777
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    .line 778
    .local v2, "WatchEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v2, :cond_0

    .line 779
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Z)V

    .line 781
    :cond_0
    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 791
    .end local v2    # "WatchEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_1
    const-string v17, "BTConnectionManager"

    const-string v18, "stop PHubService"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDBonded()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 799
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v17

    if-nez v17, :cond_1

    .line 800
    const-string v17, "BTConnectionManager"

    const-string v18, " WD EndPoint() is  NULL"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v17

    const-string v18, "associated_wd_device_address"

    invoke-interface/range {v17 .. v18}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 804
    const-string v17, "BTConnectionManager"

    const-string v18, "SP contains KEY_ASSOCIATED_WD_DEVICE_ADDRESS"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 807
    const-string v17, "BTConnectionListener"

    const-string v18, "associatePhoneWD() from PHubService"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneWD()V

    .line 837
    .end local v5    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v6    # "disIntent":Landroid/content/Intent;
    :cond_1
    :goto_2
    return-void

    .line 738
    :catch_0
    move-exception v7

    .line 739
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    const-string v17, "BTConnectionManager"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 755
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v17, "BTConnectionManager"

    const-string v18, "endPoint is null"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 784
    .restart local v5    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .restart local v6    # "disIntent":Landroid/content/Intent;
    :cond_3
    const-string v17, "BTConnectionManager"

    const-string v18, "ConnectionFactory.getConnectionFactory() is null"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 813
    :cond_4
    const-string v17, "BTConnectionManager"

    const-string v18, "startFactoryObjects(): mConnectionFactory.getConnManager() is null"

    invoke-static/range {v17 .. v18}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 827
    :cond_5
    const/16 v17, 0x1

    sput-boolean v17, Lcom/qualcomm/toq/base/service/PHubBaseService;->isStopCalledOnUnpair:Z

    .line 829
    new-instance v13, Landroid/content/Intent;

    const-class v17, Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 830
    .local v13, "serviceIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_2
.end method

.method public disconnect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 1
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->disconnect()V

    .line 197
    return-void
.end method

.method public getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 130
    .local v1, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :try_start_0
    iget-object v5, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 131
    .local v2, "endPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 132
    .local v4, "keyEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    move-object v1, v4

    .line 141
    .end local v2    # "endPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "keyEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_1
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BTConnectionManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in getEndPoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEndPointConnectionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/qualcomm/toq/base/endpoint/IEndPoint;",
            "Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    .locals 1
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    .line 123
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleConnHandlerData(Lcom/qualcomm/toq/base/endpoint/IEndPoint;[B)V
    .locals 2
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "data"    # [B

    .prologue
    .line 272
    const-string v0, "BTConnectionManager"

    const-string v1, "BTConnectionManager: handleConnHandlerData()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->write([B)V

    .line 275
    :cond_0
    return-void
.end method

.method public handleConnHandlerFileData(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Ljava/lang/Object;)V
    .locals 7
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "fileData"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 312
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "payload":Ljava/lang/String;
    const-string v2, "####"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 315
    const-string v2, "BTConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", File = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-void
.end method

.method public receiveData([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 280
    invoke-interface {p2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v0

    if-nez v0, :cond_1

    .line 281
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    .line 287
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 288
    return-void

    .line 283
    :cond_1
    invoke-interface {p2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-interface {p2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 285
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    goto :goto_0
.end method

.method public registerEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 4
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 201
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "connectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getConnectionListener()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLUETOOTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 220
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v1, "BTConnectionManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created connectionListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v0    # "connectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    :cond_1
    return-void

    .line 209
    .restart local v0    # "connectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    :pswitch_0
    new-instance v0, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;

    .end local v0    # "connectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    invoke-direct {v0, p1, p0}, Lcom/qualcomm/toq/base/connectionlistener/bluetooth/BTConnectionListener;-><init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V

    .line 211
    .restart local v0    # "connectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    goto :goto_0

    .line 214
    :pswitch_1
    new-instance v0, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;

    .end local v0    # "connectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    invoke-direct {v0, p1, p0}, Lcom/qualcomm/toq/earpiece/connectionlistener/bluetooth/BTEarPieceConnectionListener;-><init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V

    .restart local v0    # "connectionListener":Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public resetEndPointConnection(IZ)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "reconnect"    # Z

    .prologue
    .line 842
    const-string v2, "BTConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset Connection request for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :try_start_0
    new-instance v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager$1;-><init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;IZ)V

    .line 877
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 880
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BTConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in resetConnectionEndpoint():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startSPPServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 108
    const-string v0, "BTConnectionListener"

    const-string v1, "Start SPP server using BT address"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "BTConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v0, "BTConnectionListener"

    const-string v1, "Start SPP server using endpoint object"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->startSPPServer()V

    .line 116
    :cond_0
    return-void
.end method

.method public stopConnectionManager()V
    .locals 6

    .prologue
    .line 249
    :try_start_0
    const-string v3, "BTConnectionManager"

    const-string v4, "stopConnectionManager begin"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v3, 0x0

    sput-object v3, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mInstance:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    .line 251
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 253
    .local v2, "endPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 254
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "endPointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 256
    .local v0, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Z)V

    .line 257
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 266
    .end local v0    # "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .end local v1    # "endPointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    .end local v2    # "endPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    :catch_0
    move-exception v3

    .line 268
    :cond_0
    :goto_1
    return-void

    .line 259
    .restart local v1    # "endPointIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    .restart local v2    # "endPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    .line 260
    const-string v3, "BTConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopConnectionManager mEndPointConnectionMap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v3, "BTConnectionManager"

    const-string v4, "stopConnectionManager end"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method
