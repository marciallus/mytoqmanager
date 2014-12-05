.class public Lcom/qualcomm/toq/smartwatch/controller/SystemController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "SystemController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemController"

.field public static final appName:Ljava/lang/String; = "TIME_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/SystemController;


# instance fields
.field public bFindPhoneReqOn:Z

.field public context:Landroid/content/Context;

.field public currentSysTime:J

.field public dayLightSaving:I

.field public dayLightSavingOffset:J

.field private isFindWdReqAllowed:Z

.field public mFindPhoneCancel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    .line 37
    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mFindPhoneCancel:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->isFindWdReqAllowed:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->context:Landroid/content/Context;

    .line 43
    return-void
.end method

.method public static getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;
    .locals 1

    .prologue
    .line 557
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    .line 560
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    return-object v0
.end method

.method private unpairDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "removeBond"

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 48
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in unpairDevice() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 49
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 63
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->context:Landroid/content/Context;

    .line 64
    sparse-switch p2, :sswitch_data_0

    .line 462
    .end local p3    # "payload":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 66
    .restart local p3    # "payload":Ljava/lang/Object;
    :sswitch_0
    const-string v3, "SystemController"

    const-string v4, "DisassociateReq Request received"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v3, "SystemController"

    const-string v4, "Received DisassociateReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 72
    .local v7, "jsonDisconnectResp":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "result"

    const/4 v4, 0x0

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string v3, "description"

    const-string v4, "WD has been Disassociated"

    invoke-virtual {v7, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 78
    const-string v3, "SystemController"

    const-string v4, "Sending DisassociateResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v4

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/16 v8, 0x4008

    move-object/from16 v3, p0

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v9}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 88
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisassociateResp sent to WD "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 97
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v4

    invoke-interface {v4}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->unpairDevice(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v41

    .line 103
    .local v41, "e2":Ljava/lang/Exception;
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in DisassociateReq - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v41 .. v41}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 92
    .end local v41    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v39

    .line 93
    .local v39, "e":Ljava/lang/Exception;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 125
    .end local v7    # "jsonDisconnectResp":Lorg/json/JSONObject;
    .end local v39    # "e":Ljava/lang/Exception;
    :sswitch_1
    const-string v3, "SystemController"

    const-string v4, "Received SilencePhoneReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set to Silence Mode Request received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v12, "jsonSilenceMode":Lorg/json/JSONObject;
    :try_start_2
    const-string v3, "result"

    const/4 v4, 0x0

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v3, "description"

    const-string v4, "Set to Silence Mode Request received"

    invoke-virtual {v12, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    .line 139
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 141
    const-string v3, "SystemController"

    const-string v4, "Sending SilencePhoneResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v9

    const/4 v10, 0x5

    const/4 v11, 0x6

    const/16 v13, 0x4007

    move-object/from16 v8, p0

    move/from16 v14, p4

    invoke-virtual/range {v8 .. v14}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 151
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    const-string v5, "silence_mode"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setAppCurrentMode(I)V

    .line 154
    :cond_2
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set to Silence Mode Response sent to WD= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->context:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 157
    const-string v4, "SystemController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REQ_SILENCE_MODE value = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v3, v0

    const-string v6, "silence_mode"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v3

    check-cast p3, Lorg/json/JSONObject;

    .end local p3    # "payload":Ljava/lang/Object;
    const-string v4, "silence_mode"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->setRingerModeSilent(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 164
    :catch_2
    move-exception v40

    .line 165
    .local v40, "e1":Lorg/json/JSONException;
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 135
    .end local v40    # "e1":Lorg/json/JSONException;
    .restart local p3    # "payload":Ljava/lang/Object;
    :catch_3
    move-exception v39

    .line 136
    .local v39, "e":Lorg/json/JSONException;
    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 169
    .end local v12    # "jsonSilenceMode":Lorg/json/JSONObject;
    .end local v39    # "e":Lorg/json/JSONException;
    :sswitch_2
    const-string v3, "SystemController"

    const-string v4, "Received GetTimeReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v3, "SystemController"

    const-string v4, "Received GetTimeReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 173
    .local v17, "jsonTime":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 174
    .local v36, "currentSysTimeInMilis":J
    const-wide/16 v3, 0x3e8

    div-long v3, v36, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->currentSysTime:J

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v35

    .line 177
    .local v35, "cal":Ljava/util/Calendar;
    invoke-virtual/range {v35 .. v35}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v46

    .line 179
    .local v46, "timeZone":Ljava/util/TimeZone;
    invoke-virtual/range {v46 .. v46}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    div-int/lit16 v0, v3, 0x3e8

    move/from16 v47, v0

    .line 180
    .local v47, "timezoneOffset":I
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timezone Offset Raw = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    move-object/from16 v0, v46

    move-wide/from16 v1, v36

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    div-int/lit16 v0, v3, 0x3e8

    move/from16 v48, v0

    .line 183
    .local v48, "timezoneOffsetDST":I
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "timezone Offset including daylight savings time  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {v35 .. v35}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v38

    .line 188
    .local v38, "date":Ljava/util/Date;
    invoke-virtual/range {v46 .. v46}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 189
    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 190
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->dayLightSaving:I

    .line 191
    invoke-virtual/range {v46 .. v46}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->dayLightSavingOffset:J

    .line 203
    :goto_3
    :try_start_4
    const-string v3, "result"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 205
    const-string v3, "description"

    const-string v4, "current time"

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    new-instance v44, Lorg/json/JSONObject;

    invoke-direct/range {v44 .. v44}, Lorg/json/JSONObject;-><init>()V

    .line 208
    .local v44, "jsonInternalTimeData":Lorg/json/JSONObject;
    const-string v3, "epoch_time"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->currentSysTime:J

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    const-string v3, "dst"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->dayLightSaving:I

    move-object/from16 v0, v44

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 212
    const-string v3, "time_zone"

    move-object/from16 v0, v44

    move/from16 v1, v47

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 214
    const-string v3, "time"

    move-object/from16 v0, v17

    move-object/from16 v1, v44

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 219
    .end local v44    # "jsonInternalTimeData":Lorg/json/JSONObject;
    :goto_4
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetTimeResp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 222
    const-string v3, "SystemController"

    const-string v4, "Sending GetTimeResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v14

    const/4 v15, 0x5

    const/16 v16, 0x6

    const/16 v18, 0x4000

    move-object/from16 v13, p0

    move/from16 v19, p4

    invoke-virtual/range {v13 .. v19}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 194
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->dayLightSaving:I

    .line 195
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->dayLightSavingOffset:J

    goto/16 :goto_3

    .line 199
    :cond_4
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->dayLightSaving:I

    .line 200
    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->dayLightSavingOffset:J

    goto/16 :goto_3

    .line 216
    :catch_4
    move-exception v39

    .line 217
    .local v39, "e":Ljava/lang/Exception;
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception ocured in GetTimeRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 236
    .end local v17    # "jsonTime":Lorg/json/JSONObject;
    .end local v35    # "cal":Ljava/util/Calendar;
    .end local v36    # "currentSysTimeInMilis":J
    .end local v38    # "date":Ljava/util/Date;
    .end local v39    # "e":Ljava/lang/Exception;
    .end local v46    # "timeZone":Ljava/util/TimeZone;
    .end local v47    # "timezoneOffset":I
    .end local v48    # "timezoneOffsetDST":I
    :sswitch_3
    const-string v3, "SystemController"

    const-string v4, "Received FindPhoneReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v3

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mFindPhoneCancel:Z

    .line 239
    const-string v3, "SystemController"

    const-string v4, "Received FindPhoneReq"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :try_start_5
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 243
    .local v27, "responsePayload":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    if-eqz v3, :cond_5

    .line 244
    const-string v3, "result"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string v3, "description"

    const-string v4, "Find phone alert already on"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendFoundPhoneReq(Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 277
    .end local v27    # "responsePayload":Lorg/json/JSONObject;
    :catch_5
    move-exception v39

    .line 278
    .restart local v39    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    goto/16 :goto_0

    .line 251
    .end local v39    # "e":Ljava/lang/Exception;
    .restart local v27    # "responsePayload":Lorg/json/JSONObject;
    :cond_5
    const/4 v3, 0x1

    :try_start_6
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    .line 252
    const-string v3, "result"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 254
    const-string v3, "description"

    const-string v4, "FindPhone Request received"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 258
    const-string v3, "SystemController"

    const-string v4, "Sending FindPhoneResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v19

    const/16 v20, 0x5

    const/16 v21, 0x6

    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    const/16 v23, 0x4001

    move-object/from16 v18, p0

    move/from16 v24, p4

    invoke-virtual/range {v18 .. v24}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 269
    :cond_6
    const-string v3, "SystemController"

    const-string v4, "Sent FindPhoneResp Success"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller Thread Name start find "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->startFindPhoneDialogActivity()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_0

    .line 283
    .end local v27    # "responsePayload":Lorg/json/JSONObject;
    :sswitch_4
    const-string v3, "SystemController"

    const-string v4, "Received CancelFindPhoneReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v3, "SystemController"

    const-string v4, "Received CancelFindPhoneReq"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caller Thread Name for cancel "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->mFindPhoneCancel:Z

    .line 293
    new-instance v42, Landroid/content/Intent;

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CANCEL_FIND_PHONE_REQUEST:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    .local v42, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 295
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 298
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The broadcast is sent with the action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CANCEL_FIND_PHONE_REQUEST:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->bFindPhoneReqOn:Z

    .line 303
    new-instance v22, Lorg/json/JSONObject;

    invoke-direct/range {v22 .. v22}, Lorg/json/JSONObject;-><init>()V

    .line 305
    .local v22, "jsonCancelFindPhone":Lorg/json/JSONObject;
    :try_start_7
    const-string v3, "result"

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    const-string v3, "description"

    const-string v4, "Find Phone Request is Cancelled"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6

    .line 314
    :goto_5
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 316
    const-string v3, "SystemController"

    const-string v4, "Sending CancelFindPhoneResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v19

    const/16 v20, 0x5

    const/16 v21, 0x6

    const/16 v23, 0x4002

    move-object/from16 v18, p0

    move/from16 v24, p4

    invoke-virtual/range {v18 .. v24}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 327
    :cond_8
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent CancelFindPhoneResp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 310
    :catch_6
    move-exception v39

    .line 311
    .local v39, "e":Lorg/json/JSONException;
    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_5

    .line 330
    .end local v22    # "jsonCancelFindPhone":Lorg/json/JSONObject;
    .end local v39    # "e":Lorg/json/JSONException;
    .end local v42    # "intent":Landroid/content/Intent;
    :sswitch_5
    const-string v3, "SystemController"

    const-string v4, "Received FoundPhoneResp from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FoundPhoneResp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 336
    :sswitch_6
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received VoiceCommandReq: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v3, "SystemController"

    const-string v4, "Received VoiceCommandReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :try_start_8
    new-instance v27, Lorg/json/JSONObject;

    invoke-direct/range {v27 .. v27}, Lorg/json/JSONObject;-><init>()V

    .line 341
    .restart local v27    # "responsePayload":Lorg/json/JSONObject;
    const-string v3, "result"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 343
    const-string v3, "description"

    const-string v4, "VoiceCommand Request received"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 348
    const-string v3, "SystemController"

    const-string v4, "Sending VoiceCommandResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v24

    const/16 v25, 0x5

    const/16 v26, 0x6

    const/16 v28, 0x400a

    move-object/from16 v23, p0

    move/from16 v29, p4

    invoke-virtual/range {v23 .. v29}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 360
    :cond_9
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v45

    .line 361
    .local v45, "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v45, :cond_0

    .line 362
    invoke-virtual/range {v45 .. v45}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->launchGoogleVoiceApplication()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_0

    .line 366
    .end local v27    # "responsePayload":Lorg/json/JSONObject;
    .end local v45    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :catch_7
    move-exception v39

    .line 367
    .local v39, "e":Ljava/lang/Exception;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 371
    .end local v39    # "e":Ljava/lang/Exception;
    :sswitch_7
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received FindWDResp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v3, "SystemController"

    const-string v4, "Received FindWDResp from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getPHubService()Lcom/qualcomm/toq/smartwatch/service/PHubService;

    move-result-object v45

    .line 375
    .restart local v45    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    if-eqz v45, :cond_0

    .line 376
    invoke-virtual/range {v45 .. v45}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->startFindWDDialogActivity()V

    goto/16 :goto_0

    .line 381
    .end local v45    # "service":Lcom/qualcomm/toq/smartwatch/service/PHubService;
    :sswitch_8
    const-string v3, "SystemController"

    const-string v4, "Received CancelFindWDResp from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->setIsFindWdReqAllowed(Z)V

    .line 384
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received CancelFindWDResp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    :sswitch_9
    const-string v3, "SystemController"

    const-string v4, "Received FoundWDReq"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v3, "SystemController"

    const-string v4, "Received FoundWDReq from WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    new-instance v43, Landroid/content/Intent;

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FOUND_WD_REQUEST:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v43, "intentObj":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 395
    new-instance v32, Lorg/json/JSONObject;

    invoke-direct/range {v32 .. v32}, Lorg/json/JSONObject;-><init>()V

    .line 397
    .local v32, "jsonFoundWD":Lorg/json/JSONObject;
    :try_start_9
    const-string v3, "result"

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    const-string v3, "description"

    const-string v4, "Found WD Request received"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_8

    .line 405
    :goto_6
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 407
    const-string v3, "SystemController"

    const-string v4, "Sending FoundWDResp to WD"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v3

    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v29

    const/16 v30, 0x5

    const/16 v31, 0x6

    const/16 v33, 0x4006

    move-object/from16 v28, p0

    move/from16 v34, p4

    invoke-virtual/range {v28 .. v34}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 418
    :cond_a
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->setIsFindWdReqAllowed(Z)V

    .line 419
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sent FoundWDResp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 402
    :catch_8
    move-exception v39

    .line 403
    .local v39, "e":Lorg/json/JSONException;
    invoke-virtual/range {v39 .. v39}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_6

    .line 422
    .end local v32    # "jsonFoundWD":Lorg/json/JSONObject;
    .end local v39    # "e":Lorg/json/JSONException;
    .end local v43    # "intentObj":Landroid/content/Intent;
    :sswitch_a
    const-string v3, "SystemController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received GetWDBatteryLevelResp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x6 -> :sswitch_9
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xa -> :sswitch_6
        0x4003 -> :sswitch_5
        0x4004 -> :sswitch_7
        0x4005 -> :sswitch_8
        0x4009 -> :sswitch_a
    .end sparse-switch
.end method

.method public sendCancelFindWDReq()V
    .locals 7

    .prologue
    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 503
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    const-string v0, "SystemController"

    const-string v1, "Sending CancelFindWDReq to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/4 v3, 0x6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 517
    :cond_0
    const-string v0, "SystemController"

    const-string v1, "CancelFindWDReq: "

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 2
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 545
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 547
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 554
    :cond_0
    return-void
.end method

.method public sendFindWDReq()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 483
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->isFindWdReqAllowed:Z

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "SystemController"

    const-string v1, "Sending FindWDReq to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x4

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 496
    const-string v0, "SystemController"

    const-string v1, "Sent FindWDReq"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, v7}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->setIsFindWdReqAllowed(Z)V

    .line 500
    :cond_0
    return-void
.end method

.method public sendFoundPhoneReq(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "resultDesription"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 466
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    const-string v0, "SystemController"

    const-string v1, "Sending FoundPhoneReq to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    const/4 v5, 0x3

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 479
    :cond_0
    const-string v0, "SystemController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent FoundPhoneReq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    return-void
.end method

.method public sendWDBatteryLevelRequest()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 524
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 526
    const-string v0, "SystemController"

    const-string v1, "Sending GetWDBatteryLevelRequest to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v0, "SystemController"

    const-string v1, "Sending GetWDBatteryLevelRequest to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/16 v5, 0x9

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 539
    :cond_0
    return-void
.end method

.method public setIsFindWdReqAllowed(Z)V
    .locals 0
    .param p1, "isFindWdReqAllowed"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->isFindWdReqAllowed:Z

    .line 57
    return-void
.end method

.method public startFindPhoneDialogActivity()V
    .locals 3

    .prologue
    .line 564
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 565
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 571
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 572
    return-void
.end method
