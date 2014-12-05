.class public Lcom/qualcomm/toq/smartwatch/controller/VersionController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "VersionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VersionController"

.field public static final appName:Ljava/lang/String; = "VERSION_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/VersionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 46
    return-void
.end method

.method private deleteFMSFirmwareEntry()V
    .locals 4

    .prologue
    .line 700
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 702
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    const-string v2, "/firmware/1234.zip"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->isFMSEntryAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsDatabaseAdapter()Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;

    move-result-object v1

    const-string v2, "/firmware/1234.zip"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/database/FMSDatabaseAdapter;->deleteFMSEntry(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    const-string v1, "VersionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in deleteFMSFirmwareEntry(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCustomBuildInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 865
    const/4 v3, 0x0

    .line 867
    .local v3, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/PHUB/firmware/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "destZipPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 871
    .local v1, "destinationZipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 872
    new-instance v4, Lcom/qualcomm/toq/smartwatch/controller/VersionController$1;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/controller/VersionController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/VersionController;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 877
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 878
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 881
    .end local v2    # "files":[Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v3
.end method

.method public static getVersionController()Lcom/qualcomm/toq/smartwatch/controller/VersionController;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    .line 52
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    return-object v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 885
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/VersionController;

    .line 886
    return-void
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 41
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endPointType"    # I

    .prologue
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Received VersionInd from "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    if-nez p3, :cond_1

    .line 65
    const-string v38, "VersionController"

    const-string v39, "VersionInd payload is null"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    const/16 v27, 0x0

    .line 70
    .local v27, "prefs":Landroid/content/SharedPreferences;
    const/4 v11, 0x0

    .line 71
    .local v11, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    if-eqz v38, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v38

    if-eqz v38, :cond_2

    .line 73
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v38

    const-string v39, "watch_details_pref"

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v27

    .line 80
    :cond_2
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Received VersionInd: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static/range {p3 .. p3}, Lcom/qualcomm/toq/base/utils/Utils;->printAlohaVersionIndicationPayload(Ljava/lang/Object;)V

    .line 85
    const/4 v15, 0x0

    .line 86
    .local v15, "endPointVersion":Ljava/lang/String;
    const/4 v14, 0x0

    .line 87
    .local v14, "endPointSoftwareRelease":Ljava/lang/String;
    :try_start_0
    const-string v13, ""

    .line 88
    .local v13, "endPointInfoFileName":Ljava/lang/String;
    const-string v12, ""

    .line 89
    .local v12, "endPointInfoDate":Ljava/lang/String;
    new-instance v22, Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v22, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v38, "AlohaVersion"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "alohaVersion":Ljava/lang/String;
    const-string v38, "SoftwareRelease"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 93
    .local v31, "softwareRelease":Ljava/lang/String;
    const/16 v32, 0x0

    .line 102
    .local v32, "softwareRevision":Ljava/lang/String;
    const-string v38, "1.0"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 103
    const-string v38, "0000110500001000800000805f9b34fb"

    sput-object v38, Lcom/qualcomm/toq/base/utils/Constants;->OPP_UUID_BASE:Ljava/lang/String;

    .line 104
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Aloha Version 1.0 - OPP UUID = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Lcom/qualcomm/toq/base/utils/Constants;->OPP_UUID_BASE:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Aloha Version 1.0 - OPP UUID = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Lcom/qualcomm/toq/base/utils/Constants;->OPP_UUID_BASE:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_1
    const-string v38, "SoftwareRevision"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 121
    const-string v38, "SoftwareRevision"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 125
    :cond_3
    const-string v38, "ProductModel"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 126
    .local v28, "productModel":Ljava/lang/String;
    const-string v38, "HardwareRevision"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 131
    .local v18, "hwRevision":Ljava/lang/String;
    const-string v9, ""

    .line 133
    .local v9, "ccaId":Ljava/lang/String;
    const-string v8, ""

    .line 136
    .local v8, "buildTarget":Ljava/lang/String;
    const-string v38, "1.0"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_4

    const-string v38, "1.1"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_e

    .line 138
    :cond_4
    const-string v38, "VersionController"

    const-string v39, "Aloha Version = 1.0 or 1.1"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string v38, "ProductName"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 157
    .local v29, "productType":Ljava/lang/String;
    :goto_2
    const-string v38, "1.0"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string v38, "1.1"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string v38, "1.2"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string v38, "1.3"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string v38, "1.4"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_5

    const-string v38, "1.5"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_10

    .line 163
    :cond_5
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointEnableTFTPMode(IZ)V

    .line 166
    const-string v38, "VersionController"

    const-string v39, "Aloha Version < 1.6: OPP transfer enabled"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_3
    if-eqz v27, :cond_6

    .line 191
    invoke-interface/range {v27 .. v27}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 192
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "device_name"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 193
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "hardware_revision"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 195
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "model_number"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 196
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "software_revision"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 198
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "software_release"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "serial_number"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "build_target"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 203
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 205
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "device_name"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v28

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 207
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "hardware_revision"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 209
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "model_number"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v29

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 211
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "software_revision"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v32

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "software_release"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "serial_number"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "build_target"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-interface {v11, v0, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 225
    :cond_6
    const-string v38, "1.0"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_7

    const-string v38, "1.1"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_13

    .line 227
    :cond_7
    const-string v38, "qt2_devboard3"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_12

    .line 228
    const-string v13, "a3.zip"

    .line 278
    :cond_8
    :goto_4
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " Info file name in Assets folder: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    .line 285
    .local v5, "assetManager":Landroid/content/res/AssetManager;
    const/16 v17, 0x0

    .line 286
    .local v17, "files":[Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    if-eqz v38, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v38

    if-eqz v38, :cond_0

    .line 289
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "VersionInd from "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "VersionInd from "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    const/16 v36, 0x0

    .line 297
    .local v36, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v6, 0x0

    .line 299
    .local v6, "br":Ljava/io/BufferedReader;
    :try_start_1
    const-string v38, ""

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 301
    move-object/from16 v4, v17

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v24, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .local v24, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    move-object v7, v6

    .local v7, "br":Ljava/lang/Object;
    move-object/from16 v37, v36

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v36    # "zis":Ljava/util/zip/ZipInputStream;
    .local v37, "zis":Ljava/util/zip/ZipInputStream;
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_2b

    :try_start_2
    aget-object v16, v4, v19
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 303
    .local v16, "filename":Ljava/lang/String;
    :try_start_3
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Asset file: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_36

    .line 305
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v20

    .line 307
    .local v20, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v38

    if-eqz v38, :cond_a

    .line 309
    const/16 v33, 0x0

    .line 311
    .local v33, "tempIS":Ljava/io/InputStream;
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->getCustomBuildInputStream()Ljava/io/InputStream;

    move-result-object v33

    .line 313
    if-eqz v20, :cond_9

    .line 314
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 315
    const/16 v20, 0x0

    .line 318
    :cond_9
    move-object/from16 v20, v33

    .line 320
    .end local v33    # "tempIS":Ljava/io/InputStream;
    :cond_a
    if-nez v20, :cond_b

    .line 321
    const-string v38, "VersionController"

    const-string v39, "Asset inputstream is null"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_b
    new-instance v36, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    .end local v37    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v36    # "zis":Ljava/util/zip/ZipInputStream;
    const/16 v35, 0x0

    .line 333
    .local v35, "ze":Ljava/util/zip/ZipEntry;
    :cond_c
    :try_start_4
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v35

    if-eqz v35, :cond_35

    .line 334
    invoke-virtual/range {v35 .. v35}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v38

    const-string v39, "wd.info"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 335
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .local v26, "out":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v38, Ljava/io/InputStreamReader;

    move-object/from16 v0, v38

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v38

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 337
    .restart local v6    # "br":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .end local v7    # "br":Ljava/lang/Object;
    move-result-object v25

    .local v25, "line":Ljava/lang/String;
    :goto_6
    if-eqz v25, :cond_1f

    .line 338
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v25

    goto :goto_6

    .line 112
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "assetManager":Landroid/content/res/AssetManager;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v8    # "buildTarget":Ljava/lang/String;
    .end local v9    # "ccaId":Ljava/lang/String;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "files":[Ljava/lang/String;
    .end local v18    # "hwRevision":Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v24    # "len$":I
    .end local v25    # "line":Ljava/lang/String;
    .end local v26    # "out":Ljava/lang/StringBuilder;
    .end local v28    # "productModel":Ljava/lang/String;
    .end local v29    # "productType":Ljava/lang/String;
    .end local v35    # "ze":Ljava/util/zip/ZipEntry;
    .end local v36    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_d
    :try_start_6
    const-string v38, "00000001476D42C4BD119D377C456950"

    sput-object v38, Lcom/qualcomm/toq/base/utils/Constants;->OPP_UUID_BASE:Ljava/lang/String;

    .line 113
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Aloha Version >= 1.1 - OPP UUID = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Lcom/qualcomm/toq/base/utils/Constants;->OPP_UUID_BASE:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Aloha Version >= 1.1 - OPP UUID = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Lcom/qualcomm/toq/base/utils/Constants;->OPP_UUID_BASE:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 677
    .end local v3    # "alohaVersion":Ljava/lang/String;
    .end local v12    # "endPointInfoDate":Ljava/lang/String;
    .end local v13    # "endPointInfoFileName":Ljava/lang/String;
    .end local v22    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v31    # "softwareRelease":Ljava/lang/String;
    .end local v32    # "softwareRevision":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 678
    .local v10, "e":Ljava/lang/Exception;
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Exception in VersionInd: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 142
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v3    # "alohaVersion":Ljava/lang/String;
    .restart local v8    # "buildTarget":Ljava/lang/String;
    .restart local v9    # "ccaId":Ljava/lang/String;
    .restart local v12    # "endPointInfoDate":Ljava/lang/String;
    .restart local v13    # "endPointInfoFileName":Ljava/lang/String;
    .restart local v18    # "hwRevision":Ljava/lang/String;
    .restart local v22    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v28    # "productModel":Ljava/lang/String;
    .restart local v31    # "softwareRelease":Ljava/lang/String;
    .restart local v32    # "softwareRevision":Ljava/lang/String;
    :cond_e
    :try_start_7
    const-string v38, "1.2"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_f

    .line 143
    const-string v38, "VersionController"

    const-string v39, "Aloha Version = 1.2"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v38, "ProductId"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 145
    .restart local v29    # "productType":Ljava/lang/String;
    const-string v38, "CCA_Id"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_2

    .line 149
    .end local v29    # "productType":Ljava/lang/String;
    :cond_f
    const-string v38, "ProductId"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 150
    .restart local v29    # "productType":Ljava/lang/String;
    const-string v38, "CCA_Id"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 151
    const-string v38, "BuildTarget"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 152
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Aloha Version >= 1.3 ccaId = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    :cond_10
    const-string v38, "TransportProtocol"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_11

    const-string v38, "TransportProtocol"

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    const-string v39, "TFTP"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_11

    .line 172
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x1

    invoke-virtual/range {v38 .. v40}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointEnableTFTPMode(IZ)V

    .line 175
    const-string v38, "VersionController"

    const-string v39, "Aloha Version >= 1.6: TFTP transfer enabled"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 179
    :cond_11
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v38

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->setEndPointEnableTFTPMode(IZ)V

    .line 182
    const-string v38, "VersionController"

    const-string v39, "Aloha Version >= 1.6: OPP transfer enabled"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 230
    :cond_12
    const-string v38, "wd_ffa_p1"

    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 231
    const-string v13, "p1.zip"

    goto/16 :goto_4

    .line 237
    :cond_13
    const-string v38, "1.2"

    move-object/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 238
    const-string v38, "A3"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_14

    const-string v38, "P0"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_15

    .line 240
    :cond_14
    const-string v13, "a3.zip"

    goto/16 :goto_4

    .line 242
    :cond_15
    const-string v38, "P1"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_16

    const-string v38, "P2"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_16

    const-string v38, "P3"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_16

    const-string v38, "Pilot"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_16

    const-string v38, "MP"

    move-object/from16 v0, v18

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 247
    :cond_16
    const-string v13, "p1.zip"

    goto/16 :goto_4

    .line 253
    :cond_17
    const-string v38, "qt2_devboard3"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_18

    .line 254
    const-string v13, "a3.zip"

    goto/16 :goto_4

    .line 256
    :cond_18
    const-string v38, "wd_ffa_p1"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 257
    const-string v13, "p1.zip"

    goto/16 :goto_4

    .line 259
    :cond_19
    const-string v38, "wd_kairos_sb_p1"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_1a

    const-string v38, "wd_kairos_p0"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1b

    .line 261
    :cond_1a
    const-string v13, "p0_kairos.zip"

    goto/16 :goto_4

    .line 263
    :cond_1b
    const-string v38, "wd_toes_1"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1c

    .line 264
    const-string v13, "wd_toes_1.zip"

    goto/16 :goto_4

    .line 266
    :cond_1c
    const-string v38, "toq2_2"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1d

    .line 267
    const-string v13, "toq2_2.zip"

    goto/16 :goto_4

    .line 269
    :cond_1d
    const-string v38, "toq2_3"

    move-object/from16 v0, v38

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 270
    const-string v13, "toq2_3.zip"

    goto/16 :goto_4

    .line 273
    :cond_1e
    const-string v38, "VersionController"

    const-string v39, "Unsupported build target/variant indicated by SmartWatch"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_4

    .line 339
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v5    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v6    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "files":[Ljava/lang/String;
    .restart local v19    # "i$":I
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v24    # "len$":I
    .restart local v25    # "line":Ljava/lang/String;
    .restart local v26    # "out":Ljava/lang/StringBuilder;
    .restart local v35    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v36    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_1f
    :try_start_8
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 340
    const/4 v6, 0x0

    .line 341
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 343
    .local v23, "jsonString":Ljava/lang/String;
    new-instance v21, Lorg/json/JSONObject;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 344
    .local v21, "jsonInfo":Lorg/json/JSONObject;
    const-string v38, "Software"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 346
    const/16 v38, 0x0

    const-string v39, "_"

    move-object/from16 v0, v39

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 352
    const-string v38, "Date"

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 353
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "App Firmware software Release = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " Firmware software Release = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v38, "_"

    move-object/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 363
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "App Firmware Version of "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " in APK = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "App Firmware Version of "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " in APK = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " current Firmware version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " current Firmware version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v21    # "jsonInfo":Lorg/json/JSONObject;
    .end local v23    # "jsonString":Ljava/lang/String;
    .end local v25    # "line":Ljava/lang/String;
    .end local v26    # "out":Ljava/lang/StringBuilder;
    :goto_7
    if-eqz v20, :cond_20

    .line 387
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    .line 388
    const/16 v20, 0x0

    .line 390
    :cond_20
    if-eqz v36, :cond_21

    .line 391
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipInputStream;->close()V

    .line 392
    const/16 v36, 0x0

    .line 394
    :cond_21
    if-eqz v6, :cond_22

    .line 395
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 396
    const/4 v6, 0x0

    .line 415
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v35    # "ze":Ljava/util/zip/ZipEntry;
    :cond_22
    :goto_8
    if-eqz v6, :cond_23

    .line 416
    :try_start_9
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 417
    const/4 v6, 0x0

    .line 419
    :cond_23
    if-eqz v36, :cond_24

    .line 420
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 421
    const/16 v36, 0x0

    .line 301
    :cond_24
    add-int/lit8 v19, v19, 0x1

    move-object v7, v6

    .restart local v7    # "br":Ljava/lang/Object;
    move-object/from16 v37, v36

    .end local v36    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v37    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_5

    .line 400
    :catch_1
    move-exception v10

    move-object v6, v7

    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v36, v37

    .line 401
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "br":Ljava/lang/Object;
    .end local v37    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v10    # "e":Ljava/lang/Exception;
    .restart local v36    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_9
    :try_start_a
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Failed to copy asset file: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " details: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Failed to copy asset file: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " details: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 415
    if-eqz v6, :cond_25

    .line 416
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 417
    const/4 v6, 0x0

    .line 419
    :cond_25
    if-eqz v36, :cond_0

    .line 420
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipInputStream;->close()V

    .line 421
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 415
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v36    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "br":Ljava/lang/Object;
    .restart local v37    # "zis":Ljava/util/zip/ZipInputStream;
    :catchall_0
    move-exception v38

    move-object v6, v7

    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v36, v37

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "br":Ljava/lang/Object;
    .end local v37    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v36    # "zis":Ljava/util/zip/ZipInputStream;
    :goto_a
    if-eqz v6, :cond_26

    .line 416
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 417
    const/4 v6, 0x0

    .line 419
    :cond_26
    if-eqz v36, :cond_27

    .line 420
    invoke-virtual/range {v36 .. v36}, Ljava/util/zip/ZipInputStream;->close()V

    .line 421
    const/16 v36, 0x0

    :cond_27
    throw v38
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 426
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v19    # "i$":I
    .end local v24    # "len$":I
    :catch_2
    move-exception v10

    .line 427
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_b
    :try_start_c
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 428
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Failed to get asset file list: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_c
    new-instance v34, Landroid/content/Intent;

    invoke-direct/range {v34 .. v34}, Landroid/content/Intent;-><init>()V

    .line 434
    .local v34, "versionInfoIntent":Landroid/content/Intent;
    sget-object v38, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v38, "endpointtype"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1, v15}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointFirmwareVersion(ILjava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1, v12}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointFirmwareDate(ILjava/lang/String;)V

    .line 443
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1, v13}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeFileName(ILjava/lang/String;)V

    .line 446
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v38

    if-eqz v38, :cond_28

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v38

    const-string v39, "release"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_28

    .line 459
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->loadWDSupportedLanguages(Ljava/lang/String;)V

    .line 463
    :cond_28
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getEndPointCheckCompatibilityMode(I)Z

    move-result v38

    if-nez v38, :cond_2d

    .line 465
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 469
    const-string v38, "version_mode"

    const/16 v39, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 471
    const-string v38, "version_message"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Compatibility Check is set to FALSE. Android App version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " and "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ". Communication will continue to work"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    if-eqz v31, :cond_2c

    if-eqz v14, :cond_2c

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2c

    if-eqz v32, :cond_2c

    if-eqz v15, :cond_2c

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2c

    .line 486
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    .line 489
    const-string v38, "firmware_file_name"

    const-string v39, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->deleteFMSFirmwareEntry()V

    .line 597
    :cond_29
    :goto_d
    const-string v38, "_inbuilt_version"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v38, "_sent_version"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v38

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_32

    .line 605
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->sendAlohaContinueMessage(II)V

    .line 607
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->initialSync()V

    .line 671
    :cond_2a
    :goto_e
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 674
    const-string v38, "VersionController"

    const-string v39, "ACTION_VERSION_INFO broadcast sent"

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v34    # "versionInfoIntent":Landroid/content/Intent;
    .end local v36    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "br":Ljava/lang/Object;
    .restart local v19    # "i$":I
    .restart local v24    # "len$":I
    .restart local v37    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_2b
    move-object v6, v7

    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v36, v37

    .line 431
    .end local v37    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v36    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_c

    .line 497
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "br":Ljava/lang/Object;
    .end local v19    # "i$":I
    .end local v24    # "len$":I
    .restart local v34    # "versionInfoIntent":Landroid/content/Intent;
    :cond_2c
    const-string v38, "firmware_file_name"

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto :goto_d

    .line 505
    :cond_2d
    if-eqz v31, :cond_31

    if-eqz v14, :cond_31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_31

    .line 508
    if-eqz v32, :cond_30

    if-eqz v15, :cond_30

    .line 510
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_2e

    .line 511
    const-string v38, "version_mode"

    const/16 v39, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    const-string v38, "version_message"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Android App and "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " have same version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ". Communication will continue to work"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    .line 522
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 528
    invoke-direct/range {p0 .. p0}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->deleteFMSFirmwareEntry()V

    goto/16 :goto_d

    .line 530
    :cond_2e
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_2f

    .line 531
    const-string v38, "version_mode"

    const/16 v39, 0x2

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    const-string v38, "version_message"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Android App version: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " is higher than the "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ". Please upgrade "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " firmware"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_d

    .line 548
    :cond_2f
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v38

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_29

    .line 549
    const-string v38, "version_mode"

    const/16 v39, 0x2

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    const-string v38, "version_message"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Android App version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " is lower than the "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " version = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ". Please upgrade Android App to match the "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " version, else upgrade "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " firmware to communicate"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 564
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_d

    .line 570
    :cond_30
    const-string v38, "version_mode"

    const/16 v39, 0x2

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 572
    const-string v38, "version_message"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Unable to fetch Version Info, Please upgrade "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " firmware"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_d

    .line 583
    :cond_31
    const-string v38, "version_mode"

    const/16 v39, 0x2

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    const-string v38, "version_message"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Software Release type differs between App and "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", Please upgrade "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v40

    aget-object v40, v40, p5

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " firmware"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x1

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_d

    .line 612
    :cond_32
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1, v13}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeFileName(ILjava/lang/String;)V

    .line 615
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    const/16 v39, 0x2

    move-object/from16 v0, v38

    move/from16 v1, p5

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 618
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->sendAlohaWaitUpdateMessage(II)V

    .line 620
    const/16 v30, 0x0

    .line 622
    .local v30, "result":Z
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v38

    if-nez v38, :cond_34

    .line 625
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, "a3.zip"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_33

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, "p1.zip"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_33

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, "p0_kairos.zip"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_33

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, "wd_toes_1.zip"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_33

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, "toq2_2.zip"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_33

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v38

    const-string v39, "toq2_3.zip"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2a

    .line 643
    :cond_33
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->getFirmwareUpdateController(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    move-result-object v38

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->pushFirmwareUpdateToWD(Ljava/lang/String;)Z

    move-result v30

    .line 647
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, ""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " Firmware push result: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, ""

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeFileName(I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " Firmware push result: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 662
    :cond_34
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v38

    invoke-static/range {v38 .. v38}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->getFirmwareUpdateController(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->pushCustomFirmwareUpdateToWD()Z

    move-result v30

    .line 665
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Firmware push result: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    const-string v38, "VersionController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Firmware push result: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_e

    .line 426
    .end local v30    # "result":Z
    .end local v34    # "versionInfoIntent":Landroid/content/Intent;
    .end local v36    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v7    # "br":Ljava/lang/Object;
    .restart local v19    # "i$":I
    .restart local v24    # "len$":I
    .restart local v37    # "zis":Ljava/util/zip/ZipInputStream;
    :catch_3
    move-exception v10

    move-object v6, v7

    .restart local v6    # "br":Ljava/io/BufferedReader;
    move-object/from16 v36, v37

    .end local v37    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v36    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_b

    .line 415
    .end local v6    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v35    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v38

    move-object v6, v7

    .restart local v6    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "br":Ljava/lang/Object;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v35    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_2
    move-exception v38

    goto/16 :goto_a

    .line 400
    .restart local v7    # "br":Ljava/lang/Object;
    .restart local v20    # "is":Ljava/io/InputStream;
    .restart local v35    # "ze":Ljava/util/zip/ZipEntry;
    :catch_4
    move-exception v10

    move-object v6, v7

    .restart local v6    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_9

    .end local v6    # "br":Ljava/io/BufferedReader;
    .end local v7    # "br":Ljava/lang/Object;
    :catch_5
    move-exception v10

    goto/16 :goto_9

    .restart local v7    # "br":Ljava/lang/Object;
    :cond_35
    move-object v6, v7

    .end local v7    # "br":Ljava/lang/Object;
    .local v6, "br":Ljava/lang/Object;
    goto/16 :goto_7

    .end local v6    # "br":Ljava/lang/Object;
    .end local v20    # "is":Ljava/io/InputStream;
    .end local v35    # "ze":Ljava/util/zip/ZipEntry;
    .end local v36    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v7    # "br":Ljava/lang/Object;
    .restart local v37    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_36
    move-object v6, v7

    .end local v7    # "br":Ljava/lang/Object;
    .restart local v6    # "br":Ljava/lang/Object;
    move-object/from16 v36, v37

    .end local v37    # "zis":Ljava/util/zip/ZipInputStream;
    .restart local v36    # "zis":Ljava/util/zip/ZipInputStream;
    goto/16 :goto_8

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendAlohaContinueMessage(II)V
    .locals 18
    .param p1, "transactionId"    # I
    .param p2, "endpointType"    # I

    .prologue
    .line 719
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 720
    .local v13, "jsonAlohaContinue":Ljava/lang/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    const-string v1, "\"PhoneType\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v1, "\"Android\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const/16 v1, 0x2c

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 725
    const-string v1, "\"SoftwareRelease\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v1, ":"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v1, "\""

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const/16 v1, 0x7d

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 732
    const-string v1, "VersionController"

    const-string v2, "Sending VersionContinueInd to WD"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 740
    const-string v1, "VersionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent VersionContinueInd Indication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "VersionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent VersionContinueInd Indication: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 754
    .local v16, "prefs":Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 755
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "firmwareUpgrade"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    const-string v1, "firmwareUpgrade"

    const/4 v2, 0x0

    invoke-interface {v10, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 757
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 760
    :try_start_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 765
    .local v15, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v14, v15, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 766
    .local v14, "newVersion":Ljava/lang/String;
    const-string v1, "versionName"

    const-string v2, "1.0.0"

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 769
    .local v11, "existingVersion":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 770
    const-string v1, "versionName"

    invoke-interface {v10, v1, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 771
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 774
    new-instance v12, Landroid/content/Intent;

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_SMARTWATCH_APP_UPDATED:Ljava/lang/String;

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 775
    .local v12, "intent":Landroid/content/Intent;
    const-string v1, "appupgrade"

    const/4 v2, 0x1

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 776
    const-string v1, "appversionname"

    invoke-virtual {v12, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 779
    const-string v1, "VersionController"

    const-string v2, "Broadcast ACTION_SMARTWATCH_APP_UPDATED sent"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 790
    .end local v11    # "existingVersion":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "newVersion":Ljava/lang/String;
    .end local v15    # "pInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 794
    .local v8, "am":Landroid/media/AudioManager;
    const/16 v17, 0x0

    .line 796
    .local v17, "silence_mode":I
    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v8}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 798
    :cond_1
    const/16 v17, 0x1

    .line 801
    :cond_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 803
    .local v5, "jsonRingerStateData":Lorg/json/JSONObject;
    :try_start_3
    const-string v1, "silence_mode"

    move/from16 v0, v17

    invoke-virtual {v5, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 808
    :goto_1
    :try_start_4
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 810
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x6

    const v6, 0x8001

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v7

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 819
    const-string v1, "VersionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SilencePhoneInd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    .end local v5    # "jsonRingerStateData":Lorg/json/JSONObject;
    .end local v8    # "am":Landroid/media/AudioManager;
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "jsonAlohaContinue":Ljava/lang/StringBuilder;
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    .end local v17    # "silence_mode":I
    :cond_3
    :goto_2
    return-void

    .line 783
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v13    # "jsonAlohaContinue":Ljava/lang/StringBuilder;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v9

    .line 784
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 785
    const-string v1, "VersionController"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 822
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "jsonAlohaContinue":Ljava/lang/StringBuilder;
    .end local v16    # "prefs":Landroid/content/SharedPreferences;
    :catch_1
    move-exception v9

    .line 823
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v1, "VersionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in sendAlohaContinueMessage(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 806
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "jsonRingerStateData":Lorg/json/JSONObject;
    .restart local v8    # "am":Landroid/media/AudioManager;
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v13    # "jsonAlohaContinue":Ljava/lang/StringBuilder;
    .restart local v16    # "prefs":Landroid/content/SharedPreferences;
    .restart local v17    # "silence_mode":I
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public sendAlohaWaitUpdateMessage(II)V
    .locals 10
    .param p1, "transactionId"    # I
    .param p2, "endpointType"    # I

    .prologue
    .line 832
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 835
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 837
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "firmwareUpgrade"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 838
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 840
    const-string v4, "{ }"

    .line 841
    .local v4, "jsonAlohaWaitUpdate":Ljava/lang/String;
    const-string v0, "VersionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending VersionWaitUpdateInd to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    const-string v0, "VersionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending VersionWaitUpdateInd to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/VersionController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 852
    const-string v0, "VersionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sent VersionWaitUpdateInd Indication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v4    # "jsonAlohaWaitUpdate":Ljava/lang/String;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 856
    :catch_0
    move-exception v7

    .line 857
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "VersionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in sendAlohaWaitUpdateMessage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 690
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 696
    return-void
.end method
