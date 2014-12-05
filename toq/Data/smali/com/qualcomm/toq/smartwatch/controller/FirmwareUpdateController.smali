.class public Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "FirmwareUpdateController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirmwareUpdateController"

.field public static final appName:Ljava/lang/String; = "FIRMWARE_UPDATE_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;


# instance fields
.field public context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "cnxt"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->context:Landroid/content/Context;

    .line 30
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->context:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private getCustomBuildInputStream()Ljava/io/InputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 129
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

    .line 131
    .local v0, "destZipPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v1, "destinationZipFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    new-instance v4, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController$1;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController$1;-><init>(Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;)V

    invoke-virtual {v1, v4}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 139
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 140
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3    # "is":Ljava/io/InputStream;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 143
    .end local v2    # "files":[Ljava/io/File;
    .restart local v3    # "is":Ljava/io/InputStream;
    :cond_0
    return-object v3
.end method

.method public static getFirmwareUpdateController(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;
    .locals 1
    .param p0, "cnxt"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    .line 37
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    return-object v0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;

    .line 65
    return-void
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 0
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpoitType"    # I

    .prologue
    .line 45
    return-void
.end method

.method public pushCustomFirmwareUpdateToWD()Z
    .locals 6

    .prologue
    .line 106
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 107
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->context:Landroid/content/Context;

    .line 111
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->getCustomBuildInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 112
    .local v1, "is":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 113
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "/firmware/1234.zip"

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v2, 0x1

    .line 122
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FirmwareUpdateController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to copy asset file details: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public pushFirmwareUpdateToWD(Ljava/lang/String;)Z
    .locals 12
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->context:Landroid/content/Context;

    if-nez v7, :cond_0

    .line 69
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->context:Landroid/content/Context;

    .line 72
    :cond_0
    iget-object v7, p0, Lcom/qualcomm/toq/smartwatch/controller/FirmwareUpdateController;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 73
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    const/4 v4, 0x0

    .line 75
    .local v4, "files":[Ljava/lang/String;
    :try_start_0
    const-string v7, ""

    invoke-virtual {v1, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 81
    :goto_0
    if-eqz v4, :cond_2

    .line 82
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v3, v0, v5

    .line 84
    .local v3, "filename":Ljava/lang/String;
    :try_start_1
    const-string v7, "FirmwareUpdateController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Asset file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 87
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->getFmsController()Lcom/qualcomm/toq/smartwatch/controller/FMSController;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    const-string v10, "/firmware/1234.zip"

    const/4 v11, -0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/qualcomm/toq/smartwatch/controller/FMSController;->fmsSyncFile(ILjava/io/InputStream;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    const/4 v7, 0x1

    .line 102
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :goto_2
    return v7

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "FirmwareUpdateController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get asset file list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 96
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :catch_1
    move-exception v2

    .line 97
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "FirmwareUpdateController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to copy asset file: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " details: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_2
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
    .line 51
    if-nez p1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    .line 54
    :cond_1
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 61
    :cond_2
    return-void
.end method
