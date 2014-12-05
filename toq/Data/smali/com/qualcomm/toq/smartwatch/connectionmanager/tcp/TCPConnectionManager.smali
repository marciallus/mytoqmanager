.class public Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;
.super Ljava/lang/Object;
.source "TCPConnectionManager.java"

# interfaces
.implements Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "TCPConnectionManager"

.field private static mInstance:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;


# instance fields
.field protected connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

.field protected localContext:Landroid/content/Context;

.field private mEndPointConnectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/qualcomm/toq/base/endpoint/IEndPoint;",
            "Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private phubIntentReceiver:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    .line 39
    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->localContext:Landroid/content/Context;

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    .line 43
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    .line 45
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->initPhubTCPData()V

    .line 47
    new-instance v1, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;

    invoke-direct {v1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;-><init>()V

    iput-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->phubIntentReceiver:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;

    .line 48
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .local v0, "phubfilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 50
    instance-of v1, p1, Landroid/app/Service;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 53
    check-cast v1, Landroid/app/Service;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->phubIntentReceiver:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->localContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method public static getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mInstance:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mInstance:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    .line 63
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mInstance:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    return-object v0
.end method


# virtual methods
.method public associatePhoneEPLeft()V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public associatePhoneEPRight()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public associatePhoneWD()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 200
    const-string v2, "TCPConnectionListener"

    const-string v3, "associatePhoneWD() called"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 202
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 203
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "associated_wd_device_name"

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_DEVICE_NAME:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v6}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->createEndPoint(Ljava/lang/String;Ljava/lang/String;I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 210
    .local v1, "tcpEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-virtual {v0, v6, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 211
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->registerEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 212
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 218
    .end local v1    # "tcpEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_0
    return-void

    .line 215
    :cond_0
    const-string v2, "TCPConnectionManager"

    const-string v3, "ACTION_CONNECT_REMOTE_DEVICE : connectionFactory.getConnManager() is null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 2
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    const-string v0, "TCPConnectionListener"

    const-string v1, "connect() called from TCPConnectionManager"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->connect(Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->connect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 85
    return-void
.end method

.method public connectEndpoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 0
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 253
    return-void
.end method

.method public connectionStateChange(Lcom/qualcomm/toq/base/endpoint/IEndPoint;I)V
    .locals 2
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "state"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    invoke-interface {p1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    invoke-interface {v0, v1, p2}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->updateState(II)V

    .line 183
    return-void
.end method

.method public createEndPoint(Ljava/lang/String;Ljava/lang/String;I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 106
    const/4 v2, 0x0

    .line 108
    .local v2, "endPoint":Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;
    const-string v4, "TCPConnectionManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createEndPoint id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->localContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 110
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 112
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    new-instance v2, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;

    .end local v2    # "endPoint":Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_DEVICE_NAME:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-direct {v2, v4, p2}, Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .restart local v2    # "endPoint":Lcom/qualcomm/toq/smartwatch/endpoint/tcp/TCPEndPoint;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 119
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "associated_wd_device_address"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 122
    const-string v4, "associated_wd_device_name"

    invoke-interface {v1, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 123
    const-string v4, "associated_wd_device_address"

    invoke-interface {v1, v4, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-object v2
.end method

.method public destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 1
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->stopConnectionListener()V

    .line 152
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-void
.end method

.method public disassociatePhoneEPLeft()V
    .locals 0

    .prologue
    .line 247
    return-void
.end method

.method public disassociatePhoneEPRight()V
    .locals 0

    .prologue
    .line 260
    return-void
.end method

.method public disassociatePhoneWD()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 222
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 224
    .local v1, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v1, :cond_0

    .line 225
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 228
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "associated_wd_device_name"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 229
    const-string v2, "associated_wd_device_address"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 231
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 232
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 235
    .end local v0    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public disconnect(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 1
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->disconnect()V

    .line 142
    return-void
.end method

.method public getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 94
    .local v1, "endPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 95
    .local v3, "keyEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-interface {v3}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    move-object v0, v3

    .line 100
    .end local v3    # "keyEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_1
    return-object v0
.end method

.method public getEndPointConnectionMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/qualcomm/toq/base/endpoint/IEndPoint;",
            "Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;
    .locals 1
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    return-object v0
.end method

.method public handleConnHandlerData(Lcom/qualcomm/toq/base/endpoint/IEndPoint;[B)V
    .locals 1
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "data"    # [B

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->write([B)V

    .line 173
    return-void
.end method

.method public handleConnHandlerFileData(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Ljava/lang/Object;)V
    .locals 7
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "fileData"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 187
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "payload":Ljava/lang/String;
    const-string v2, "####"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 190
    const-string v2, "TCPConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", File = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    aget-object v3, v1, v5

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public receiveData([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->connectionHandler:Lcom/qualcomm/toq/base/handler/IConnectionHandler;

    invoke-interface {v0, p1, p2}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 178
    return-void
.end method

.method public registerEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 2
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;

    invoke-direct {v1, p1, p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/tcp/TCPConnectionListener;-><init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-void
.end method

.method public resetEndPointConnection(IZ)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "reconnect"    # Z

    .prologue
    .line 272
    const-string v2, "TCPConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reset Connection request for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :try_start_0
    new-instance v1, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager$1;-><init>(Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;IZ)V

    .line 307
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 310
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "TCPConnectionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in resetConnectionEndpoint():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopConnection(Ljava/lang/String;)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    .line 77
    .local v0, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getRegisteredConnectionListener(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;->stopConnectionListener()V

    .line 79
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_0
    return-void
.end method

.method public stopConnectionManager()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 157
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 158
    .local v2, "endPoints":Ljava/util/Set;, "Ljava/util/Set<Lcom/qualcomm/toq/base/endpoint/IEndPoint;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 159
    .local v1, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    goto :goto_0

    .line 161
    .end local v1    # "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_0
    iput-object v5, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mEndPointConnectionMap:Ljava/util/HashMap;

    .line 162
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, "context":Landroid/content/Context;
    instance-of v4, v0, Landroid/app/Service;

    if-eqz v4, :cond_1

    .line 165
    check-cast v0, Landroid/app/Service;

    .end local v0    # "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->phubIntentReceiver:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/receiver/TCPPHubIntentReceiver;

    invoke-virtual {v0, v4}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    :cond_1
    sput-object v5, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->mInstance:Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    .line 168
    return-void
.end method
