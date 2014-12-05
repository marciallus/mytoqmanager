.class Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;
.super Ljava/lang/Object;
.source "OBEXTCPServiceRecordImpl.java"

# interfaces
.implements Ljavax/bluetooth/ServiceRecord;


# instance fields
.field private host:Ljava/lang/String;

.field private port:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/microedition/io/ServerSocketConnection;)V
    .locals 2
    .param p1, "notifier"    # Ljavax/microedition/io/ServerSocketConnection;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    :try_start_0
    invoke-interface {p1}, Ljavax/microedition/io/ServerSocketConnection;->getLocalPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->port:Ljava/lang/String;

    .line 50
    invoke-interface {p1}, Ljavax/microedition/io/ServerSocketConnection;->getLocalAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->host:Ljava/lang/String;

    goto :goto_0
.end method

.method constructor <init>(Ljavax/microedition/io/SocketConnection;)V
    .locals 2
    .param p1, "connection"    # Ljavax/microedition/io/SocketConnection;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    :try_start_0
    invoke-interface {p1}, Ljavax/microedition/io/SocketConnection;->getPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->port:Ljava/lang/String;

    .line 59
    invoke-interface {p1}, Ljavax/microedition/io/SocketConnection;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->host:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->host:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAttributeIDs()[I
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Bluetooth ServiceRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttributeValue(I)Ljavax/bluetooth/DataElement;
    .locals 2
    .param p1, "attrID"    # I

    .prologue
    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Bluetooth ServiceRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionURL(IZ)Ljava/lang/String;
    .locals 2
    .param p1, "requiredSecurity"    # I
    .param p2, "mustBeMaster"    # Z

    .prologue
    .line 71
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->host:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tcpobex://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;->port:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHostDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Bluetooth ServiceRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public populateRecord([I)Z
    .locals 2
    .param p1, "attrIDs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Bluetooth ServiceRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAttributeValue(ILjavax/bluetooth/DataElement;)Z
    .locals 2
    .param p1, "attrID"    # I
    .param p2, "attrValue"    # Ljavax/bluetooth/DataElement;

    .prologue
    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Bluetooth ServiceRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDeviceServiceClasses(I)V
    .locals 2
    .param p1, "classes"    # I

    .prologue
    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Bluetooth ServiceRecord"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
