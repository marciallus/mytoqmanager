.class public Lcom/qualcomm/toq/smartwatch/controller/SpeechController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "SpeechController.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/controller/FTSController$FTSReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/controller/SpeechController$1;,
        Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechController"

.field public static final mAppName:Ljava/lang/String; = "SPEECH_CONTROLLER"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;


# instance fields
.field private context:Landroid/content/Context;

.field private final ftsSpeechHeaderLen:I

.field private httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

.field private final nAppId:Ljava/lang/String;

.field private final nAppKey:Ljava/lang/String;

.field private final nHost:Ljava/lang/String;

.field private final nId:Ljava/lang/String;

.field private final nPort:S

.field private final nServlet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 59
    const/16 v0, 0x8

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->ftsSpeechHeaderLen:I

    .line 62
    const/16 v0, 0x1bb

    iput-short v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nPort:S

    .line 63
    const-string v0, "dictation.nuancemobility.net"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nHost:Ljava/lang/String;

    .line 64
    const-string v0, "/NMDPAsrCmdServlet/dictation"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nServlet:Ljava/lang/String;

    .line 65
    const-string v0, "SFRUUF9OTURQUFJPRFVDVElPTl9RdWFsY29tbV9Ub3FfV2F0Y2hfQXBwXzIwMTQwMjE0MDQ0MTU1"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nAppId:Ljava/lang/String;

    .line 66
    const-string v0, "NjU4NzA1ZWM3OGI1ODZmNzc4ZDhkNGI4NzZkMTAxM2JhNTFkODc0MWFmZWMzM2VjNjJiM2Y3NjIyYWQ1NTc5MDVjNWM3Y2Q0MTEwMmNiOGFkYWEwNDI1MDcxNDM4YjE2NjExMzU4MTBmZjhiZmQ2MTNlZjRjMzY5YzkxYWY5MjY="

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nAppKey:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->context:Landroid/content/Context;

    .line 71
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    .line 80
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->context:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->getSpeechId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nId:Ljava/lang/String;

    .line 82
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->initHttpHandler()V

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/controller/SpeechController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->nId:Ljava/lang/String;

    return-object v0
.end method

.method public static getSpeechController()Lcom/qualcomm/toq/smartwatch/controller/SpeechController;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    .line 94
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    return-object v0
.end method

