.class public Lcom/qualcomm/toq/earpiece/controller/EPVersionController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "EPVersionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EPVersionController"

.field public static final appName:Ljava/lang/String; = "VERSION_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/earpiece/controller/EPVersionController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 47
    return-void
.end method

.method private getCustomBuildInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .param p1, "endpointInfoFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 929
    const/4 v2, 0x0

    .line 931
    .local v2, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/TFTP/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "custom/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "destZipPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    .local v1, "destinationZipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 937
    new-instance v2, Ljava/io/FileInputStream;

    .end local v2    # "is":Ljava/io/InputStream;
    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 939
    .restart local v2    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v2
.end method

.method public static getEPVersionController()Lcom/qualcomm/toq/earpiece/controller/EPVersionController;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    invoke-direct {v0}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    .line 53
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    return-object v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 943
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->mInstance:Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    .line 944
    return-void
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 50
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endPointType"    # I

    .prologue
    .line 61
    packed-switch p2, :pswitch_data_0

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    const-string v46, "VersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Received VersionInd from "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-nez p3, :cond_1

    .line 67
    const-string v46, "EPVersionController"

    const-string v47, "VersionInd payload is null"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_1
    const/16 v37, 0x0

    .line 72
    .local v37, "prefs":Landroid/content/SharedPreferences;
    const/4 v14, 0x0

    .line 73
    .local v14, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    if-eqz v46, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v46

    if-eqz v46, :cond_2

    .line 75
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v46

    const-string v47, "watch_details_pref"

    const/16 v48, 0x0

    invoke-virtual/range {v46 .. v48}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 82
    :cond_2
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Received VersionInd: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-static/range {p3 .. p3}, Lcom/qualcomm/toq/base/utils/Utils;->printAlohaVersionIndicationPayload(Ljava/lang/Object;)V

    .line 87
    const/16 v18, 0x0

    .line 88
    .local v18, "endPointVersion":Ljava/lang/String;
    const/16 v17, 0x0

    .line 89
    .local v17, "endPointSoftwareRelease":Ljava/lang/String;
    :try_start_0
    const-string v16, ""

    .line 90
    .local v16, "endPointInfoFileName":Ljava/lang/String;
    const-string v15, ""

    .line 91
    .local v15, "endPointInfoDate":Ljava/lang/String;
    new-instance v26, Lorg/json/JSONObject;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 92
    .local v26, "jsonPayloadData":Lorg/json/JSONObject;
    const-string v46, "AlohaVersion"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 93
    .local v5, "alohaVersion":Ljava/lang/String;
    const-string v46, "SoftwareRelease"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 95
    .local v40, "softwareRelease":Ljava/lang/String;
    const/16 v41, 0x0

    .line 97
    .local v41, "softwareRevision":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPEndPointType(I)Z

    move-result v24

    .line 100
    .local v24, "isEPEndPointType":Z
    const-string v46, "SoftwareRevision"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_3

    .line 101
    const-string v46, "SoftwareRevision"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 105
    :cond_3
    const-string v46, "ProductModel"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 106
    .local v38, "productModel":Ljava/lang/String;
    const-string v46, "HardwareRevision"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 111
    .local v21, "hwRevision":Ljava/lang/String;
    const-string v11, ""

    .line 113
    .local v11, "ccaId":Ljava/lang/String;
    const-string v9, ""

    .line 116
    .local v9, "buildTarget":Ljava/lang/String;
    const-string v46, "1.0"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_4

    const-string v46, "1.1"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_c

    .line 118
    :cond_4
    const-string v46, "EPVersionController"

    const-string v47, "Aloha Version = 1.0 or 1.1"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    const-string v46, "ProductName"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 137
    .local v39, "productType":Ljava/lang/String;
    :goto_1
    if-eqz v37, :cond_5

    .line 141
    invoke-interface/range {v37 .. v37}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 142
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "device_name"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "hardware_revision"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 145
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "model_number"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "software_revision"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "software_release"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "serial_number"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 152
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "build_target"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 155
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "device_name"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 157
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "hardware_revision"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v21

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 159
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "model_number"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v39

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 161
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "software_revision"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v41

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 163
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "software_release"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v40

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "serial_number"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 167
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "build_target"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v46

    invoke-interface {v14, v0, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    :cond_5
    if-eqz v24, :cond_6

    .line 173
    if-eqz v38, :cond_12

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v38

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPModelSupported(Ljava/lang/String;I)Z

    move-result v46

    if-eqz v46, :cond_12

    .line 177
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v12

    .line 186
    .local v12, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v9, :cond_e

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v46

    if-nez v46, :cond_e

    const-string v46, "ep_p2"

    move-object/from16 v0, v46

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_e

    .line 189
    const-string v46, "EPVersionController"

    const-string v47, "Choosing zip file based on EP build target P2"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v16, "ep_p2.zip"

    .line 245
    .end local v12    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_6
    :goto_2
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " Info file name in Assets folder: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .line 252
    .local v7, "assetManager":Landroid/content/res/AssetManager;
    const/16 v20, 0x0

    .line 253
    .local v20, "files":[Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    if-eqz v46, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v46

    if-eqz v46, :cond_0

    .line 256
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "VersionInd from "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v46, "VersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "VersionInd from "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :try_start_1
    const-string v46, ""

    move-object/from16 v0, v46

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    .line 266
    move-object/from16 v6, v20

    .local v6, "arr$":[Ljava/lang/String;
    array-length v0, v6

    move/from16 v28, v0

    .local v28, "len$":I
    const/16 v22, 0x0

    .local v22, "i$":I
    :goto_3
    move/from16 v0, v22

    move/from16 v1, v28

    if-ge v0, v1, :cond_14

    aget-object v19, v6, v22
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 268
    .local v19, "filename":Ljava/lang/String;
    :try_start_2
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Asset file: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_28

    .line 270
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v23

    .line 272
    .local v23, "is":Ljava/io/InputStream;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v46

    if-eqz v46, :cond_8

    .line 274
    const/16 v42, 0x0

    .line 275
    .local v42, "tempIS":Ljava/io/InputStream;
    if-eqz v24, :cond_7

    .line 276
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->getCustomBuildInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v42

    .line 277
    if-eqz v42, :cond_13

    .line 278
    const-string v46, "EPVersionController"

    const-string v47, "EPMessage:Custom build is used for version check"

    const/16 v48, 0x1

    const/16 v49, 0x7

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, p5

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 293
    :cond_7
    :goto_4
    move-object/from16 v23, v42

    .line 295
    .end local v42    # "tempIS":Ljava/io/InputStream;
    :cond_8
    if-nez v23, :cond_9

    .line 296
    const-string v46, "EPVersionController"

    const-string v47, "Asset inputstream is null"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :cond_9
    new-instance v45, Ljava/util/zip/ZipInputStream;

    move-object/from16 v0, v45

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 301
    .local v45, "zis":Ljava/util/zip/ZipInputStream;
    if-nez v45, :cond_a

    .line 302
    const-string v46, "EPVersionController"

    const-string v47, "Asset zipInputstream is null"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    :cond_a
    const/16 v44, 0x0

    .line 307
    .local v44, "ze":Ljava/util/zip/ZipEntry;
    :cond_b
    invoke-virtual/range {v45 .. v45}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v44

    if-eqz v44, :cond_26

    .line 308
    invoke-virtual/range {v44 .. v44}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v46

    const-string v47, "ep.info"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v46

    if-eqz v46, :cond_b

    .line 309
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v36, "out":Ljava/lang/StringBuilder;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v46, Ljava/io/InputStreamReader;

    move-object/from16 v0, v46

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v46

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 311
    .local v8, "br":Ljava/io/BufferedReader;
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v29

    .local v29, "line":Ljava/lang/String;
    :goto_5
    if-eqz v29, :cond_24

    .line 312
    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v29

    goto :goto_5

    .line 122
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v7    # "assetManager":Landroid/content/res/AssetManager;
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v19    # "filename":Ljava/lang/String;
    .end local v20    # "files":[Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v28    # "len$":I
    .end local v29    # "line":Ljava/lang/String;
    .end local v36    # "out":Ljava/lang/StringBuilder;
    .end local v39    # "productType":Ljava/lang/String;
    .end local v44    # "ze":Ljava/util/zip/ZipEntry;
    .end local v45    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_c
    :try_start_3
    const-string v46, "1.2"

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_d

    .line 123
    const-string v46, "EPVersionController"

    const-string v47, "Aloha Version = 1.2"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v46, "ProductId"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 125
    .restart local v39    # "productType":Ljava/lang/String;
    const-string v46, "CCA_Id"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 131
    .end local v39    # "productType":Ljava/lang/String;
    :cond_d
    const-string v46, "ProductId"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 132
    .restart local v39    # "productType":Ljava/lang/String;
    const-string v46, "CCA_Id"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 133
    const-string v46, "BuildTarget"

    move-object/from16 v0, v26

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 134
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Aloha Version >= 1.3 ccaId = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 785
    .end local v5    # "alohaVersion":Ljava/lang/String;
    .end local v9    # "buildTarget":Ljava/lang/String;
    .end local v11    # "ccaId":Ljava/lang/String;
    .end local v15    # "endPointInfoDate":Ljava/lang/String;
    .end local v16    # "endPointInfoFileName":Ljava/lang/String;
    .end local v21    # "hwRevision":Ljava/lang/String;
    .end local v24    # "isEPEndPointType":Z
    .end local v26    # "jsonPayloadData":Lorg/json/JSONObject;
    .end local v38    # "productModel":Ljava/lang/String;
    .end local v39    # "productType":Ljava/lang/String;
    .end local v40    # "softwareRelease":Ljava/lang/String;
    .end local v41    # "softwareRevision":Ljava/lang/String;
    :catch_0
    move-exception v13

    .line 786
    .local v13, "e":Ljava/lang/Exception;
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Exception in VersionInd: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 212
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v5    # "alohaVersion":Ljava/lang/String;
    .restart local v9    # "buildTarget":Ljava/lang/String;
    .restart local v11    # "ccaId":Ljava/lang/String;
    .restart local v12    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .restart local v15    # "endPointInfoDate":Ljava/lang/String;
    .restart local v16    # "endPointInfoFileName":Ljava/lang/String;
    .restart local v21    # "hwRevision":Ljava/lang/String;
    .restart local v24    # "isEPEndPointType":Z
    .restart local v26    # "jsonPayloadData":Lorg/json/JSONObject;
    .restart local v38    # "productModel":Ljava/lang/String;
    .restart local v39    # "productType":Ljava/lang/String;
    .restart local v40    # "softwareRelease":Ljava/lang/String;
    .restart local v41    # "softwareRevision":Ljava/lang/String;
    :cond_e
    :try_start_4
    const-string v46, "P2"

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_f

    const-string v46, "MP"

    move-object/from16 v0, v21

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_10

    .line 214
    :cond_f
    const-string v46, "EPVersionController"

    const-string v47, "Choosing zip file based on EP Hardware revision"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v16, "ep_p2.zip"

    goto/16 :goto_2

    .line 226
    :cond_10
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v46

    if-eqz v46, :cond_11

    .line 227
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointForceUpgradeRequestFlag(IZ)V

    .line 231
    :cond_11
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " Hardware model not found for fetching file from assets: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 238
    .end local v12    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_12
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " Product model not found for fetching file from assets: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    .line 285
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v7    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v19    # "filename":Ljava/lang/String;
    .restart local v20    # "files":[Ljava/lang/String;
    .restart local v22    # "i$":I
    .restart local v23    # "is":Ljava/io/InputStream;
    .restart local v28    # "len$":I
    .restart local v42    # "tempIS":Ljava/io/InputStream;
    :cond_13
    :try_start_5
    const-string v46, "EPVersionController"

    const-string v47, "EPMessage:Custom build is not available. Taking from Assets."

    const/16 v48, 0x1

    const/16 v49, 0x7

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, p5

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4

    .line 375
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v42    # "tempIS":Ljava/io/InputStream;
    :catch_1
    move-exception v13

    .line 376
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Failed to copy asset file: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " details: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v46, "VersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Failed to copy asset file: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " details: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 390
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v19    # "filename":Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v28    # "len$":I
    :catch_2
    move-exception v13

    .line 391
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Failed to get asset file list: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_14
    new-instance v43, Landroid/content/Intent;

    invoke-direct/range {v43 .. v43}, Landroid/content/Intent;-><init>()V

    .line 398
    .local v43, "versionInfoIntent":Landroid/content/Intent;
    sget-object v46, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_VERSION_INFO:Ljava/lang/String;

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v46, "endpointtype"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 401
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointFirmwareVersion(ILjava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1, v15}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointFirmwareDate(ILjava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeFileName(ILjava/lang/String;)V

    .line 415
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SEL hwRevision = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", buildTarget "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", softwareRevision = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ",softwareRelease =  "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    if-eqz v24, :cond_29

    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_15

    if-eqz v9, :cond_29

    invoke-static {v9}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_29

    :cond_15
    if-eqz v41, :cond_16

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_18

    :cond_16
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    if-eqz v46, :cond_18

    if-eqz v40, :cond_17

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_18

    :cond_17
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointForceUpgradeRequestFlag(I)Z

    move-result v46

    if-eqz v46, :cond_29

    .line 429
    :cond_18
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "EPMessage:Require Force upgradation to "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    const/16 v49, 0x7

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, p5

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 435
    const-string v46, "version_mode"

    const/16 v47, 0x2

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const-string v46, "version_message"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Software Release type differs between App and "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", Force upgrading "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " firmware due to it is out of box."

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 449
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    .line 558
    :cond_19
    :goto_6
    const-string v46, "_inbuilt_version"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    const-string v46, "_sent_version"

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 563
    if-eqz v24, :cond_23

    .line 577
    const/16 v46, 0x1

    move/from16 v0, p5

    move/from16 v1, v46

    if-ne v0, v1, :cond_32

    const/16 v34, 0x2

    .line 579
    .local v34, "otherEndpointType":I
    :goto_7
    const/16 v46, 0x1

    move/from16 v0, p5

    move/from16 v1, v46

    if-ne v0, v1, :cond_33

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v35

    .line 583
    .local v35, "otherEndpointTypeBonded":Z
    :goto_8
    if-eqz v35, :cond_1f

    .line 584
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "hardware_revision"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const-string v47, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 587
    .local v31, "otherEarPieceHardwareRevision":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "build_target"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 590
    .local v30, "otherEarPieceBuildTarget":Ljava/lang/String;
    if-eqz v31, :cond_1f

    invoke-static/range {v31 .. v31}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_1a

    if-eqz v30, :cond_1f

    invoke-static/range {v30 .. v30}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_1f

    .line 592
    :cond_1a
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "software_revision"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const-string v47, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 595
    .local v33, "otherEarPieceSoftwareRevision":Ljava/lang/String;
    new-instance v46, Ljava/lang/StringBuilder;

    invoke-direct/range {v46 .. v46}, Ljava/lang/StringBuilder;-><init>()V

    const-string v47, "software_release"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    const-string v47, ""

    move-object/from16 v0, v37

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    move-result-object v32

    .line 599
    .local v32, "otherEarPieceSoftwareRelease":Ljava/lang/String;
    :try_start_8
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v12

    .line 600
    .restart local v12    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Other EP bonded.\nOtherEPRelease: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "   currentEPRelease: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "   ZipEPRelease: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "\nOtherEPRevision: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "   currentEPRevision: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, "   ZipEPRevision: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_34

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_34

    .line 616
    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_1b

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1b

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->isEmpty()Z

    move-result v46

    if-nez v46, :cond_1b

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_1f

    .line 634
    :cond_1b
    move/from16 v0, p5

    invoke-virtual {v12, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v46

    if-eqz v46, :cond_1c

    .line 635
    const/16 v46, 0x2

    move/from16 v0, p5

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 637
    const-string v46, "EPVersionController"

    const-string v47, "EPMessage:Mismatched with other EP revision. Force upgrade"

    const/16 v48, 0x1

    const/16 v49, 0x7

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, p5

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 643
    :cond_1c
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, v32

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-nez v46, :cond_1f

    :cond_1d
    move/from16 v0, v34

    invoke-virtual {v12, v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v46

    const/16 v47, 0x2

    move/from16 v0, v46

    move/from16 v1, v47

    if-eq v0, v1, :cond_1f

    .line 653
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v46

    if-nez v46, :cond_1e

    .line 655
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v46

    const-string v47, "Operational"

    invoke-virtual/range {v46 .. v47}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v46

    if-eqz v46, :cond_1e

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v46

    const/16 v47, 0x3

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_1e

    .line 660
    const/16 v46, 0x2

    move/from16 v0, v34

    move/from16 v1, v46

    invoke-virtual {v12, v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 662
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendAlohaWaitUpdateMessage(II)V

    .line 665
    :cond_1e
    const-string v46, "EPVersionController"

    const-string v47, "EPMessage:Other EP is not having assets revision. Force upgrade"

    const/16 v48, 0x1

    const/16 v49, 0x7

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, p5

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 700
    .end local v12    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v30    # "otherEarPieceBuildTarget":Ljava/lang/String;
    .end local v31    # "otherEarPieceHardwareRevision":Ljava/lang/String;
    .end local v32    # "otherEarPieceSoftwareRelease":Ljava/lang/String;
    .end local v33    # "otherEarPieceSoftwareRevision":Ljava/lang/String;
    :cond_1f
    :goto_9
    if-eqz v21, :cond_20

    :try_start_9
    invoke-static/range {v21 .. v21}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v46

    if-nez v46, :cond_21

    :cond_20
    if-eqz v9, :cond_36

    invoke-static {v9}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->isEPBuildVariantSupported(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_36

    .line 702
    :cond_21
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v46

    if-eqz v46, :cond_35

    .line 704
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "current_status_text"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    sget-object v48, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UPDATE_REQUIRED:Ljava/lang/String;

    invoke-virtual/range {v46 .. v48}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "current_status_subtext"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const-string v48, ""

    invoke-virtual/range {v46 .. v48}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :cond_22
    :goto_a
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 741
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendAlohaContinueMessage(II)V

    .line 743
    const-string v46, "EPVersionController"

    const-string v47, "EPMessage:Sent Continue Message"

    const/16 v48, 0x1

    const/16 v49, 0x7

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, p5

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 779
    .end local v34    # "otherEndpointType":I
    .end local v35    # "otherEndpointTypeBonded":Z
    :cond_23
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v46

    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 782
    const-string v46, "EPVersionController"

    const-string v47, "ACTION_VERSION_INFO broadcast sent"

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 313
    .end local v43    # "versionInfoIntent":Landroid/content/Intent;
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v19    # "filename":Ljava/lang/String;
    .restart local v22    # "i$":I
    .restart local v23    # "is":Ljava/io/InputStream;
    .restart local v28    # "len$":I
    .restart local v29    # "line":Ljava/lang/String;
    .restart local v36    # "out":Ljava/lang/StringBuilder;
    .restart local v44    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v45    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_24
    :try_start_a
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 314
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 316
    .local v27, "jsonString":Ljava/lang/String;
    new-instance v25, Lorg/json/JSONObject;

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    .local v25, "jsonInfo":Lorg/json/JSONObject;
    const-string v46, "Software"

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    .line 319
    const/16 v46, 0x0

    const-string v47, "_"

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 324
    if-eqz v24, :cond_25

    .line 325
    const-string v46, "release"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 326
    .local v10, "buildTypeIndex":I
    const/16 v46, -0x1

    move/from16 v0, v46

    if-le v10, v0, :cond_25

    .line 327
    const-string v46, "_"

    move-object/from16 v0, v17

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v46

    add-int/lit8 v46, v46, 0x1

    const-string v47, "_"

    move-object/from16 v0, v18

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v47

    move-object/from16 v0, v17

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 331
    .end local v10    # "buildTypeIndex":I
    :cond_25
    const-string v46, "Date"

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 332
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "App Firmware software Release = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " Firmware software Release = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string v46, "_"

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v46

    add-int/lit8 v46, v46, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 342
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "App Firmware Version of "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " in APK = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v46, "VersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "App Firmware Version of "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " in APK = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v46, "EPVersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " current Firmware version = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v46, "VersionController"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " current Firmware version = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v25    # "jsonInfo":Lorg/json/JSONObject;
    .end local v27    # "jsonString":Ljava/lang/String;
    .end local v29    # "line":Ljava/lang/String;
    .end local v36    # "out":Ljava/lang/StringBuilder;
    :cond_26
    if-eqz v23, :cond_27

    .line 366
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V

    .line 367
    const/16 v23, 0x0

    .line 369
    :cond_27
    if-eqz v45, :cond_28

    .line 370
    invoke-virtual/range {v45 .. v45}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 266
    .end local v23    # "is":Ljava/io/InputStream;
    .end local v44    # "ze":Ljava/util/zip/ZipEntry;
    .end local v45    # "zis":Ljava/util/zip/ZipInputStream;
    :cond_28
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_3

    .line 456
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v19    # "filename":Ljava/lang/String;
    .end local v22    # "i$":I
    .end local v28    # "len$":I
    .restart local v43    # "versionInfoIntent":Landroid/content/Intent;
    :cond_29
    if-eqz v40, :cond_30

    if-eqz v17, :cond_30

    :try_start_b
    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v46

    if-eqz v46, :cond_30

    .line 459
    if-eqz v41, :cond_2e

    if-eqz v18, :cond_2e

    .line 461
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2a

    .line 462
    const-string v46, "version_mode"

    const/16 v47, 0x1

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    const-string v46, "version_message"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Android App and "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " have same version = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ". Communication will continue to work"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x0

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    .line 473
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    goto/16 :goto_6

    .line 477
    :cond_2a
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-le v0, v1, :cond_2c

    .line 478
    const-string v46, "version_mode"

    const/16 v47, 0x2

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    const-string v46, "version_message"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Android App version: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " is higher than the "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " version = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ". Please upgrade "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " firmware"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v47

    if-eqz v24, :cond_2b

    const/16 v46, 0x1

    :goto_b
    move-object/from16 v0, v47

    move/from16 v1, p5

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 495
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_6

    .line 491
    :cond_2b
    const/16 v46, 0x2

    goto :goto_b

    .line 499
    :cond_2c
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v46

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v47

    move/from16 v0, v46

    move/from16 v1, v47

    if-ge v0, v1, :cond_19

    .line 500
    const-string v46, "version_mode"

    const/16 v47, 0x2

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    const-string v46, "version_message"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Android App version = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " is lower than the "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " version = "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ". Please upgrade Android App to match the "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " version, else upgrade "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " firmware to communicate"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 514
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v47

    if-eqz v24, :cond_2d

    const/16 v46, 0x1

    :goto_c
    move-object/from16 v0, v47

    move/from16 v1, p5

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 518
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_6

    .line 514
    :cond_2d
    const/16 v46, 0x2

    goto :goto_c

    .line 524
    :cond_2e
    const-string v46, "version_mode"

    const/16 v47, 0x2

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    const-string v46, "version_message"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Unable to fetch Version Info, Please upgrade "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " firmware"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v47

    if-eqz v24, :cond_2f

    const/16 v46, 0x1

    :goto_d
    move-object/from16 v0, v47

    move/from16 v1, p5

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 534
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_6

    .line 530
    :cond_2f
    const/16 v46, 0x2

    goto :goto_d

    .line 540
    :cond_30
    const-string v46, "version_mode"

    const/16 v47, 0x2

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 542
    const-string v46, "version_message"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Software Release type differs between App and "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", Please upgrade "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v48

    aget-object v48, v48, p5

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, " firmware"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    move-object/from16 v0, v43

    move-object/from16 v1, v46

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 548
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v47

    if-eqz v24, :cond_31

    const/16 v46, 0x1

    :goto_e
    move-object/from16 v0, v47

    move/from16 v1, p5

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointVersionState(II)V

    .line 552
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    const/16 v47, 0x1

    move-object/from16 v0, v46

    move/from16 v1, p5

    move/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPointUpgradeState(IZ)V

    goto/16 :goto_6

    .line 548
    :cond_31
    const/16 v46, 0x2

    goto :goto_e

    .line 577
    :cond_32
    const/16 v34, 0x1

    goto/16 :goto_7

    .line 579
    .restart local v34    # "otherEndpointType":I
    :cond_33
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v46

    invoke-virtual/range {v46 .. v46}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-result v35

    goto/16 :goto_8

    .line 674
    .restart local v12    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .restart local v30    # "otherEarPieceBuildTarget":Ljava/lang/String;
    .restart local v31    # "otherEarPieceHardwareRevision":Ljava/lang/String;
    .restart local v32    # "otherEarPieceSoftwareRelease":Ljava/lang/String;
    .restart local v33    # "otherEarPieceSoftwareRevision":Ljava/lang/String;
    .restart local v35    # "otherEndpointTypeBonded":Z
    :cond_34
    :try_start_c
    const-string v46, "EPVersionController"

    const-string v47, "EPMessage:Othere EP data is not available for force upgrade. Just continue"

    const/16 v48, 0x1

    const/16 v49, 0x7

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, p5

    move/from16 v3, v48

    move/from16 v4, v49

    invoke-static {v0, v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_9

    .line 681
    .end local v12    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :catch_3
    move-exception v13

    .line 682
    .restart local v13    # "e":Ljava/lang/Exception;
    :try_start_d
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 714
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v30    # "otherEarPieceBuildTarget":Ljava/lang/String;
    .end local v31    # "otherEarPieceHardwareRevision":Ljava/lang/String;
    .end local v32    # "otherEarPieceSoftwareRelease":Ljava/lang/String;
    .end local v33    # "otherEarPieceSoftwareRevision":Ljava/lang/String;
    :cond_35
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "current_status_text"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    sget-object v48, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual/range {v46 .. v48}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "current_status_subtext"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    const-string v48, ""

    invoke-virtual/range {v46 .. v48}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 725
    :cond_36
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v46

    move-object/from16 v0, v46

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointUpgradeState(I)Z

    move-result v46

    if-eqz v46, :cond_22

    .line 727
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "current_status_text"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    sget-object v48, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_TO_SUPPORT:Ljava/lang/String;

    invoke-virtual/range {v46 .. v48}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v46

    invoke-static/range {v46 .. v46}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v46

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "current_status_subtext"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    sget-object v48, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_UNABLE_TO_SUPPORT:Ljava/lang/String;

    invoke-virtual/range {v46 .. v48}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_a

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public sendAlohaContinueMessage(II)V
    .locals 9
    .param p1, "transactionId"    # I
    .param p2, "endpointType"    # I

    .prologue
    .line 854
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 855
    .local v8, "jsonAlohaContinue":Ljava/lang/StringBuilder;
    const/16 v0, 0x7b

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    const-string v0, "\"PhoneType\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    const-string v0, "\"Android\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    const/16 v0, 0x2c

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 860
    const-string v0, "\"SoftwareRelease\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 862
    const-string v0, "\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    const-string v0, "\""

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    const/16 v0, 0x7d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    const-string v0, "VersionController"

    const-string v1, "Sending VersionContinueInd to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 875
    const-string v0, "EPVersionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sent VersionContinueInd Indication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 879
    const-string v0, "VersionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sent VersionContinueInd Indication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 891
    .end local v8    # "jsonAlohaContinue":Ljava/lang/StringBuilder;
    :goto_0
    return-void

    .line 886
    :catch_0
    move-exception v7

    .line 887
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "EPVersionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in sendAlohaContinueMessage(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendAlohaWaitUpdateMessage(II)V
    .locals 10
    .param p1, "transactionId"    # I
    .param p2, "endpointType"    # I

    .prologue
    .line 896
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "app_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 899
    .local v9, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 901
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v0, "firmwareUpgrade"

    const/4 v1, 0x1

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 902
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 904
    const-string v4, "{ }"

    .line 905
    .local v4, "jsonAlohaWaitUpdate":Ljava/lang/String;
    const-string v0, "EPVersionController"

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

    .line 907
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

    .line 910
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object v0, p0

    move v1, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 916
    const-string v0, "EPVersionController"

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

    .line 925
    .end local v4    # "jsonAlohaWaitUpdate":Ljava/lang/String;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 920
    :catch_0
    move-exception v7

    .line 921
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "EPVersionController"

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

    .line 923
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public sendControllerMessageData(IIILjava/lang/Object;II)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    const/4 v2, 0x1

    .line 800
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 805
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 806
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v0, :cond_1

    .line 807
    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 808
    .local v1, "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 813
    const-string v2, "EPVersionController"

    const-string v3, "Secondary ear piece is not in CONNECTED state. Just neglect the message."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    .end local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_1
    :goto_0
    return-void

    .line 826
    .restart local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .restart local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_2
    const-string v3, "EPVersionController"

    const-string v4, "Secondary ear piece is in CONNECTED state with primary."

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    if-ne p1, v2, :cond_4

    const/4 p1, 0x2

    .line 842
    :goto_1
    const/16 p3, 0x16

    .line 844
    .end local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .end local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    goto :goto_0

    .restart local v0    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .restart local v1    # "endpoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_4
    move p1, v2

    .line 840
    goto :goto_1
.end method
