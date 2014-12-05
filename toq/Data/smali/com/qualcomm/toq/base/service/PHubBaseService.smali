.class public Lcom/qualcomm/toq/base/service/PHubBaseService;
.super Landroid/app/Service;
.source "PHubBaseService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PHubBaseService"

.field public static isPHubBaseServiceRunning:Z

.field public static isStopCalledOnUnpair:Z


# instance fields
.field protected mAppContext:Landroid/content/Context;

.field private mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput-boolean v0, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    .line 30
    sput-boolean v0, Lcom/qualcomm/toq/base/service/PHubBaseService;->isStopCalledOnUnpair:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    return-void
.end method

.method private printProjectInfo(Lcom/qualcomm/toq/base/utils/ProjectConfig;)V
    .locals 3
    .param p1, "prjConfig"    # Lcom/qualcomm/toq/base/utils/ProjectConfig;

    .prologue
    .line 156
    const-string v0, "PHubBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bamboo Build Number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getBambooBuildNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v0, "manufacturer: "

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v0, "Board: "

    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v0, "BRAND: "

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "DEVICE: "

    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "DISPLAY: "

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v0, "FINGERPRINT: "

    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v0, "HARDWARE: "

    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v0, "HOST: "

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v0, "ID: "

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v0, "MODEL: "

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v0, "PRODUCT: "

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "USER: "

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method


# virtual methods
.method protected endBaseFactoryObjects()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 94
    const-string v3, "PHubBaseService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PHubBaseService endBaseFactoryObjects() ToqApplication.getDeviceType() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 98
    const-string v3, "PHubBaseService"

    const-string v4, "disassociating only watch endPoint"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    .line 100
    .local v2, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v2, v6}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    .line 102
    .local v0, "WatchEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v1

    .line 104
    .local v1, "btConnMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1, v0, v6}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->destroyEndPoint(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Z)V

    .line 107
    .end local v1    # "btConnMgr":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    :cond_0
    invoke-virtual {v2, v6, v7}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setEndPoint(ILcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 120
    .end local v0    # "WatchEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .end local v2    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_1
    :goto_0
    return-void

    .line 110
    .restart local v2    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_2
    const-string v3, "PHubBaseService"

    const-string v4, "ConnectionFactory.getConnectionFactory() is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v2    # "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v3, :cond_1

    .line 115
    iget-object v3, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->finalizeConnMgr()V

    .line 116
    iput-object v7, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    goto :goto_0
.end method

.method protected getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 39
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 40
    const-string v0, "PHubBaseService"

    const-string v1, "PHubBaseService onCreate()."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    .line 50
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mAppContext:Landroid/content/Context;

    .line 54
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/service/PHubBaseService;->setProjectConfig()V

    .line 56
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/service/PHubBaseService;->startBaseFactoryObjects()V

    .line 58
    const-string v0, "PHubBaseService"

    const-string v1, "PHubBase Service instance created"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 73
    const-string v0, "PHubBaseService"

    const-string v1, "PHubBaseService onDestroy()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "PHubBaseService"

    const-string v1, "PHubBase Service onDestroy"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    .line 78
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/service/PHubBaseService;->endBaseFactoryObjects()V

    .line 80
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 65
    const-string v0, "PHubBaseService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PHubBaseService onStartCommand(). this-> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   startId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public resetConnectionEndpoint(I)V
    .locals 2
    .param p1, "endpointType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->resetEndPointConnection(IZ)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v0, "PHubBaseService"

    const-string v1, "resetConnectionEndpoint(): mConnectionFactory.getConnManager() is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setProjectConfig()V
    .locals 1

    .prologue
    .line 145
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    .line 146
    .local v0, "prjConfig":Lcom/qualcomm/toq/base/utils/ProjectConfig;
    invoke-direct {p0, v0}, Lcom/qualcomm/toq/base/service/PHubBaseService;->printProjectInfo(Lcom/qualcomm/toq/base/utils/ProjectConfig;)V

    .line 150
    return-void
.end method

.method protected startBaseFactoryObjects()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "PHubBaseService"

    const-string v1, "PHubBaseService startBaseFactoryObjects()"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    .line 88
    iget-object v0, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    iget-object v1, p0, Lcom/qualcomm/toq/base/service/PHubBaseService;->mAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->initiateConnection(Landroid/content/Context;I)V

    .line 91
    :cond_0
    return-void
.end method
