.class public Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;
.super Ljava/lang/Object;
.source "MockConnectionListener.java"

# interfaces
.implements Lcom/qualcomm/toq/base/connectionlistener/IConnectionListener;


# instance fields
.field connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

.field endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/base/endpoint/IEndPoint;Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V
    .locals 0
    .param p1, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    .param p2, "connectionManager"    # Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .line 20
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 21
    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 2
    .param p1, "unqiueAdress"    # Ljava/lang/String;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    if-eqz v1, :cond_0

    .line 26
    new-instance v0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener$1;-><init>(Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;)V

    .line 39
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 43
    .end local v0    # "t":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public isWDDeviceAssociated(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "associated_wd_device_address"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public read([B)V
    .locals 2
    .param p1, "data"    # [B

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    invoke-interface {v0, p1, v1}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->receiveData([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 53
    return-void
.end method

.method public startSPPServer()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public stopConnectionListener()V
    .locals 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->connectionManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/connectionlistener/mock/MockConnectionListener;->endPoint:Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->connectionStateChange(Lcom/qualcomm/toq/base/endpoint/IEndPoint;I)V

    .line 58
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "data"    # [B

    .prologue
    .line 86
    return-void
.end method

.method public writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 91
    return-void
.end method
