.class public Lcom/intel/bluetooth/AndroidServiceRecord;
.super Lcom/intel/bluetooth/ServiceRecordImpl;
.source "AndroidServiceRecord.java"


# instance fields
.field private obex:Z

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field private uuid:Ljavax/bluetooth/UUID;


# direct methods
.method public constructor <init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;Landroid/bluetooth/BluetoothSocket;Ljavax/bluetooth/UUID;Z)V
    .locals 2
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "device"    # Ljavax/bluetooth/RemoteDevice;
    .param p3, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p4, "uuid"    # Ljavax/bluetooth/UUID;
    .param p5, "obex"    # Z

    .prologue
    .line 42
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/intel/bluetooth/ServiceRecordImpl;-><init>(Lcom/intel/bluetooth/BluetoothStack;Ljavax/bluetooth/RemoteDevice;J)V

    .line 43
    iput-object p3, p0, Lcom/intel/bluetooth/AndroidServiceRecord;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 44
    iput-boolean p5, p0, Lcom/intel/bluetooth/AndroidServiceRecord;->obex:Z

    .line 45
    iput-object p4, p0, Lcom/intel/bluetooth/AndroidServiceRecord;->uuid:Ljavax/bluetooth/UUID;

    .line 46
    return-void
.end method


# virtual methods
.method public bridge synthetic getAttributeIDs()[I
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeIDs()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttributeValue(I)Ljavax/bluetooth/DataElement;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->getAttributeValue(I)Ljavax/bluetooth/DataElement;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionURL(IZ)Ljava/lang/String;
    .locals 4
    .param p1, "requiredSecurity"    # I
    .param p2, "mustBeMaster"    # Z

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/intel/bluetooth/AndroidServiceRecord;->obex:Z

    if-eqz v1, :cond_0

    const-string v1, "btgoep"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v1, p0, Lcom/intel/bluetooth/AndroidServiceRecord;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/intel/bluetooth/AndroidServiceRecord;->uuid:Ljavax/bluetooth/UUID;

    invoke-virtual {v1}, Ljavax/bluetooth/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    packed-switch p1, :pswitch_data_0

    .line 72
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 53
    :cond_0
    const-string v1, "btspp"

    goto :goto_0

    .line 63
    :pswitch_0
    const-string v1, ";authenticate=false;encrypt=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    :goto_1
    if-eqz p2, :cond_1

    .line 76
    const-string v1, ";master=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_2
    const-string v1, ";android=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 66
    :pswitch_1
    const-string v1, ";authenticate=true;encrypt=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 69
    :pswitch_2
    const-string v1, ";authenticate=true;encrypt=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 78
    :cond_1
    const-string v1, ";master=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic getHostDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/ServiceRecordImpl;->getHostDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic populateRecord([I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->populateRecord([I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setAttributeValue(ILjavax/bluetooth/DataElement;)Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/intel/bluetooth/ServiceRecordImpl;->setAttributeValue(ILjavax/bluetooth/DataElement;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic setDeviceServiceClasses(I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/intel/bluetooth/ServiceRecordImpl;->setDeviceServiceClasses(I)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/intel/bluetooth/ServiceRecordImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
