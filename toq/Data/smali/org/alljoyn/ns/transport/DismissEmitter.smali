.class public Lorg/alljoyn/ns/transport/DismissEmitter;
.super Ljava/lang/Object;
.source "DismissEmitter.java"

# interfaces
.implements Lorg/alljoyn/ns/transport/interfaces/NotificationDismisser;


# static fields
.field private static final OBJ_PATH_PREFIX:Ljava/lang/String; = "/notificationDismisser/"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ioe"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ns/transport/DismissEmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ns/transport/DismissEmitter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildObjPath(ILjava/util/UUID;)Ljava/lang/String;
    .locals 4
    .param p0, "msgId"    # I
    .param p1, "appId"    # Ljava/util/UUID;

    .prologue
    .line 111
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "appIdStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/notificationDismisser/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static send(ILjava/util/UUID;)V
    .locals 13
    .param p0, "msgId"    # I
    .param p1, "appId"    # Ljava/util/UUID;

    .prologue
    .line 48
    invoke-static {}, Lorg/alljoyn/ns/transport/Transport;->getInstance()Lorg/alljoyn/ns/transport/Transport;

    move-result-object v9

    .line 49
    .local v9, "transport":Lorg/alljoyn/ns/transport/Transport;
    invoke-virtual {v9}, Lorg/alljoyn/ns/transport/Transport;->getBusAttachment()Lorg/alljoyn/bus/BusAttachment;

    move-result-object v2

    .line 53
    .local v2, "bus":Lorg/alljoyn/bus/BusAttachment;
    :try_start_0
    invoke-virtual {v9}, Lorg/alljoyn/ns/transport/Transport;->getLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 59
    .local v5, "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    if-nez v2, :cond_0

    .line 60
    sget-object v10, Lorg/alljoyn/ns/transport/DismissEmitter;->TAG:Ljava/lang/String;

    const-string v11, "Can\'t call Dismiss signal, BusAttachment isn\'t defined, returning..."

    invoke-interface {v5, v10, v11}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v5    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v6

    .line 55
    .local v6, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lorg/alljoyn/ns/transport/DismissEmitter;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": Unexpected error occured: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v6    # "nse":Lorg/alljoyn/ns/NotificationServiceException;
    .restart local v5    # "logger":Lorg/alljoyn/ns/commons/GenericLogger;
    :cond_0
    sget-object v10, Lorg/alljoyn/ns/transport/DismissEmitter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending the Dismiss signal notifId: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\', appId: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v3, Lorg/alljoyn/ns/transport/DismissEmitter;

    invoke-direct {v3}, Lorg/alljoyn/ns/transport/DismissEmitter;-><init>()V

    .line 67
    .local v3, "dismissSenderBusObj":Lorg/alljoyn/ns/transport/DismissEmitter;
    invoke-static {p0, p1}, Lorg/alljoyn/ns/transport/DismissEmitter;->buildObjPath(ILjava/util/UUID;)Ljava/lang/String;

    move-result-object v7

    .line 68
    .local v7, "objPath":Ljava/lang/String;
    invoke-virtual {v2, v3, v7}, Lorg/alljoyn/bus/BusAttachment;->registerBusObject(Lorg/alljoyn/bus/BusObject;Ljava/lang/String;)Lorg/alljoyn/bus/Status;

    move-result-object v8

    .line 69
    .local v8, "status":Lorg/alljoyn/bus/Status;
    sget-object v10, Lorg/alljoyn/bus/Status;->OK:Lorg/alljoyn/bus/Status;

    if-eq v8, v10, :cond_1

    .line 70
    sget-object v10, Lorg/alljoyn/ns/transport/DismissEmitter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to register a BusObject, ObjPath: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\', Error: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_1
    new-instance v4, Lorg/alljoyn/bus/SignalEmitter;

    sget-object v10, Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;->Off:Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;

    invoke-direct {v4, v3, v10}, Lorg/alljoyn/bus/SignalEmitter;-><init>(Lorg/alljoyn/bus/BusObject;Lorg/alljoyn/bus/SignalEmitter$GlobalBroadcast;)V

    .line 75
    .local v4, "emitter":Lorg/alljoyn/bus/SignalEmitter;
    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Lorg/alljoyn/bus/SignalEmitter;->setSessionlessFlag(Z)V

    .line 76
    const v10, 0xa8c0

    invoke-virtual {v4, v10}, Lorg/alljoyn/bus/SignalEmitter;->setTimeToLive(I)V

    .line 78
    invoke-static {p1}, Lorg/alljoyn/ns/PayloadAdapter;->uuidToByteArray(Ljava/util/UUID;)[B

    move-result-object v0

    .line 80
    .local v0, "bappId":[B
    :try_start_1
    sget-object v10, Lorg/alljoyn/ns/transport/DismissEmitter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sending the Dismiss signal from ObjPath: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/alljoyn/ns/commons/GenericLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-class v10, Lorg/alljoyn/ns/transport/interfaces/NotificationDismisser;

    invoke-virtual {v4, v10}, Lorg/alljoyn/bus/SignalEmitter;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/alljoyn/ns/transport/interfaces/NotificationDismisser;

    invoke-interface {v10, p0, v0}, Lorg/alljoyn/ns/transport/interfaces/NotificationDismisser;->dismiss(I[B)V
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    :goto_1
    invoke-virtual {v2, v3}, Lorg/alljoyn/bus/BusAttachment;->unregisterBusObject(Lorg/alljoyn/bus/BusObject;)V

    goto/16 :goto_0

    .line 82
    :catch_1
    move-exception v1

    .line 83
    .local v1, "be":Lorg/alljoyn/bus/BusException;
    sget-object v10, Lorg/alljoyn/ns/transport/DismissEmitter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to send the Dismiss signal notifId: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\', appId: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\', Error: \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/alljoyn/ns/commons/GenericLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismiss(I[B)V
    .locals 0
    .param p1, "msgId"    # I
    .param p2, "appId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 94
    return-void
.end method

.method public getVersion()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/bus/BusException;
        }
    .end annotation

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
