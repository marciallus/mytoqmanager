.class public Lcom/qualcomm/toq/base/utils/ProjectConfig;
.super Ljava/lang/Object;
.source "ProjectConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProjectConfig"

.field private static mInstance:Lcom/qualcomm/toq/base/utils/ProjectConfig;


# instance fields
.field private KEY_AGENDA_EVENT_DAYS:Ljava/lang/String;

.field private KEY_BT_CONNECTION_LOOPER_DELAY:Ljava/lang/String;

.field private KEY_CHECK_COMPATIBILITY:Ljava/lang/String;

.field private KEY_COMM_HUB_CONTACTS:Ljava/lang/String;

.field private KEY_ISSUE_LOGGER_DEFAULT_EMAIL:Ljava/lang/String;

.field private KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB:Ljava/lang/String;

.field private KEY_MUSIC_CONTROLLER_TYPE:Ljava/lang/String;

.field private KEY_OPP_TRANSFER_LOOPER_DELAY:Ljava/lang/String;

.field private KEY_STOCK_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

.field private KEY_TCP_PORT:Ljava/lang/String;

.field private KEY_TOTAL_NUMBER_OF_CONTACTS:Ljava/lang/String;

.field private KEY_WD_DEVICE_NAME:Ljava/lang/String;

.field private KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

.field private agendaEventDays:I

.field private apkVariant:Ljava/lang/String;

.field private bambooBuildNumber:Ljava/lang/String;

.field private bt_Looper_Delay:J

.field private buildType:Ljava/lang/String;

.field private checkCompatibilityValue:I

.field private commHubContactCount:I

.field private connectionListener:Ljava/lang/String;

.field private connectionType:Ljava/lang/String;

.field private isssueLoggerFileSizeInKB:J

.field private issueLoggerDefaultEmail:Ljava/lang/String;

.field private musicControllerTypeValue:Ljava/lang/String;

.field private opp_Looper_Delay:J

.field private packerType:Ljava/lang/String;

.field private stockAmbientFilePushTimer:I

.field private tcpPort:I

.field private totalNumberOfContacts:I

.field private transferType:Ljava/lang/String;

