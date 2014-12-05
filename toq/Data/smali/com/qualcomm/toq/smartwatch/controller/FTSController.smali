.class public Lcom/qualcomm/toq/smartwatch/controller/FTSController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "FTSController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/FTSController$FTSReceiver;
    }
.end annotation


# static fields
.field private static final FTS_TRANSPORT_COMM:I = 0x3

.field private static final FTS_TRANSPORT_FTP:I = 0x2

.field private static final FTS_TRANSPORT_IN_BAND:I = 0x1

.field private static final FTS_TRANSPORT_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FTSController"

.field public static final mAppName:Ljava/lang/String; = "FTS_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/FTSController;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->context:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static getFtsController()Lcom/qualcomm/toq/smartwatch/controller/FTSController;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/FTSController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    .line 55
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    return-object v0
.end method

.method private pullAudioFileFromWatchInBackground(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 120
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/PHUB_FTP/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    .local v1, "destDir":Ljava/lang/String;
    const-string v2, ""

    .line 124
    .local v2, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "defaultFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 127
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 129
    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "srcParts":[Ljava/lang/String;
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v3, v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 132
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-object v2, v3, v5

    .line 135
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v5

    invoke-virtual {v5, p1, v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->receiveFileFromWatchInBackground(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 138
    .local v4, "success":Z
    if-nez v4, :cond_1

    .line 139
    const-string v5, "FTSController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to pull audio from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v5, 0x0

    .line 149
    .end local v3    # "srcParts":[Ljava/lang/String;
    .end local v4    # "success":Z
    :goto_0
    return-object v5

    .line 142
    .restart local v3    # "srcParts":[Ljava/lang/String;
    .restart local v4    # "success":Z
    :cond_1
    const-string v5, "FTSController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FTP Success "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .end local v3    # "srcParts":[Ljava/lang/String;
    .end local v4    # "success":Z
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 146
    :cond_2
    const-string v5, "FTSController"

    const-string v6, "Invalid Audio Source Path"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/FTSController;

    .line 154
    return-void
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 14
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 62
    packed-switch p2, :pswitch_data_0

    .line 102
    .end local p3    # "payload":Ljava/lang/Object;
    :goto_0
    return-void

    .line 64
    .restart local p3    # "payload":Ljava/lang/Object;
    :pswitch_0
    const-string v11, "FTSController"

    const-string v12, "Received FtsSendReq"

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    check-cast p3, [B

    .end local p3    # "payload":Ljava/lang/Object;
    move-object/from16 v1, p3

    check-cast v1, [B

    .line 68
    .local v1, "ftsPayload":[B
    const/4 v11, 0x0

    const/4 v12, 0x2

    invoke-static {v1, v11, v12}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v8

    .line 69
    .local v8, "json_len_bytes":[B
    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v7

    .line 70
    .local v7, "jsonLen":I
    const-string v11, "FTSController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "json_len_bytes:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x2

    invoke-direct {v10, v1, v11, v7}, Ljava/lang/String;-><init>([BII)V

    .line 74
    .local v10, "readMessage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 76
    .local v5, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    .end local v5    # "json":Lorg/json/JSONObject;
    .local v6, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string v11, "length"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 78
    .local v3, "ftsPayloadLen":I
    const-string v11, "transport_type"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 79
    .local v4, "ftsTransport":I
    add-int/lit8 v2, v7, 0x2

    .line 81
    .local v2, "ftsPayloadIdx":I
    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->getSpeechController()Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    move-result-object v11

    add-int v12, v3, v2

    invoke-static {v1, v2, v12}, Lcom/qualcomm/toq/base/utils/ByteUtils;->subbytes([BII)[B

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->receiveFtsFile([B)V

    goto :goto_0

    .line 94
    .end local v2    # "ftsPayloadIdx":I
    .end local v3    # "ftsPayloadLen":I
    .end local v4    # "ftsTransport":I
    :catch_0
    move-exception v11

    move-object v5, v6

    .end local v6    # "json":Lorg/json/JSONObject;
    .restart local v5    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 86
    .end local v5    # "json":Lorg/json/JSONObject;
    .restart local v2    # "ftsPayloadIdx":I
    .restart local v3    # "ftsPayloadLen":I
    .restart local v4    # "ftsTransport":I
    .restart local v6    # "json":Lorg/json/JSONObject;
    :pswitch_2
    const-string v11, "file_name"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "ftpFile":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/controller/FTSController;->pullAudioFileFromWatchInBackground(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 88
    .local v9, "location":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->getSpeechController()Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->receiveFtsFile(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 94
    .end local v0    # "ftpFile":Ljava/lang/String;
    .end local v2    # "ftsPayloadIdx":I
    .end local v3    # "ftsPayloadLen":I
    .end local v4    # "ftsTransport":I
    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v9    # "location":Ljava/lang/String;
    .restart local v5    # "json":Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 81
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 108
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 110
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 117
    :cond_0
    return-void
.end method
