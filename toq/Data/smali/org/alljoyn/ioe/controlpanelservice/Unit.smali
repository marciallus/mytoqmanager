.class public Lorg/alljoyn/ioe/controlpanelservice/Unit;
.super Ljava/lang/Object;
.source "Unit.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

.field private httpControlObjPath:Ljava/lang/String;

.field private panelCollections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;",
            ">;"
        }
    .end annotation
.end field

.field private proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

.field private remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

.field private unitId:Ljava/lang/String;

.field private version:Ljava/lang/Short;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cpan"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lorg/alljoyn/ioe/controlpanelservice/Unit;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Ljava/lang/String;)V
    .locals 1
    .param p1, "device"    # Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .param p2, "unitId"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    .line 80
    iput-object p2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->unitId:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->panelCollections:Ljava/util/Map;

    .line 82
    return-void
.end method

.method private setRemoteController()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 218
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    invoke-virtual {v4}, Lorg/alljoyn/bus/ProxyBusObject;->getBusName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    if-eqz v3, :cond_1

    .line 224
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    invoke-virtual {v3}, Lorg/alljoyn/bus/ProxyBusObject;->release()V

    .line 227
    :cond_1
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v3}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v1

    .line 228
    .local v1, "sessionId":Ljava/lang/Integer;
    if-nez v1, :cond_2

    .line 229
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    const-string v4, "Session is not established"

    invoke-direct {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_2
    invoke-static {}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getInstance()Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v4}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSender()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->httpControlObjPath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-array v7, v10, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    aput-object v9, v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/alljoyn/ioe/controlpanelservice/communication/ConnectionManager;->getProxyObject(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/Class;)Lorg/alljoyn/bus/ProxyBusObject;

    move-result-object v3

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    .line 239
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    const-class v4, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    invoke-virtual {v3, v4}, Lorg/alljoyn/bus/ProxyBusObject;->getInterface(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    .line 242
    :try_start_0
    iget-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    invoke-interface {v3}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;->getVersion()S

    move-result v2

    .line 243
    .local v2, "version":S
    sget-object v3, Lorg/alljoyn/ioe/controlpanelservice/Unit;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Version check for HTTP Protocol, my protocol version is: \'1\' the remote device version is: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-le v2, v10, :cond_3

    .line 247
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incompatible HTTPProtocol version, my protocol version is: \'1\' the remote device version is: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .end local v2    # "version":S
    :catch_0
    move-exception v0

    .line 253
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    iput-object v11, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    .line 254
    iput-object v11, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    .line 255
    new-instance v3, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to call getVersion() for HTTPProtocol, objPath: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->httpControlObjPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\', Error: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 251
    .end local v0    # "be":Lorg/alljoyn/bus/BusException;
    .restart local v2    # "version":S
    :cond_3
    :try_start_1
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    iput-object v3, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->version:Ljava/lang/Short;
    :try_end_1
    .catch Lorg/alljoyn/bus/BusException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method createControlPanelCollection(Ljava/lang/String;Ljava/lang/String;)Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    .locals 5
    .param p1, "objPath"    # Ljava/lang/String;
    .param p2, "collName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->panelCollections:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .line 182
    .local v0, "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    if-nez v0, :cond_1

    .line 183
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/Unit;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received a new ControlPanelCollection Name: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', creating..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .end local v0    # "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-direct {v0, v2, p0, p2, p1}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;-><init>(Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;Lorg/alljoyn/ioe/controlpanelservice/Unit;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .restart local v0    # "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->panelCollections:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :goto_0
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    invoke-virtual {v2}, Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;->getSessionId()Ljava/lang/Integer;

    move-result-object v1

    .line 192
    .local v1, "sessionId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->getControlPanels()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 193
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/Unit;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The session with the remote device has been previously established , sid: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\', filling the new collection"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->retrievePanels()V

    .line 197
    :cond_0
    return-object v0

    .line 188
    .end local v1    # "sessionId":Ljava/lang/Integer;
    :cond_1
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/Unit;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received a known ControlPanelCollection Name: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' objPath: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method fillControlPanelCollections()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->panelCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .line 207
    .local v0, "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->retrievePanels()V

    goto :goto_0

    .line 209
    .end local v0    # "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    :cond_0
    return-void
.end method

.method public getControlPanelCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->panelCollections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDevice()Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->device:Lorg/alljoyn/ioe/controlpanelservice/ControllableDevice;

    return-object v0
.end method

.method public getHttpControlVersion()Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->httpControlObjPath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 147
    :cond_0
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->setRemoteController()V

    .line 148
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->version:Ljava/lang/Short;

    goto :goto_0
.end method

.method public getHttpIfaceObjPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->httpControlObjPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRootURL()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->httpControlObjPath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    .line 132
    :goto_0
    return-object v1

    .line 129
    :cond_0
    invoke-direct {p0}, Lorg/alljoyn/ioe/controlpanelservice/Unit;->setRemoteController()V

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    invoke-interface {v1}, Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;->GetRootURL()Ljava/lang/String;
    :try_end_0
    .catch Lorg/alljoyn/bus/BusException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "be":Lorg/alljoyn/bus/BusException;
    new-instance v1, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to receive the Root URL, Error: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/alljoyn/bus/BusException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->unitId:Ljava/lang/String;

    return-object v0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 155
    sget-object v2, Lorg/alljoyn/ioe/controlpanelservice/Unit;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cleaning the Unit name: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->unitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->proxyObj:Lorg/alljoyn/bus/ProxyBusObject;

    invoke-virtual {v2}, Lorg/alljoyn/bus/ProxyBusObject;->release()V

    .line 161
    :cond_0
    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->remoteControl:Lorg/alljoyn/ioe/controlpanelservice/communication/interfaces/HTTPControl;

    .line 162
    iput-object v5, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->version:Ljava/lang/Short;

    .line 164
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->panelCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;

    .line 165
    .local v0, "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    invoke-virtual {v0}, Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;->release()V

    goto :goto_0

    .line 168
    .end local v0    # "coll":Lorg/alljoyn/ioe/controlpanelservice/ControlPanelCollection;
    :cond_1
    iget-object v2, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->panelCollections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 169
    return-void
.end method

.method setHttpControlObjPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "httpControlObjPath"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/alljoyn/ioe/controlpanelservice/Unit;->httpControlObjPath:Ljava/lang/String;

    .line 97
    return-void
.end method