.field private wdDeviceName:[Ljava/lang/String;

.field private weatherAmbientFilePushTimer:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x384

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "BLUETOOTH"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->connectionType:Ljava/lang/String;

    .line 20
    const-string v0, "release"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->apkVariant:Ljava/lang/String;

    .line 21
    const-string v0, "JSON"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->packerType:Ljava/lang/String;

    .line 22
    const-string v0, "BLUETOOTH"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->connectionListener:Ljava/lang/String;

    .line 25
    sget v0, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_PORT:I

    iput v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->tcpPort:I

    .line 26
    const-string v0, "TCP_PORT"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TCP_PORT:Ljava/lang/String;

    .line 28
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_DEVICE_NAME:[Ljava/lang/String;

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->wdDeviceName:[Ljava/lang/String;

    .line 29
    const-string v0, "WD_DEVICE_NAME"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WD_DEVICE_NAME:Ljava/lang/String;

    .line 31
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bt_Looper_Delay:J

    .line 32
    const-string v0, "BT_CONN_DELAY"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_BT_CONNECTION_LOOPER_DELAY:Ljava/lang/String;

    .line 34
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->opp_Looper_Delay:J

    .line 35
    const-string v0, "OPP_TRANSFER_DELAY"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_OPP_TRANSFER_LOOPER_DELAY:Ljava/lang/String;

    .line 37
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->totalNumberOfContacts:I

    .line 38
    const-string v0, "TOTAL_NUMBER_OF_CONTACTS"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TOTAL_NUMBER_OF_CONTACTS:Ljava/lang/String;

    .line 40
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->isssueLoggerFileSizeInKB:J

    .line 41
    const-string v0, "ISSUE_LOGGER_FILE_SIZE_IN_KB"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB:Ljava/lang/String;

    .line 43
    const-string v0, "phub.errorlog@qualcomm.com"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->issueLoggerDefaultEmail:Ljava/lang/String;

    .line 44
    const-string v0, "ISSUE_LOGGER_DEFAULT_EMAIL"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_DEFAULT_EMAIL:Ljava/lang/String;

    .line 46
    const-string v0, "release"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->buildType:Ljava/lang/String;

    .line 49
    const-string v0, "OPP"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->transferType:Ljava/lang/String;

    .line 51
    const-string v0, "0000"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bambooBuildNumber:Ljava/lang/String;

    .line 53
    const/16 v0, 0x14

    iput v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->commHubContactCount:I

    .line 54
    const-string v0, "TOTAL_COMM_HUB_CONTACTS"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_COMM_HUB_CONTACTS:Ljava/lang/String;

    .line 56
    iput v2, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->stockAmbientFilePushTimer:I

    .line 57
    iput v2, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->weatherAmbientFilePushTimer:I

    .line 59
    const-string v0, "STOCK_AMBIENT_FILE_PUSH_TIMER_IN_SEC"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_STOCK_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    .line 60
    const-string v0, "WEATHER_AMBIENT_FILE_PUSH_TIMER_IN_SEC"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    .line 62
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->agendaEventDays:I

    .line 63
    const-string v0, "AGENDA_EVENT_DAYS"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_AGENDA_EVENT_DAYS:Ljava/lang/String;

    .line 65
    const-string v0, "CHECK_COMPATIBILITY"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_CHECK_COMPATIBILITY:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->checkCompatibilityValue:I

    .line 68
    const-string v0, "MUSIC_CONTROLLER_TYPE"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_MUSIC_CONTROLLER_TYPE:Ljava/lang/String;

    .line 69
    const-string v0, "SERIAL"

    iput-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->musicControllerTypeValue:Ljava/lang/String;

    return-void
.end method

.method public static getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->mInstance:Lcom/qualcomm/toq/base/utils/ProjectConfig;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/utils/ProjectConfig;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->mInstance:Lcom/qualcomm/toq/base/utils/ProjectConfig;

    .line 76
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->mInstance:Lcom/qualcomm/toq/base/utils/ProjectConfig;

    return-object v0
.end method


# virtual methods
.method public getAPKVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->apkVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getAgendaEventsForDays()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->agendaEventDays:I

    return v0
.end method

.method public getBambooBuildNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bambooBuildNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getBt_Looper_Delay()J
    .locals 4

    .prologue
    .line 170
    const-string v0, "*BT conenction Looper delay From File**"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bt_Looper_Delay:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-wide v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bt_Looper_Delay:J

    return-wide v0
.end method

.method public getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->buildType:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckCompatibilityMode()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->checkCompatibilityValue:I

    return v0
.end method

.method public getCommHubContactCount()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->commHubContactCount:I

    return v0
.end method

.method public getConnectionListener()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->connectionListener:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->connectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getIsssueLoggerFileSizeInKB()J
    .locals 2

    .prologue
    .line 219
    iget-wide v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->isssueLoggerFileSizeInKB:J

    return-wide v0
.end method

.method public getIssueLoggerDefaultEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->issueLoggerDefaultEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicControllerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->musicControllerTypeValue:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->musicControllerTypeValue:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->musicControllerTypeValue:Ljava/lang/String;

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "SERIAL"

    goto :goto_0
.end method

.method public getOpp_Looper_Delay()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->opp_Looper_Delay:J

    return-wide v0
.end method

.method public getPackerType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->packerType:Ljava/lang/String;

    return-object v0
.end method

.method public getStockAmbientFilePushTimer()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->stockAmbientFilePushTimer:I

    return v0
.end method

.method public getTCPPort()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->tcpPort:I

    return v0
.end method

.method public getTotalNumberOfContacts()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->totalNumberOfContacts:I

    return v0
.end method

.method public getTransferType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->transferType:Ljava/lang/String;

    return-object v0
.end method

.method public getWeatherAmbientFilePushTimer()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->weatherAmbientFilePushTimer:I

    return v0
.end method

.method public getWristDisplayDeviceName()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 153
    const-string v0, "**wdDeviceName From File**"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->wdDeviceName:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->wdDeviceName:[Ljava/lang/String;

    return-object v0
.end method

.method public loadProperties()V
    .locals 33

    .prologue
    .line 252
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v20

    .line 253
    .local v20, "root":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v29

    const-string v30, "mounted"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_2

    .line 255
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->canRead()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 256
    new-instance v7, Ljava/io/File;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "/config.properties"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    .local v7, "configProperties":Ljava/io/File;
    const/4 v12, 0x0

    .line 259
    .local v12, "iStream":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v29

    if-eqz v29, :cond_1

    .line 260
    const-string v29, "MainActivity"

    const-string v30, "Config File exists and data is read"

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    new-instance v13, Ljava/io/FileInputStream;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .local v13, "iStream":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v19, Ljava/util/Properties;

    invoke-direct/range {v19 .. v19}, Ljava/util/Properties;-><init>()V

    .line 264
    .local v19, "properties":Ljava/util/Properties;
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TCP_PORT:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 266
    .local v22, "tcpPortFromConffig":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v8, "dataChanged":Ljava/lang/StringBuilder;
    if-eqz v22, :cond_3

    .line 268
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setTCPPort(I)V

    .line 269
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TCP_PORT:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 279
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WD_DEVICE_NAME:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 280
    .local v27, "wdDeviceNameFromConfig":Ljava/lang/String;
    if-eqz v27, :cond_4

    .line 281
    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v9, v0, [Ljava/lang/String;

    const/16 v29, 0x0

    aput-object v27, v9, v29

    const/16 v29, 0x1

    const-string v30, "Toq Smartwatch"

    aput-object v30, v9, v29

    const/16 v29, 0x2

    const-string v30, "Toq Smar"

    aput-object v30, v9, v29

    .line 283
    .local v9, "deviceName":[Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setWristDisplayDeviceName([Ljava/lang/String;)V

    .line 284
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WD_DEVICE_NAME:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 296
    .end local v9    # "deviceName":[Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_COMM_HUB_CONTACTS:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 297
    .local v25, "totalNoOfCommHubContactsFromConfig":Ljava/lang/String;
    if-eqz v25, :cond_5

    .line 298
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 299
    .local v23, "temp":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setCommHubContactCount(I)V

    .line 300
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_COMM_HUB_CONTACTS:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 311
    .end local v23    # "temp":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_BT_CONNECTION_LOOPER_DELAY:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 312
    .local v4, "btLooeprDelayFromConfig":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 313
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 314
    .local v23, "temp":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setBt_Looper_Delay(J)V

    .line 315
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_BT_CONNECTION_LOOPER_DELAY:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 327
    .end local v23    # "temp":J
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_AGENDA_EVENT_DAYS:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "agendaEventsForDaysFromConfig":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 329
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 330
    .local v23, "temp":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setAgendaEventsForDays(I)V

    .line 331
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_AGENDA_EVENT_DAYS:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 343
    .end local v23    # "temp":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_CHECK_COMPATIBILITY:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "checkCompatibilityMode":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 345
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 346
    .local v16, "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setCheckCompatibilityMode(I)V

    .line 347
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_CHECK_COMPATIBILITY:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 359
    .end local v16    # "mode":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_OPP_TRANSFER_LOOPER_DELAY:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 360
    .local v17, "oPPLooeprDelayFromConfig":Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 361
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v23, v0

    .line 362
    .local v23, "temp":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setOpp_Looper_Delay(J)V

    .line 363
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_OPP_TRANSFER_LOOPER_DELAY:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 375
    .end local v23    # "temp":J
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TOTAL_NUMBER_OF_CONTACTS:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 376
    .local v26, "totalNoOfContactsFromConfig":Ljava/lang/String;
    if-eqz v26, :cond_a

    .line 377
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 378
    .local v23, "temp":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setTotalNumberOfContacts(I)V

    .line 379
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TOTAL_NUMBER_OF_CONTACTS:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 391
    .end local v23    # "temp":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 392
    .local v15, "issueLoggerFileSizeFromConfig":Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 393
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v23

    .line 394
    .local v23, "temp":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setIsssueLoggerFileSizeInKB(J)V

    .line 395
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 407
    .end local v23    # "temp":J
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_DEFAULT_EMAIL:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 408
    .local v14, "issueLoggerDefaultEmailFromConfig":Ljava/lang/String;
    if-eqz v14, :cond_c

    .line 409
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setIssueLoggerDefaultEmail(Ljava/lang/String;)V

    .line 410
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_DEFAULT_EMAIL:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 422
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_STOCK_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 423
    .local v21, "stockAmbientFilePushTimerFromConfig":Ljava/lang/String;
    if-eqz v21, :cond_d

    .line 424
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 425
    .local v23, "temp":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setStockAmbientFilePushTimer(I)V

    .line 426
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_STOCK_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 437
    .end local v23    # "temp":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 438
    .local v28, "weatherAmbientFilePushTimerFromConfig":Ljava/lang/String;
    if-eqz v28, :cond_e

    .line 439
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 440
    .restart local v23    # "temp":I
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setWeatherAmbientFilePushTimer(I)V

    .line 441
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 453
    .end local v23    # "temp":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_MUSIC_CONTROLLER_TYPE:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 454
    .local v6, "checkMusicControllerType":Ljava/lang/String;
    if-eqz v6, :cond_f

    .line 456
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->setMusicControllerType(Ljava/lang/String;)V

    .line 457
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_MUSIC_CONTROLLER_TYPE:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 469
    :goto_c
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_0

    .line 471
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 472
    new-instance v11, Ljava/io/FileWriter;

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-direct {v11, v7, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 474
    .local v11, "gpxwriter":Ljava/io/FileWriter;
    new-instance v18, Ljava/io/BufferedWriter;

    move-object/from16 v0, v18

    invoke-direct {v0, v11}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 475
    .local v18, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedWriter;->close()V

    .line 479
    .end local v11    # "gpxwriter":Ljava/io/FileWriter;
    .end local v18    # "out":Ljava/io/BufferedWriter;
    :cond_0
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 480
    const/4 v12, 0x0

    .line 491
    .end local v3    # "agendaEventsForDaysFromConfig":Ljava/lang/String;
    .end local v4    # "btLooeprDelayFromConfig":Ljava/lang/String;
    .end local v5    # "checkCompatibilityMode":Ljava/lang/String;
    .end local v6    # "checkMusicControllerType":Ljava/lang/String;
    .end local v8    # "dataChanged":Ljava/lang/StringBuilder;
    .end local v13    # "iStream":Ljava/io/FileInputStream;
    .end local v14    # "issueLoggerDefaultEmailFromConfig":Ljava/lang/String;
    .end local v15    # "issueLoggerFileSizeFromConfig":Ljava/lang/String;
    .end local v17    # "oPPLooeprDelayFromConfig":Ljava/lang/String;
    .end local v19    # "properties":Ljava/util/Properties;
    .end local v21    # "stockAmbientFilePushTimerFromConfig":Ljava/lang/String;
    .end local v22    # "tcpPortFromConffig":Ljava/lang/String;
    .end local v25    # "totalNoOfCommHubContactsFromConfig":Ljava/lang/String;
    .end local v26    # "totalNoOfContactsFromConfig":Ljava/lang/String;
    .end local v27    # "wdDeviceNameFromConfig":Ljava/lang/String;
    .end local v28    # "weatherAmbientFilePushTimerFromConfig":Ljava/lang/String;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    :cond_1
    if-eqz v12, :cond_2

    .line 492
    :try_start_2
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 493
    const/4 v12, 0x0

    .line 504
    .end local v7    # "configProperties":Ljava/io/File;
    .end local v12    # "iStream":Ljava/io/FileInputStream;
    :cond_2
    :goto_d
    return-void

    .line 275
    .restart local v7    # "configProperties":Ljava/io/File;
    .restart local v8    # "dataChanged":Ljava/lang/StringBuilder;
    .restart local v13    # "iStream":Ljava/io/FileInputStream;
    .restart local v19    # "properties":Ljava/util/Properties;
    .restart local v22    # "tcpPortFromConffig":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TCP_PORT:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->tcpPort:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_0

    .line 290
    .restart local v27    # "wdDeviceNameFromConfig":Ljava/lang/String;
    :cond_4
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WD_DEVICE_NAME:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->wdDeviceName:[Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget-object v30, v30, v31

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_1

    .line 306
    .restart local v25    # "totalNoOfCommHubContactsFromConfig":Ljava/lang/String;
    :cond_5
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_COMM_HUB_CONTACTS:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->commHubContactCount:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_2

    .line 321
    .restart local v4    # "btLooeprDelayFromConfig":Ljava/lang/String;
    :cond_6
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_BT_CONNECTION_LOOPER_DELAY:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bt_Looper_Delay:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_3

    .line 337
    .restart local v3    # "agendaEventsForDaysFromConfig":Ljava/lang/String;
    :cond_7
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_AGENDA_EVENT_DAYS:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->agendaEventDays:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_4

    .line 353
    .restart local v5    # "checkCompatibilityMode":Ljava/lang/String;
    :cond_8
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_CHECK_COMPATIBILITY:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->checkCompatibilityValue:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_5

    .line 369
    .restart local v17    # "oPPLooeprDelayFromConfig":Ljava/lang/String;
    :cond_9
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_OPP_TRANSFER_LOOPER_DELAY:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->opp_Looper_Delay:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_6

    .line 385
    .restart local v26    # "totalNoOfContactsFromConfig":Ljava/lang/String;
    :cond_a
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_TOTAL_NUMBER_OF_CONTACTS:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->totalNumberOfContacts:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_7

    .line 401
    .restart local v15    # "issueLoggerFileSizeFromConfig":Ljava/lang/String;
    :cond_b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_FILE_SIZE_IN_KB:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->isssueLoggerFileSizeInKB:J

    move-wide/from16 v30, v0

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_8

    .line 416
    .restart local v14    # "issueLoggerDefaultEmailFromConfig":Ljava/lang/String;
    :cond_c
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_ISSUE_LOGGER_DEFAULT_EMAIL:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->issueLoggerDefaultEmail:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_9

    .line 432
    .restart local v21    # "stockAmbientFilePushTimerFromConfig":Ljava/lang/String;
    :cond_d
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_STOCK_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->stockAmbientFilePushTimer:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_a

    .line 447
    .restart local v28    # "weatherAmbientFilePushTimerFromConfig":Ljava/lang/String;
    :cond_e
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_WEATHER_AMBIENT_FILE_PUSH_TIMER:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->weatherAmbientFilePushTimer:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    goto/16 :goto_b

    .line 463
    .restart local v6    # "checkMusicControllerType":Ljava/lang/String;
    :cond_f
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->KEY_MUSIC_CONTROLLER_TYPE:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->musicControllerTypeValue:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\n"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v8

    goto/16 :goto_c

    .line 496
    .end local v3    # "agendaEventsForDaysFromConfig":Ljava/lang/String;
    .end local v4    # "btLooeprDelayFromConfig":Ljava/lang/String;
    .end local v5    # "checkCompatibilityMode":Ljava/lang/String;
    .end local v6    # "checkMusicControllerType":Ljava/lang/String;
    .end local v8    # "dataChanged":Ljava/lang/StringBuilder;
    .end local v13    # "iStream":Ljava/io/FileInputStream;
    .end local v14    # "issueLoggerDefaultEmailFromConfig":Ljava/lang/String;
    .end local v15    # "issueLoggerFileSizeFromConfig":Ljava/lang/String;
    .end local v17    # "oPPLooeprDelayFromConfig":Ljava/lang/String;
    .end local v19    # "properties":Ljava/util/Properties;
    .end local v21    # "stockAmbientFilePushTimerFromConfig":Ljava/lang/String;
    .end local v22    # "tcpPortFromConffig":Ljava/lang/String;
    .end local v25    # "totalNoOfCommHubContactsFromConfig":Ljava/lang/String;
    .end local v26    # "totalNoOfContactsFromConfig":Ljava/lang/String;
    .end local v27    # "wdDeviceNameFromConfig":Ljava/lang/String;
    .end local v28    # "weatherAmbientFilePushTimerFromConfig":Ljava/lang/String;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v10

    .line 497
    .local v10, "e":Ljava/io/IOException;
    const-string v29, "ProjectConfig"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in closing the stream "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 483
    .end local v10    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v10

    .line 484
    .local v10, "e":Ljava/lang/NumberFormatException;
    :goto_e
    :try_start_4
    const-string v29, "ProjectConfig"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Incorrect data added in config file "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 491
    if-eqz v12, :cond_2

    .line 492
    :try_start_5
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 493
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 496
    :catch_2
    move-exception v10

    .line 497
    .local v10, "e":Ljava/io/IOException;
    const-string v29, "ProjectConfig"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in closing the stream "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 486
    .end local v10    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v10

    .line 487
    .restart local v10    # "e":Ljava/io/IOException;
    :goto_f
    :try_start_6
    const-string v29, "ProjectConfig"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Exception occured in config file "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 491
    if-eqz v12, :cond_2

    .line 492
    :try_start_7
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 493
    const/4 v12, 0x0

    goto/16 :goto_d

    .line 496
    :catch_4
    move-exception v10

    .line 497
    const-string v29, "ProjectConfig"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Error in closing the stream "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 490
    .end local v10    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    .line 491
    :goto_10
    if-eqz v12, :cond_10

    .line 492
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 493
    const/4 v12, 0x0

    .line 498
    :cond_10
    :goto_11
    throw v29

    .line 496
    :catch_5
    move-exception v10

    .line 497
    .restart local v10    # "e":Ljava/io/IOException;
    const-string v30, "ProjectConfig"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Error in closing the stream "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 490
    .end local v10    # "e":Ljava/io/IOException;
    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .restart local v13    # "iStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v29

    move-object v12, v13

    .end local v13    # "iStream":Ljava/io/FileInputStream;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    goto :goto_10

    .line 486
    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .restart local v13    # "iStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v10

    move-object v12, v13

    .end local v13    # "iStream":Ljava/io/FileInputStream;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    goto :goto_f

    .line 483
    .end local v12    # "iStream":Ljava/io/FileInputStream;
    .restart local v13    # "iStream":Ljava/io/FileInputStream;
    :catch_7
    move-exception v10

    move-object v12, v13

    .end local v13    # "iStream":Ljava/io/FileInputStream;
    .restart local v12    # "iStream":Ljava/io/FileInputStream;
    goto/16 :goto_e
.end method

.method public setAPKVariant(Ljava/lang/String;)V
    .locals 0
    .param p1, "apkType"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->apkVariant:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setAgendaEventsForDays(I)V
    .locals 0
    .param p1, "agendaEventDays"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->agendaEventDays:I

    .line 109
    return-void
.end method

.method public setBambooBuildNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bambooBuildNumber:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setBt_Looper_Delay(J)V
    .locals 0
    .param p1, "bt_Looper_Delay"    # J

    .prologue
    .line 175
    iput-wide p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->bt_Looper_Delay:J

    .line 176
    return-void
.end method

.method public setBuildType(Ljava/lang/String;)V
    .locals 0
    .param p1, "buildType"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->buildType:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setCheckCompatibilityMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->checkCompatibilityValue:I

    .line 117
    return-void
.end method

.method public setCommHubContactCount(I)V
    .locals 0
    .param p1, "commHubcontactCount"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->commHubContactCount:I

    .line 85
    return-void
.end method

.method public setConnectionListener(Ljava/lang/String;)V
    .locals 0
    .param p1, "connectionListener"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->connectionListener:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setConnectionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "conntype"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->connectionType:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setIsssueLoggerFileSizeInKB(J)V
    .locals 0
    .param p1, "isssueLoggerFileSizeInKB"    # J

    .prologue
    .line 223
    iput-wide p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->isssueLoggerFileSizeInKB:J

    .line 224
    return-void
.end method

.method public setIssueLoggerDefaultEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "issueLoggerDefaultEmail"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->issueLoggerDefaultEmail:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setMusicControllerType(Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVRCP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SERIAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->musicControllerTypeValue:Ljava/lang/String;

    .line 128
    :cond_1
    return-void
.end method

.method public setOpp_Looper_Delay(J)V
    .locals 0
    .param p1, "opp_Looper_Delay"    # J

    .prologue
    .line 199
    iput-wide p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->opp_Looper_Delay:J

    .line 200
    return-void
.end method

.method public setPackerType(Ljava/lang/String;)V
    .locals 0
    .param p1, "currPakcerType"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->packerType:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setStockAmbientFilePushTimer(I)V
    .locals 0
    .param p1, "stockAmbientFilePushTimer"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->stockAmbientFilePushTimer:I

    .line 184
    return-void
.end method

.method public setTCPPort(I)V
    .locals 0
    .param p1, "newTCPPort"    # I

    .prologue
    .line 166
    iput p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->tcpPort:I

    .line 167
    return-void
.end method

.method public setTotalNumberOfContacts(I)V
    .locals 0
    .param p1, "totalNumberOfContacts"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->totalNumberOfContacts:I

    .line 216
    return-void
.end method

.method public setTransferType(Ljava/lang/String;)V
    .locals 0
    .param p1, "transferType"    # Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->transferType:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setWeatherAmbientFilePushTimer(I)V
    .locals 0
    .param p1, "weatherAmbientFilePushTimer"    # I

    .prologue
    .line 191
    iput p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->weatherAmbientFilePushTimer:I

    .line 192
    return-void
.end method

.method public setWristDisplayDeviceName([Ljava/lang/String;)V
    .locals 0
    .param p1, "newWdDeviceName"    # [Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/qualcomm/toq/base/utils/ProjectConfig;->wdDeviceName:[Ljava/lang/String;

    .line 159
    return-void
.end method
