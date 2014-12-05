.class public Lorg/alljoyn/ns/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# instance fields
.field private appId:Ljava/util/UUID;

.field private appName:Ljava/lang/String;

.field private customAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deviceId:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private messageId:I

.field private messageType:Lorg/alljoyn/ns/NotificationMessageType;

.field private origSender:Ljava/lang/String;

.field private responseObjectPath:Ljava/lang/String;

.field private richAudioObjPath:Ljava/lang/String;

.field private richAudioUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/RichAudioUrl;",
            ">;"
        }
    .end annotation
.end field

.field private richIconObjPath:Ljava/lang/String;

.field private richIconUrl:Ljava/lang/String;

.field private sender:Ljava/lang/String;

.field private text:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/NotificationText;",
            ">;"
        }
    .end annotation
.end field

.field private version:I


# direct methods
.method public constructor <init>(Lorg/alljoyn/ns/NotificationMessageType;Ljava/util/List;)V
    .locals 0
    .param p1, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/alljoyn/ns/NotificationMessageType;",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/NotificationText;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "text":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-virtual {p0, p1}, Lorg/alljoyn/ns/Notification;->setMessageType(Lorg/alljoyn/ns/NotificationMessageType;)V

    .line 119
    invoke-virtual {p0, p2}, Lorg/alljoyn/ns/Notification;->setText(Ljava/util/List;)V

    .line 120
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 319
    :try_start_0
    new-instance v1, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;

    invoke-direct {v1, p0}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;-><init>(Lorg/alljoyn/ns/Notification;)V

    invoke-virtual {v1}, Lorg/alljoyn/ns/transport/consumer/NotificationFeedback;->dismiss()V
    :try_end_0
    .catch Lorg/alljoyn/ns/NotificationServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "nse":Lorg/alljoyn/ns/NotificationServiceException;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to call the dismiss method, Error: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/alljoyn/ns/NotificationServiceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->appId:Ljava/util/UUID;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->customAttributes:Ljava/util/Map;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lorg/alljoyn/ns/Notification;->messageId:I

    return v0
.end method

.method public getMessageType()Lorg/alljoyn/ns/NotificationMessageType;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    return-object v0
.end method

.method public getOriginalSenderBusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->origSender:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseObjectPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->responseObjectPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRichAudioObjPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->richAudioObjPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRichAudioUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/RichAudioUrl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->richAudioUrl:Ljava/util/List;

    return-object v0
.end method

.method public getRichIconObjPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->richIconObjPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRichIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->richIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSenderBusName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->sender:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/NotificationText;",
            ">;"
        }
    .end annotation

    .prologue
    .line 192
    iget-object v0, p0, Lorg/alljoyn/ns/Notification;->text:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lorg/alljoyn/ns/Notification;->version:I

    return v0
.end method

.method setAppId(Ljava/util/UUID;)V
    .locals 0
    .param p1, "appId"    # Ljava/util/UUID;

    .prologue
    .line 400
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->appId:Ljava/util/UUID;

    .line 401
    return-void
.end method

.method setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->appName:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setCustomAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p1, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->customAttributes:Ljava/util/Map;

    .line 256
    return-void
.end method

.method setDeviceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 416
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->deviceId:Ljava/lang/String;

    .line 417
    return-void
.end method

.method setDeviceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->deviceName:Ljava/lang/String;

    .line 409
    return-void
.end method

.method setMessageId(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 384
    iput p1, p0, Lorg/alljoyn/ns/Notification;->messageId:I

    .line 385
    return-void
.end method

.method public setMessageType(Lorg/alljoyn/ns/NotificationMessageType;)V
    .locals 2
    .param p1, "messageType"    # Lorg/alljoyn/ns/NotificationMessageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    new-instance v0, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v1, "MessageType must be set"

    invoke-direct {v0, v1}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_0
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    .line 248
    return-void
.end method

.method setOrigSender(Ljava/lang/String;)V
    .locals 0
    .param p1, "origSender"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->origSender:Ljava/lang/String;

    .line 433
    return-void
.end method

.method public setResponseObjectPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseObjectPath"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->responseObjectPath:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setRichAudioObjPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "richAudioObjPath"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->richAudioObjPath:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setRichAudioUrl(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/RichAudioUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    .local p1, "richAudioUrl":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/RichAudioUrl;>;"
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->richAudioUrl:Ljava/util/List;

    .line 283
    return-void
.end method

.method public setRichIconObjPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "richIconObjPath"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->richIconObjPath:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setRichIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "richIconUrl"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->richIconUrl:Ljava/lang/String;

    .line 275
    return-void
.end method

.method setSender(Ljava/lang/String;)V
    .locals 0
    .param p1, "sender"    # Ljava/lang/String;

    .prologue
    .line 424
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->sender:Ljava/lang/String;

    .line 425
    return-void
.end method

.method public setText(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/alljoyn/ns/NotificationText;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ns/NotificationServiceException;
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "text":Ljava/util/List;, "Ljava/util/List<Lorg/alljoyn/ns/NotificationText;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 264
    :cond_0
    new-instance v0, Lorg/alljoyn/ns/NotificationServiceException;

    const-string v1, "The text argument must be set and may not be an empty list"

    invoke-direct {v0, v1}, Lorg/alljoyn/ns/NotificationServiceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    iput-object p1, p0, Lorg/alljoyn/ns/Notification;->text:Ljava/util/List;

    .line 267
    return-void
.end method

.method setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 376
    iput p1, p0, Lorg/alljoyn/ns/Notification;->version:I

    .line 377
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notification: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Id: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/alljoyn/ns/Notification;->messageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MsgType: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->messageType:Lorg/alljoyn/ns/NotificationMessageType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DeviceId: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", DeviceName: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Version: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/alljoyn/ns/Notification;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Sender: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->sender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", OrigSender: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->origSender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AppId: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->appId:Ljava/util/UUID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AppName: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->appName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CustomAttributes: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->customAttributes:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", TextMessage: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->text:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richIconUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 345
    const-string v1, ", RichIconURL: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->richIconUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    :cond_0
    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richIconObjPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richIconObjPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 349
    const-string v1, ", RichIconObjPath: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->richIconObjPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richAudioUrl:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richAudioUrl:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 353
    const-string v1, ", RichAudioUrl: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->richAudioUrl:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_2
    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richAudioObjPath:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->richAudioObjPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 357
    const-string v1, ", RichAudioObjPath: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->richAudioObjPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_3
    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->responseObjectPath:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/alljoyn/ns/Notification;->responseObjectPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 361
    const-string v1, ", ResponseObjPath: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/alljoyn/ns/Notification;->responseObjectPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
