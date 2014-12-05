.class public Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "AppLoggingController.java"


# static fields
.field private static final DEBUG:I = 0x5

.field private static final ERROR:I = 0x2

.field private static final FATAL:I = 0x1

.field private static final INFO:I = 0x4

.field private static final OFF:I = 0x0

.field private static final VERBOSE:I = 0x6

.field private static final WARN:I = 0x3

.field private static inst:Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    return-void
.end method

.method private extractMessage([B)Ljava/lang/String;
    .locals 5
    .param p1, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 163
    aget-byte v1, p1, v4

    .line 165
    .local v1, "packageNameLen":B
    array-length v2, p1

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [B

    .line 167
    .local v0, "messageBytes":[B
    array-length v2, v0

    if-lez v2, :cond_0

    .line 168
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    array-length v3, v0

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private extractPackageName([B)Ljava/lang/String;
    .locals 5
    .param p1, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 138
    aget-byte v1, p1, v4

    .line 140
    .local v1, "packageNameLen":B
    add-int/lit8 v2, v1, -0x1

    new-array v0, v2, [B

    .line 141
    .local v0, "packageNameBytes":[B
    const/4 v2, 0x1

    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private extractPriority([B)I
    .locals 2
    .param p1, "payloadBytes"    # [B

    .prologue
    .line 152
    const/4 v1, 0x0

    aget-byte v0, p1, v1

    .line 154
    .local v0, "packageNameLen":B
    add-int/lit8 v1, v0, 0x1

    aget-byte v1, p1, v1

    return v1
.end method

.method public static getAppLoggingController()Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    if-nez v0, :cond_1

    .line 114
    const-class v1, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    monitor-enter v1

    .line 116
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    .line 120
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 9
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 43
    if-nez p3, :cond_0

    .line 44
    :try_start_0
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    const-string v7, "Payload is null"

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "DeckOfCards"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AppLoggingController.handleConnHandlerMessage - unable to process incoming log message, payload: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    :pswitch_0
    return-void

    .line 48
    :cond_0
    :try_start_1
    instance-of v6, p3, [B

    if-nez v6, :cond_1

    .line 49
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Payload not byte[], unsupported type, payload: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 52
    :cond_1
    move-object v0, p3

    check-cast v0, [B

    move-object v6, v0

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 58
    .local v3, "payloadBytes":[B
    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->extractPackageName([B)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "tag":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->extractPriority([B)I

    move-result v4

    .line 60
    .local v4, "priority":I
    invoke-direct {p0, v3}, Lcom/qualcomm/toq/smartwatch/controller/AppLoggingController;->extractMessage([B)Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "message":Ljava/lang/String;
    packed-switch v4, :pswitch_data_0

    .line 93
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-static {v5, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :pswitch_3
    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 80
    :pswitch_4
    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :pswitch_5
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
