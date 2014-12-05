.class Lcom/qualcomm/toq/smartwatch/service/PHubService$1;
.super Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;
.source "PHubService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/service/PHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-direct {p0}, Lcom/qualcomm/aidl/personalHub/PHubApi$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(ILcom/qualcomm/aidl/personalHub/PHubListener;)V
    .locals 3
    .param p1, "appID"    # I
    .param p2, "listener"    # Lcom/qualcomm/aidl/personalHub/PHubListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mPHubListener:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mPHubListener:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public associateWD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneWD()V

    .line 186
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "PHubService"

    const-string v1, "associateWD(): mConnectionFactory.getConnManager() is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    const-string v0, "PHubService"

    const-string v1, "mConnectionFactory is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelFindWDReq()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    .line 249
    .local v0, "sysObj":Lcom/qualcomm/toq/smartwatch/controller/SystemController;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendCancelFindWDReq()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v1, "PHubService"

    const-string v2, "SystemController.getSystemController() is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disassociateWD()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->disassociatePhoneWD()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const-string v0, "PHubService"

    const-string v1, "disassociateWD(): mConnectionFactory.getConnManager() is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findWDReq()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v0

    .line 238
    .local v0, "sysObj":Lcom/qualcomm/toq/smartwatch/controller/SystemController;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendFindWDReq()V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    const-string v1, "PHubService"

    const-string v2, "SystemController.getSystemController() is null"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public foundPhoneReq(Ljava/lang/String;)V
    .locals 5
    .param p1, "resultDesription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->getSystemController()Lcom/qualcomm/toq/smartwatch/controller/SystemController;

    move-result-object v2

    .line 220
    .local v2, "sysObj":Lcom/qualcomm/toq/smartwatch/controller/SystemController;
    if-eqz v2, :cond_0

    .line 222
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "jObj":Lorg/json/JSONObject;
    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/smartwatch/controller/SystemController;->sendFoundPhoneReq(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "PHubService"

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v3, "PHubService"

    const-string v4, "SystemController.getSystemController() is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBluetoothServiceStatus()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectionState(Ljava/lang/String;)I
    .locals 3
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "endPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(Ljava/lang/String;)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 207
    :cond_0
    if-eqz v1, :cond_1

    .line 208
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 209
    .local v0, "conHandlerImpl":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v2

    .line 213
    .end local v0    # "conHandlerImpl":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 3
    .param p1, "appID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mPHubListener:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mPHubListener:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$000(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetConnectionWD()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 259
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mConnectionFactory:Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$100(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->resetEndPointConnection(IZ)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const-string v0, "PHubService"

    const-string v1, "resetConnectionWD(): mConnectionFactory.getConnManager() is null"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public sendFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    return-void
.end method

.method public sendStringMessage(IILjava/lang/String;)V
    .locals 7
    .param p1, "applicationID"    # I
    .param p2, "command"    # I
    .param p3, "strMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$1;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move v2, p1

    move v3, p1

    move-object v4, p3

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->sendDataToController(IIILjava/lang/Object;II)V

    .line 159
    return-void
.end method
