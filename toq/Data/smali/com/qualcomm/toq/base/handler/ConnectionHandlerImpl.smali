.class public Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;
.super Ljava/lang/Object;
.source "ConnectionHandlerImpl.java"

# interfaces
.implements Lcom/qualcomm/toq/base/handler/IConnectionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectionHandlerImpl"


# instance fields
.field private connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

.field endPointStateMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lastSentBroadcastIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->endPointStateMap:Ljava/util/HashMap;

    return-void
.end method

.method private getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .locals 2
    .param p1, "endPointType"    # I

    .prologue
    .line 223
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    .line 225
    .local v0, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    return-object v0
.end method

.method private setLastSentBroadcastIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->lastSentBroadcastIntent:Landroid/content/Intent;

    .line 230
    return-void
.end method


# virtual methods
.method public getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    return-object v0
.end method

.method public getController(II)Lcom/qualcomm/toq/base/controller/IController;
    .locals 4
    .param p1, "appID"    # I
    .param p2, "endPointType"    # I

    .prologue
    .line 46
    const-string v1, "ConnectionHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dest appID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "controller":Lcom/qualcomm/toq/base/controller/IController;
    const/16 v1, 0xf

    if-ne p1, v1, :cond_0

    .line 49
    invoke-static {p2}, Lcom/qualcomm/toq/base/controller/TFTPController;->getTFTPController(I)Lcom/qualcomm/toq/base/controller/TFTPController;

    move-result-object v0

    .line 52
    :cond_0
    return-object v0
.end method

.method public getLastSentBroadcastIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->lastSentBroadcastIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPackedMessage(Lcom/qualcomm/toq/base/message/Message;)[B
    .locals 2
    .param p1, "message"    # Lcom/qualcomm/toq/base/message/Message;

    .prologue
    .line 76
    invoke-static {}, Lcom/qualcomm/toq/base/handler/MessageHandler;->getMessageHandler()Lcom/qualcomm/toq/base/handler/MessageHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/handler/MessageHandler;->packMessage(Lcom/qualcomm/toq/base/message/Message;)[B

    move-result-object v0

    .line 77
    .local v0, "data":[B
    return-object v0
.end method

.method public getParsedMessage([B)Lcom/qualcomm/toq/base/message/Message;
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-static {}, Lcom/qualcomm/toq/base/handler/MessageHandler;->getMessageHandler()Lcom/qualcomm/toq/base/handler/MessageHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/handler/MessageHandler;->unpackMessage([B)Lcom/qualcomm/toq/base/message/Message;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getState(I)I
    .locals 2
    .param p1, "endPointType"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->endPointStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->endPointStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public handleControllerData(IIILjava/lang/Object;II)V
    .locals 8
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 174
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 176
    :cond_0
    const-string v1, "ConnectionHandlerImpl"

    const-string v2, "handleControllerData(): Object Null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 179
    :cond_2
    new-instance v0, Lcom/qualcomm/toq/base/message/Message;

    move v1, p2

    move v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/qualcomm/toq/base/message/Message;-><init>(IILjava/lang/Object;II)V

    .line 184
    .local v0, "message":Lcom/qualcomm/toq/base/message/Message;
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getPackedMessage(Lcom/qualcomm/toq/base/message/Message;)[B

    move-result-object v6

    .line 209
    .local v6, "data":[B
    iget-object v1, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->endPointStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->endPointStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 211
    .local v7, "state":I
    const/4 v1, 0x3

    if-ne v7, v1, :cond_1

    .line 212
    const-string v1, "BTConnectionListener"

    const-string v2, "ConnectionHandlerImpl: handleControllerData()"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    invoke-interface {v1, v2, v6}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->handleConnHandlerData(Lcom/qualcomm/toq/base/endpoint/IEndPoint;[B)V

    goto :goto_0
.end method

.method public handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 82
    invoke-static {}, Lcom/qualcomm/toq/base/handler/MessageHandler;->getMessageHandler()Lcom/qualcomm/toq/base/handler/MessageHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/base/handler/MessageHandler;->unpackMessage([B)Lcom/qualcomm/toq/base/message/Message;

    move-result-object v6

    .line 84
    .local v6, "message":Lcom/qualcomm/toq/base/message/Message;
    if-eqz v6, :cond_2

    .line 85
    const-string v1, "ConnectionHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage srcAdd appID = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/qualcomm/toq/base/message/Message;->srcAdd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   destAdd appID = :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v6, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget v1, v6, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    invoke-interface {p2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getController(II)Lcom/qualcomm/toq/base/controller/IController;

    move-result-object v0

    .line 90
    .local v0, "controller":Lcom/qualcomm/toq/base/controller/IController;
    const-string v1, "ConnectionHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming Payload=:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v6, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    if-eqz v0, :cond_1

    .line 93
    iget v1, v6, Lcom/qualcomm/toq/base/message/Message;->destAdd:I

    iget v2, v6, Lcom/qualcomm/toq/base/message/Message;->messageType:I

    iget-object v3, v6, Lcom/qualcomm/toq/base/message/Message;->payload:Ljava/lang/Object;

    iget v4, v6, Lcom/qualcomm/toq/base/message/Message;->transactionId:I

    invoke-interface {p2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/qualcomm/toq/base/controller/IController;->handleConnHandlerMessage(IILjava/lang/Object;II)V

    .line 112
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getConnectionType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BLUETOOTH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    .end local v0    # "controller":Lcom/qualcomm/toq/base/controller/IController;
    :cond_0
    :goto_0
    return-void

    .line 100
    .restart local v0    # "controller":Lcom/qualcomm/toq/base/controller/IController;
    :cond_1
    const-string v1, "ConnectionHandlerImpl"

    const-string v2, "EPMessage:Message is not intended for Phone. Neglecting!!!! \nClosing the connection."

    invoke-interface {p2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x7

    invoke-static {v1, v2, v3, v4, v5}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 106
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v1

    invoke-interface {p2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->resetEndPointConnection(IZ)V

    goto :goto_0

    .line 136
    .end local v0    # "controller":Lcom/qualcomm/toq/base/controller/IController;
    :cond_2
    const-string v1, "ConnectionHandlerImpl"

    const-string v2, "In handleMessage() message is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initMgr()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setConnManager(Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V
    .locals 0
    .param p1, "connManager"    # Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 42
    return-void
.end method

.method public updateState(II)V
    .locals 8
    .param p1, "endPointType"    # I
    .param p2, "state"    # I

    .prologue
    .line 143
    iget-object v5, p0, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->endPointStateMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const/4 v3, 0x0

    .line 145
    .local v3, "endPointName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 146
    .local v2, "endPointAddress":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 147
    .local v1, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 150
    .local v0, "ctx":Landroid/content/Context;
    const-string v5, "ConnectionHandlerImpl"

    const-string v6, "Checking for Endpoint"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz v1, :cond_0

    .line 152
    const-string v5, "ConnectionHandlerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Endpoint is Present and not null: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getName()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 157
    new-instance v4, Landroid/content/Intent;

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    const-string v5, "endpointname"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v5, "endpointaddress"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    const-string v5, "endpointtype"

    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v5, "ConnectionHandlerImpl"

    const-string v6, "Sending Broad cast for State Update"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->setLastSentBroadcastIntent(Landroid/content/Intent;)V

    .line 164
    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 165
    const-string v5, "ConnectionHandlerImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateState"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