.method private getSpeechId()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x28

    const/4 v11, 0x0

    .line 273
    const-string v0, "12345"

    .line 274
    .local v0, "defaultId":Ljava/lang/String;
    move-object v8, v0

    .line 275
    .local v8, "speechId":Ljava/lang/String;
    const/4 v6, 0x0

    .line 277
    .local v6, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 279
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v9

    invoke-virtual {v9}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "watch_details_pref"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 285
    :cond_0
    if-eqz v6, :cond_2

    .line 286
    const-string v9, "serial_number0"

    invoke-interface {v6, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 291
    .local v7, "serialNumber":Ljava/lang/String;
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 292
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 293
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 296
    .local v5, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 297
    .local v3, "hexString":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v5

    if-ge v4, v9, :cond_1

    .line 298
    aget-byte v9, v5, v4

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 300
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    .line 301
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v12, :cond_2

    .line 302
    const/4 v9, 0x0

    const/16 v10, 0x28

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 309
    .end local v1    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    .end local v7    # "serialNumber":Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v9, "SpeechController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Speech Id: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-object v8

    .line 304
    .restart local v7    # "serialNumber":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 305
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "SpeechController"

    invoke-static {v9, v2}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private initHttpHandler()V
    .locals 4

    .prologue
    .line 314
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdown()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->access$000(Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;)V

    .line 317
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HttpHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 318
    .local v0, "httpThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 319
    new-instance v1, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;-><init>(Lcom/qualcomm/toq/smartwatch/controller/SpeechController;Landroid/os/Looper;Lcom/qualcomm/toq/smartwatch/controller/SpeechController$1;)V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    .line 320
    return-void
.end method

.method private isValidHttpHandler()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 326
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    goto :goto_0
.end method

.method private sendReqResponse(Ljava/lang/String;III)V
    .locals 9
    .param p1, "responseName"    # Ljava/lang/String;
    .param p2, "response"    # I
    .param p3, "returnCode"    # I
    .param p4, "transactionId"    # I

    .prologue
    const/4 v3, 0x0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Req"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 241
    .local v8, "reqName":Ljava/lang/String;
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from WD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 246
    .local v4, "responsePayload":Lorg/json/JSONObject;
    :try_start_0
    const-string v0, "result"

    invoke-virtual {v4, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    const-string v0, "description"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " received"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to WD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    move-object v0, p0

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 269
    :cond_0
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    return-void

    .line 251
    :catch_0
    move-exception v7

    .line 252
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "SpeechController"

    invoke-static {v0, v7}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static setController(Ljava/lang/Object;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 139
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->mInstance:Lcom/qualcomm/toq/smartwatch/controller/SpeechController;

    .line 140
    return-void
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 3
    .param p1, "appID"    # I
    .param p2, "messageType"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 112
    packed-switch p2, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 114
    :pswitch_0
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received SpeechStreamingCompleteReq: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "SpeechStreamingCompleteResp"

    const/16 v1, 0x4000

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p4}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->sendReqResponse(Ljava/lang/String;III)V

    .line 121
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->isValidHttpHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 125
    :cond_0
    const-string v0, "SpeechController"

    const-string v1, "Invalid HTTP Handler during SpeechStreamingCompleteReq"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public receiveFtsFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 230
    const-string v0, "SpeechController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FTS RECEIVE COMMAND: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public receiveFtsFile([B)V
    .locals 12
    .param p1, "data"    # [B

    .prologue
    .line 163
    const-string v6, "SpeechController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FTS RECEIVE COMMAND: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%X, %X, %X, %X,  %X, %X, %X, %X, "

    const/16 v9, 0x8

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/4 v11, 0x3

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const/4 v11, 0x4

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/4 v11, 0x5

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const/4 v11, 0x6

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/4 v11, 0x7

    aget-byte v11, p1, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v6, 0x3

    new-array v3, v6, [B

    .line 176
    .local v3, "len_bytes":[B
    const/4 v6, 0x0

    const/4 v7, 0x2

    aget-byte v7, p1, v7

    aput-byte v7, v3, v6

    .line 177
    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, p1, v7

    aput-byte v7, v3, v6

    .line 178
    const/4 v6, 0x2

    const/4 v7, 0x0

    aget-byte v7, p1, v7

    aput-byte v7, v3, v6

    .line 179
    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v1

    .line 181
    .local v1, "dataLen":I
    const/4 v6, 0x0

    const/4 v7, 0x6

    aget-byte v7, p1, v7

    aput-byte v7, v3, v6

    .line 182
    const/4 v6, 0x1

    const/4 v7, 0x5

    aget-byte v7, p1, v7

    aput-byte v7, v3, v6

    .line 183
    const/4 v6, 0x2

    const/4 v7, 0x4

    aget-byte v7, p1, v7

    aput-byte v7, v3, v6

    .line 184
    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/ByteUtils;->convertBytestoNumber([B)I

    move-result v5

    .line 186
    .local v5, "seqNum":I
    const-string v6, "SpeechController"

    const-string v7, "Len = %d, Seq = %d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    if-nez v5, :cond_1

    .line 189
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->isValidHttpHandler()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 190
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->shutdown()V
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->access$000(Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;)V

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->initHttpHandler()V

    .line 196
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->sendEmptyMessage(I)Z

    .line 199
    const/16 v6, 0x2c

    new-array v6, v6, [B

    fill-array-data v6, :array_0

    .line 208
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->isValidHttpHandler()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "audioData":Landroid/os/Bundle;
    const-string v6, "audio"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 211
    const-string v6, "offset"

    const/16 v7, 0x8

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    const-string v6, "count"

    add-int/lit8 v7, v1, -0x8

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    const-string v6, "seqNum"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 214
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 215
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 216
    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/controller/SpeechController;->httpHandler:Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;

    invoke-virtual {v6, v4}, Lcom/qualcomm/toq/smartwatch/controller/SpeechController$HttpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 226
    .end local v0    # "audioData":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 219
    :cond_2
    const-string v6, "SpeechController"

    const-string v7, "Invalid HTTP Handler in receiveFtsFile"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 222
    :catch_0
    move-exception v2

    .line 223
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "SpeechController"

    const-string v7, "Received ERROR FTS COMMAND"

    invoke-static {v6, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    const-string v6, "SpeechController"

    invoke-static {v6, v2}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 199
    nop

    :array_0
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
        0x24t
        0x71t
        0x2t
        0x0t
        0x57t
        0x41t
        0x56t
        0x45t
        0x66t
        0x6dt
        0x74t
        0x20t
        0x10t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x40t
        0x1ft
        0x0t
        0x0t
        -0x80t
        0x3et
        0x0t
        0x0t
        0x2t
        0x0t
        0x10t
        0x0t
        0x64t
        0x61t
        0x74t
        0x61t
        0x0t
        0x71t
        0x2t
        0x0t
    .end array-data
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
    .line 146
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 148
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V

    .line 155
    :cond_0
    return-void
.end method
