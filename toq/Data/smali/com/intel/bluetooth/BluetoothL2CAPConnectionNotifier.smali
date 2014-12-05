.class Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;
.super Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;
.source "BluetoothL2CAPConnectionNotifier.java"

# interfaces
.implements Ljavax/bluetooth/L2CAPConnectionNotifier;


# instance fields
.field private psm:I

.field private transmitMTU:I


# direct methods
.method public constructor <init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;II)V
    .locals 2
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .param p3, "receiveMTU"    # I
    .param p4, "transmitMTU"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;)V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->psm:I

    .line 52
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 51
    invoke-interface {p1, p2, p3, p4, v0}, Lcom/intel/bluetooth/BluetoothStack;->l2ServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;IILcom/intel/bluetooth/ServiceRecordImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->handle:J

    .line 54
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 55
    sget-object v1, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getChannel(Ljavax/bluetooth/UUID;)I

    move-result v0

    .line 54
    iput v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->psm:I

    .line 57
    iput p4, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->transmitMTU:I

    .line 59
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributeUpdated:Z

    .line 61
    iget-boolean v0, p2, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    .line 62
    iget-boolean v1, p2, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    .line 61
    invoke-static {v0, v1}, Lcom/intel/bluetooth/Utils;->securityOpt(ZZ)I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->securityOpt:I

    .line 64
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->connectionCreated()V

    .line 65
    return-void
.end method


# virtual methods
.method public acceptAndOpen()Ljavax/bluetooth/L2CAPConnection;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->closed:Z

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Notifier is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->updateServiceRecord(Z)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 79
    iget-wide v7, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->handle:J

    invoke-interface {v0, v7, v8}, Lcom/intel/bluetooth/BluetoothStack;->l2ServerAcceptAndOpenServerConnection(J)J

    move-result-wide v2

    .line 80
    .local v2, "clientHandle":J
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 81
    iget v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->securityOpt:I

    .line 80
    invoke-interface {v0, v2, v3, v1}, Lcom/intel/bluetooth/BluetoothStack;->l2GetSecurityOpt(JI)I

    move-result v5

    .line 82
    .local v5, "clientSecurityOpt":I
    new-instance v0, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 83
    iget v4, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->transmitMTU:I

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothL2CAPServerConnection;-><init>(Lcom/intel/bluetooth/BluetoothStack;JII)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v0

    .line 84
    .end local v2    # "clientHandle":J
    .end local v5    # "clientSecurityOpt":I
    :catch_0
    move-exception v6

    .line 85
    .local v6, "e":Ljava/io/InterruptedIOException;
    throw v6

    .line 86
    .end local v6    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v6

    .line 87
    .local v6, "e":Ljava/io/IOException;
    iget-boolean v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->closed:Z

    if-eqz v0, :cond_1

    .line 88
    new-instance v0, Ljava/io/InterruptedIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Notifier has been closed; "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_1
    throw v6
.end method

.method protected stackServerClose(J)V
    .locals 2
    .param p1, "handle"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    invoke-interface {v0, p1, p2, v1}, Lcom/intel/bluetooth/BluetoothStack;->l2ServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 104
    return-void
.end method

.method protected updateStackServiceRecord(Lcom/intel/bluetooth/ServiceRecordImpl;Z)V
    .locals 3
    .param p1, "serviceRecord"    # Lcom/intel/bluetooth/ServiceRecordImpl;
    .param p2, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->handle:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/intel/bluetooth/BluetoothStack;->l2ServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V

    .line 125
    return-void
.end method

.method protected validateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V
    .locals 3
    .param p1, "srvRecord"    # Ljavax/bluetooth/ServiceRecord;

    .prologue
    .line 107
    iget v0, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->psm:I

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothL2CAPConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 108
    sget-object v2, Lcom/intel/bluetooth/BluetoothConsts;->L2CAP_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-virtual {v1, v2}, Lcom/intel/bluetooth/ServiceRecordImpl;->getChannel(Ljavax/bluetooth/UUID;)I

    move-result v1

    .line 107
    if-eq v0, v1, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must not change the PSM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    invoke-super {p0, p1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->validateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V

    .line 112
    return-void
.end method
