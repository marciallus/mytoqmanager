.class public Ljavax/bluetooth/RemoteDevice;
.super Ljava/lang/Object;
.source "RemoteDevice.java"


# instance fields
.field private addressLong:J

.field private addressStr:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "address is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    const-string v3, "; should be 12 characters"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_1
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed address: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 85
    const-string v3, "; can\'t be negative"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_2
    const-string v1, "new RemoteDevice"

    invoke-static {v1, p1}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->formatBluetoothAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/bluetooth/RemoteDevice;->addressStr:Ljava/lang/String;

    .line 90
    :try_start_0
    iget-object v1, p0, Ljavax/bluetooth/RemoteDevice;->addressStr:Ljava/lang/String;

    invoke-static {}, Ljavax/bluetooth/LocalDevice;->getLocalDevice()Ljavax/bluetooth/LocalDevice;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljavax/bluetooth/LocalDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 93
    const-string v2, "can\'t use the LocalDevice address."

    .line 92
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljavax/bluetooth/BluetoothStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljavax/bluetooth/BluetoothStateException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t initialize bluetooth support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-static {v1, v0}, Lcom/intel/bluetooth/UtilsJavaSE;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 100
    .end local v0    # "e":Ljavax/bluetooth/BluetoothStateException;
    :cond_3
    invoke-static {p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getAddress(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Ljavax/bluetooth/RemoteDevice;->addressLong:J

    .line 101
    return-void
.end method

.method public static getRemoteDevice(Ljavax/microedition/io/Connection;)Ljavax/bluetooth/RemoteDevice;
    .locals 1
    .param p0, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implGetRemoteDevice(Ljavax/microedition/io/Connection;)Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public authenticate()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->authenticate(Ljavax/bluetooth/RemoteDevice;)Z

    move-result v0

    return v0
.end method

.method public authorize(Ljavax/microedition/io/Connection;)Z
    .locals 1
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 289
    invoke-static {p0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implAuthorize(Ljavax/bluetooth/RemoteDevice;Ljavax/microedition/io/Connection;)Z

    move-result v0

    return v0
.end method

.method public encrypt(Ljavax/microedition/io/Connection;Z)Z
    .locals 1
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {p0, p1, p2}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implEncrypt(Ljavax/bluetooth/RemoteDevice;Ljavax/microedition/io/Connection;Z)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 164
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljavax/bluetooth/RemoteDevice;

    if-eqz v0, :cond_0

    .line 165
    check-cast p1, Ljavax/bluetooth/RemoteDevice;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v0, p1, Ljavax/bluetooth/RemoteDevice;->addressLong:J

    iget-wide v2, p0, Ljavax/bluetooth/RemoteDevice;->addressLong:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 164
    goto :goto_0
.end method

.method public final getBluetoothAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Ljavax/bluetooth/RemoteDevice;->addressStr:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName(Z)Ljava/lang/String;
    .locals 2
    .param p1, "alwaysAsk"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    iget-wide v0, p0, Ljavax/bluetooth/RemoteDevice;->addressLong:J

    invoke-static {p0, v0, v1, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implGetFriendlyName(Ljavax/bluetooth/RemoteDevice;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 175
    new-instance v0, Ljava/lang/Long;

    iget-wide v1, p0, Ljavax/bluetooth/RemoteDevice;->addressLong:J

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 395
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implIsAuthenticated(Ljavax/bluetooth/RemoteDevice;)Z

    move-result v0

    return v0
.end method

.method public isAuthorized(Ljavax/microedition/io/Connection;)Z
    .locals 1
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    invoke-static {p0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implIsAuthorized(Ljavax/bluetooth/RemoteDevice;Ljavax/microedition/io/Connection;)Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 1

    .prologue
    .line 450
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implIsEncrypted(Ljavax/bluetooth/RemoteDevice;)Z

    move-result v0

    return v0
.end method

.method public isTrustedDevice()Z
    .locals 1

    .prologue
    .line 110
    invoke-static {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper;->implIsTrustedDevice(Ljavax/bluetooth/RemoteDevice;)Z

    move-result v0

    return v0
.end method
