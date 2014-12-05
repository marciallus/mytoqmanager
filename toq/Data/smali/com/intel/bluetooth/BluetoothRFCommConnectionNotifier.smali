.class Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;
.super Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;
.source "BluetoothRFCommConnectionNotifier.java"

# interfaces
.implements Ljavax/microedition/io/StreamConnectionNotifier;


# instance fields
.field private rfcommChannel:I


# direct methods
.method public constructor <init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;)V
    .locals 2
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "params"    # Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;-><init>(Lcom/intel/bluetooth/BluetoothStack;Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;)V

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->rfcommChannel:I

    .line 43
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    invoke-interface {p1, p2, v0}, Lcom/intel/bluetooth/BluetoothStack;->rfServerOpen(Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;Lcom/intel/bluetooth/ServiceRecordImpl;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->handle:J

    .line 45
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 46
    sget-object v1, Lcom/intel/bluetooth/BluetoothConsts;->RFCOMM_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-virtual {v0, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getChannel(Ljavax/bluetooth/UUID;)I

    move-result v0

    .line 45
    iput v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->rfcommChannel:I

    .line 48
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/intel/bluetooth/ServiceRecordImpl;->attributeUpdated:Z

    .line 50
    iget-boolean v0, p2, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    .line 51
    iget-boolean v1, p2, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    .line 50
    invoke-static {v0, v1}, Lcom/intel/bluetooth/Utils;->securityOpt(ZZ)I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->securityOpt:I

    .line 53
    invoke-virtual {p0}, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->connectionCreated()V

    .line 54
    return-void
.end method


# virtual methods
.method public acceptAndOpen()Ljavax/microedition/io/StreamConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-boolean v4, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->closed:Z

    if-eqz v4, :cond_0

    .line 75
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Notifier is closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 77
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->updateServiceRecord(Z)V

    .line 79
    :try_start_0
    iget-object v4, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 80
    iget-wide v5, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->handle:J

    invoke-interface {v4, v5, v6}, Lcom/intel/bluetooth/BluetoothStack;->rfServerAcceptAndOpenRfServerConnection(J)J

    move-result-wide v0

    .line 81
    .local v0, "clientHandle":J
    iget-object v4, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 82
    iget v5, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->securityOpt:I

    .line 81
    invoke-interface {v4, v0, v1, v5}, Lcom/intel/bluetooth/BluetoothStack;->rfGetSecurityOpt(JI)I

    move-result v2

    .line 83
    .local v2, "clientSecurityOpt":I
    new-instance v4, Lcom/intel/bluetooth/BluetoothRFCommServerConnection;

    iget-object v5, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    invoke-direct {v4, v5, v0, v1, v2}, Lcom/intel/bluetooth/BluetoothRFCommServerConnection;-><init>(Lcom/intel/bluetooth/BluetoothStack;JI)V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    return-object v4

    .line 85
    .end local v0    # "clientHandle":J
    .end local v2    # "clientSecurityOpt":I
    :catch_0
    move-exception v3

    .line 86
    .local v3, "e":Ljava/io/InterruptedIOException;
    throw v3

    .line 87
    .end local v3    # "e":Ljava/io/InterruptedIOException;
    :catch_1
    move-exception v3

    .line 88
    .local v3, "e":Ljava/io/IOException;
    iget-boolean v4, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->closed:Z

    if-eqz v4, :cond_1

    .line 89
    new-instance v4, Ljava/io/InterruptedIOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Notifier has been closed; "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 89
    invoke-direct {v4, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 92
    :cond_1
    throw v3
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
    .line 64
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    invoke-interface {v0, p1, p2, v1}, Lcom/intel/bluetooth/BluetoothStack;->rfServerClose(JLcom/intel/bluetooth/ServiceRecordImpl;)V

    .line 65
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
    .line 114
    iget-object v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->handle:J

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/intel/bluetooth/BluetoothStack;->rfServerUpdateServiceRecord(JLcom/intel/bluetooth/ServiceRecordImpl;Z)V

    .line 116
    return-void
.end method

.method protected validateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V
    .locals 3
    .param p1, "srvRecord"    # Ljavax/bluetooth/ServiceRecord;

    .prologue
    .line 97
    iget v0, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->rfcommChannel:I

    iget-object v1, p0, Lcom/intel/bluetooth/BluetoothRFCommConnectionNotifier;->serviceRecord:Lcom/intel/bluetooth/ServiceRecordImpl;

    .line 98
    sget-object v2, Lcom/intel/bluetooth/BluetoothConsts;->RFCOMM_PROTOCOL_UUID:Ljavax/bluetooth/UUID;

    invoke-virtual {v1, v2}, Lcom/intel/bluetooth/ServiceRecordImpl;->getChannel(Ljavax/bluetooth/UUID;)I

    move-result v1

    .line 97
    if-eq v0, v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 100
    const-string v1, "Must not change the RFCOMM server channel number"

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierBase;->validateServiceRecord(Ljavax/bluetooth/ServiceRecord;)V

    .line 103
    return-void
.end method
