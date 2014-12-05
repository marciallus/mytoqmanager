.class public Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;
.super Landroid/app/Service;
.source "HandleMessageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;
    }
.end annotation


# static fields
.field public static COUNT_EPL_CONNECT_ATTEMPT:I = 0x0

.field public static COUNT_EPR_CONNECT_ATTEMPT:I = 0x0

.field public static COUNT_WD_CONNECT_ATTEMPT:I = 0x0

.field public static final MAX_CONNECT_ATTEMPTS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HandleMessageService"

.field public static final TIMER_VALUE:I = 0x2710


# instance fields
.field private final MAX_STORED_DAYS:I

.field action:I

.field condition:I

.field final connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

.field private context:Landroid/content/Context;

.field private volatile mServiceHandler:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field messageLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    .line 60
    sput v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    .line 61
    sput v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->connectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    .line 54
    iput v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    .line 55
    iput v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->action:I

    .line 62
    const/16 v0, 0x1c

    iput v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->MAX_STORED_DAYS:I

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->onHandleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    return-object v0
.end method

.method private onHandleIntent(Landroid/content/Intent;)V
    .locals 37
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    if-eqz p1, :cond_13

    .line 119
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 120
    .local v13, "bundle":Landroid/os/Bundle;
    if-eqz v13, :cond_1

    .line 121
    const-string v4, "condition"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    .line 122
    const-string v4, "action"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->action:I

    .line 123
    const-string v4, "messageLength"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->messageLength:I

    .line 128
    :goto_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 129
    const-string v4, "endtype"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    .line 130
    .local v17, "endType":I
    const-string v4, "address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 132
    .local v12, "address":Ljava/lang/String;
    packed-switch v17, :pswitch_data_0

    .line 224
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceHandler:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;

    new-instance v5, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$1;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v5, v0, v1, v12}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$1;-><init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;ILjava/lang/String;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v5, v8, v9}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 644
    .end local v12    # "address":Ljava/lang/String;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v17    # "endType":I
    :cond_0
    :goto_2
    return-void

    .line 126
    .restart local v13    # "bundle":Landroid/os/Bundle;
    :cond_1
    const-string v4, "condition"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    goto :goto_0

    .line 134
    .restart local v12    # "address":Ljava/lang/String;
    .restart local v17    # "endType":I
    :pswitch_0
    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 135
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPP retry interation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPP retry interation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_WD_CONNECT_ATTEMPT:I

    goto :goto_1

    .line 142
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 145
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getState(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 152
    const-string v4, "HandleMessageService"

    const-string v5, "WD SPP server start from HandleMessageService"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->startSPPServer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 164
    :pswitch_1
    const-string v5, "HandleMessageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPP EP-L retry interation: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "   Request from interface: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    const/4 v8, 0x3

    if-ge v4, v8, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    .line 170
    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    goto/16 :goto_1

    .line 164
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 173
    :cond_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 176
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_l_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 182
    const-string v4, "HandleMessageService"

    const-string v5, "EP-L SPP server start from HandleMessageService"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->startSPPServer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 194
    :pswitch_2
    const-string v5, "HandleMessageService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SPP EP-R retry interation: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "   Request from interface: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    const/4 v8, 0x3

    if-ge v4, v8, :cond_5

    const/4 v4, 0x1

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_6

    .line 200
    sget v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    goto/16 :goto_1

    .line 194
    :cond_5
    const/4 v4, 0x0

    goto :goto_4

    .line 203
    :cond_6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 206
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_ep_r_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 212
    const-string v4, "HandleMessageService"

    const-string v5, "EP-R SPP server start from HandleMessageService"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v4

    invoke-virtual {v4, v12}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->startSPPServer(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 296
    .end local v12    # "address":Ljava/lang/String;
    .end local v17    # "endType":I
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 298
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceHandler:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;

    new-instance v5, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$2;-><init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;)V

    const-wide/16 v8, 0x2710

    invoke-virtual {v4, v5, v8, v9}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 361
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_d

    .line 363
    const-string v4, "messageLength"

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v21

    .line 365
    .local v21, "len":I
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 377
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->isThirdPartySMSAppsInstalled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 384
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v31

    .line 385
    .local v31, "smsMessage":Landroid/telephony/SmsMessage;
    if-eqz v31, :cond_0

    .line 386
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v34

    .line 387
    .local v34, "smsNumber":Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 398
    if-eqz v34, :cond_0

    .line 399
    const-string v4, "@"

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 400
    invoke-static/range {v34 .. v34}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 403
    :cond_9
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v5}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v29

    .line 406
    .local v29, "smsContactInfo":[Ljava/lang/String;
    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v35

    .line 407
    .local v35, "smsReceivedTime":J
    const-string v4, "SMSController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received Time from intent= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQ_SEND_SMS_DATA_TO_CONTROLLER: smsReceivedTime = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v35

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getSMSController()Lcom/qualcomm/toq/smartwatch/controller/SMSController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    move-object/from16 v0, v34

    move-wide/from16 v1, v35

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/qualcomm/toq/smartwatch/controller/SMSController;->getItemID(Ljava/lang/String;JLandroid/content/Context;)I

    move-result v20

    .line 419
    .local v20, "itemID":I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-virtual {v4, v0, v5}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v19, 0x1

    .line 422
    .local v19, "isFavorite":I
    :goto_5
    const/4 v4, 0x0

    aget-object v33, v29, v4

    .line 427
    .local v33, "smsName":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    .local v30, "smsContent":Ljava/lang/StringBuilder;
    move/from16 v0, v21

    new-array v0, v0, [Landroid/telephony/SmsMessage;

    move-object/from16 v32, v0

    .line 429
    .local v32, "smsMessages":[Landroid/telephony/SmsMessage;
    const/16 v26, 0x0

    .local v26, "n":I
    :goto_6
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 430
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    aput-object v4, v32, v26

    .line 433
    :try_start_0
    aget-object v4, v32, v26

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_6

    .line 419
    .end local v19    # "isFavorite":I
    .end local v26    # "n":I
    .end local v30    # "smsContent":Ljava/lang/StringBuilder;
    .end local v32    # "smsMessages":[Landroid/telephony/SmsMessage;
    .end local v33    # "smsName":Ljava/lang/String;
    :cond_a
    const/16 v19, 0x0

    goto :goto_5

    .line 436
    .restart local v19    # "isFavorite":I
    .restart local v26    # "n":I
    .restart local v30    # "smsContent":Ljava/lang/StringBuilder;
    .restart local v32    # "smsMessages":[Landroid/telephony/SmsMessage;
    .restart local v33    # "smsName":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 437
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 441
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_b
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 443
    .local v7, "jsonString":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "caller_id"

    move-object/from16 v0, v34

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 445
    const-string v4, "caller_name"

    move-object/from16 v0, v33

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    const-string v4, "privileged"

    move/from16 v0, v19

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 449
    const-string v4, "text"

    move-object/from16 v0, v30

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v4, "item_id"

    move/from16 v0, v20

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 452
    const-string v4, "time_stamp"

    move-wide/from16 v0, v35

    invoke-virtual {v7, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 459
    :goto_8
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SMSNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SMSName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isFavorite: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " SMSContent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ItemID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingSMSInd payload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v3

    .line 475
    .local v3, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v3, :cond_0

    .line 476
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    const v8, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 455
    .end local v3    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :catch_1
    move-exception v15

    .line 456
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 492
    .end local v7    # "jsonString":Lorg/json/JSONObject;
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v19    # "isFavorite":I
    .end local v20    # "itemID":I
    .end local v26    # "n":I
    .end local v29    # "smsContactInfo":[Ljava/lang/String;
    .end local v30    # "smsContent":Ljava/lang/StringBuilder;
    .end local v31    # "smsMessage":Landroid/telephony/SmsMessage;
    .end local v32    # "smsMessages":[Landroid/telephony/SmsMessage;
    .end local v33    # "smsName":Ljava/lang/String;
    .end local v34    # "smsNumber":Ljava/lang/String;
    .end local v35    # "smsReceivedTime":J
    :cond_c
    const-string v4, "HandleMessageService"

    const-string v5, "Third party SMS Apps Installed.Bypassing intent"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 497
    .end local v21    # "len":I
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_10

    .line 499
    :try_start_2
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 502
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MMSUtil;->initializeLastMms()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 507
    const-wide/16 v4, 0x2710

    :try_start_3
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 514
    :goto_9
    :try_start_4
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MMSUtil;->getNewMmsIds()Ljava/util/ArrayList;

    move-result-object v27

    .line 517
    .local v27, "newMmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "i$":Ljava/util/Iterator;
    :cond_e
    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 519
    .local v23, "mmsId":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/qualcomm/toq/smartwatch/utils/MMSUtil;->getMmsText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 521
    .local v22, "mmsBody":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/qualcomm/toq/smartwatch/utils/MMSUtil;->getMmsSenderAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 523
    .local v25, "mmsNumber":Ljava/lang/String;
    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, ""

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 524
    invoke-static/range {v25 .. v25}, Lcom/qualcomm/toq/base/utils/Utils;->getFormattedNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 525
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactInfoFromPhone(Ljava/lang/String;Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v29

    .line 528
    .restart local v29    # "smsContactInfo":[Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->getContactController()Lcom/qualcomm/toq/smartwatch/controller/ContactController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v5}, Lcom/qualcomm/toq/smartwatch/controller/ContactController;->isPriviledgeContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v19, 0x1

    .line 532
    .restart local v19    # "isFavorite":I
    :goto_b
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 533
    .restart local v20    # "itemID":I
    const/4 v4, 0x0

    aget-object v24, v29, v4

    .line 534
    .local v24, "mmsName":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 536
    .restart local v7    # "jsonString":Lorg/json/JSONObject;
    :try_start_5
    const-string v4, "caller_id"

    move-object/from16 v0, v25

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 538
    const-string v4, "caller_name"

    move-object/from16 v0, v24

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string v4, "privileged"

    move/from16 v0, v19

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 542
    const-string v4, "text"

    move-object/from16 v0, v22

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string v4, "item_id"

    move/from16 v0, v20

    invoke-virtual {v7, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 549
    :goto_c
    :try_start_6
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IncomingSMSInd payload: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v3

    .line 554
    .restart local v3    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v3, :cond_e

    .line 555
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x4

    const v8, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_a

    .line 569
    .end local v3    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    .end local v7    # "jsonString":Lorg/json/JSONObject;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "isFavorite":I
    .end local v20    # "itemID":I
    .end local v22    # "mmsBody":Ljava/lang/String;
    .end local v23    # "mmsId":Ljava/lang/String;
    .end local v24    # "mmsName":Ljava/lang/String;
    .end local v25    # "mmsNumber":Ljava/lang/String;
    .end local v27    # "newMmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "smsContactInfo":[Ljava/lang/String;
    :catch_2
    move-exception v15

    .line 570
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 509
    .end local v15    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    .line 510
    .local v15, "e":Ljava/lang/InterruptedException;
    :try_start_7
    invoke-virtual {v15}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_9

    .line 528
    .end local v15    # "e":Ljava/lang/InterruptedException;
    .restart local v18    # "i$":Ljava/util/Iterator;
    .restart local v22    # "mmsBody":Ljava/lang/String;
    .restart local v23    # "mmsId":Ljava/lang/String;
    .restart local v25    # "mmsNumber":Ljava/lang/String;
    .restart local v27    # "newMmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v29    # "smsContactInfo":[Ljava/lang/String;
    :cond_f
    const/16 v19, 0x0

    goto :goto_b

    .line 545
    .restart local v7    # "jsonString":Lorg/json/JSONObject;
    .restart local v19    # "isFavorite":I
    .restart local v20    # "itemID":I
    .restart local v24    # "mmsName":Ljava/lang/String;
    :catch_4
    move-exception v15

    .line 546
    .local v15, "e":Lorg/json/JSONException;
    invoke-virtual {v15}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_c

    .line 574
    .end local v7    # "jsonString":Lorg/json/JSONObject;
    .end local v15    # "e":Lorg/json/JSONException;
    .end local v18    # "i$":Ljava/util/Iterator;
    .end local v19    # "isFavorite":I
    .end local v20    # "itemID":I
    .end local v22    # "mmsBody":Ljava/lang/String;
    .end local v23    # "mmsId":Ljava/lang/String;
    .end local v24    # "mmsName":Ljava/lang/String;
    .end local v25    # "mmsNumber":Ljava/lang/String;
    .end local v27    # "newMmsIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v29    # "smsContactInfo":[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->condition:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 576
    :try_start_8
    const-string v4, "HandleMessageService"

    const-string v5, "REQ_UPDATE_ACTIVITY_PREFERENCE Inside"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->getActivityPointsDatabaseAdapter(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;

    move-result-object v11

    .line 578
    .local v11, "activityPointsDatabaseAdapter":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    if-eqz v11, :cond_11

    .line 579
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Curretn End Date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    move-object/from16 v0, p0

    iget v4, v0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->action:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_12

    .line 590
    const-string v4, "HandleMessageService"

    const-string v5, "Date Changed.Deleting old Db entries if present"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v4, "HandleMessageService"

    const-string v5, "Date Changed.Deleting old Db entries if present"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const/16 v4, 0x1c

    invoke-virtual {v11, v4}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->deleteOldDBEntries(I)I

    .line 606
    :goto_d
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getCurrentDayEndTimeInSec()J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;->fetchDayData(J)Lcom/qualcomm/toq/smartwatch/activitytracker/Day;

    move-result-object v14

    .line 609
    .local v14, "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "activity_monitoring_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 612
    .local v28, "prefs":Landroid/content/SharedPreferences;
    if-eqz v28, :cond_11

    .line 613
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-result-object v16

    .line 615
    .local v16, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_9
    const-string v4, "activity_monitoring_new_key_value"

    invoke-static {v14}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 622
    :goto_e
    :try_start_a
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 627
    .end local v14    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v28    # "prefs":Landroid/content/SharedPreferences;
    :cond_11
    new-instance v10, Landroid/content/Intent;

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_ACTIVITY_MONITORING_UPDATE:Ljava/lang/String;

    invoke-direct {v10, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 628
    .local v10, "activityIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_2

    .line 631
    .end local v10    # "activityIntent":Landroid/content/Intent;
    .end local v11    # "activityPointsDatabaseAdapter":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    :catch_5
    move-exception v15

    .line 632
    .local v15, "e":Ljava/lang/Exception;
    const-string v4, "HandleMessageService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in REQ_UPDATE_ACTIVITY_PREFERENCE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 600
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v11    # "activityPointsDatabaseAdapter":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    :cond_12
    :try_start_b
    const-string v4, "HandleMessageService"

    const-string v5, "Fetching data as Activity DB got updated"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v4, "HandleMessageService"

    const-string v5, "Fetching data in to preference for the current day as Activity DB got updated"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 618
    .restart local v14    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .restart local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v28    # "prefs":Landroid/content/SharedPreferences;
    :catch_6
    move-exception v15

    .line 620
    .local v15, "e":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_e

    .line 640
    .end local v11    # "activityPointsDatabaseAdapter":Lcom/qualcomm/toq/smartwatch/database/ActivityPointsDatabaseAdapter;
    .end local v13    # "bundle":Landroid/os/Bundle;
    .end local v14    # "day":Lcom/qualcomm/toq/smartwatch/activitytracker/Day;
    .end local v15    # "e":Ljava/io/IOException;
    .end local v16    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v28    # "prefs":Landroid/content/SharedPreferences;
    :cond_13
    const-string v4, "HandleMessageService"

    const-string v5, "Intent is null in HandleMessageService:onHandleIntent()"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 78
    const-string v1, "HandleMessageService"

    const-string v2, "OnCreate called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 81
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceLooper:Landroid/os/Looper;

    .line 83
    new-instance v1, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;

    iget-object v2, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;-><init>(Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceHandler:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 90
    const-string v0, "HandleMessageService"

    const-string v1, "On destroy called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceLooper:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 96
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 66
    const-string v1, "HandleMessageService"

    const-string v2, "onStartCommand called"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceHandler:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 68
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->context:Landroid/content/Context;

    .line 69
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 70
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->mServiceHandler:Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1
.end method
