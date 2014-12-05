.class public abstract Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;
.super Ljava/lang/Object;
.source "BluetoothConnectionAccessAdapter.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothConnectionAccess;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encrypt(JZ)Z
    .locals 1
    .param p1, "address"    # J
    .param p3, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->encrypt(JZ)Z

    move-result v0

    return v0
.end method

.method public getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;
.end method

.method public getRemoteAddress()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getRemoteAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getRemoteDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public getSecurityOpt()I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getSecurityOpt()I

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->isClosed()Z

    move-result v0

    return v0
.end method

.method public markAuthenticated()V
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->markAuthenticated()V

    .line 83
    return-void
.end method

.method public setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V
    .locals 1
    .param p1, "remoteDevice"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V

    .line 112
    return-void
.end method

.method public shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothConnectionAccessAdapter;->getImpl()Lcom/intel/bluetooth/BluetoothConnectionAccess;

    move-result-object v0

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->shutdown()V

    .line 74
    return-void
.end method
