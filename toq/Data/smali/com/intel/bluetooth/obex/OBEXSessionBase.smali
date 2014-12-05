.class abstract Lcom/intel/bluetooth/obex/OBEXSessionBase;
.super Ljava/lang/Object;
.source "OBEXSessionBase.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothConnectionAccess;
.implements Ljavax/microedition/io/Connection;


# instance fields
.field private authChallengesSent:Ljava/util/Vector;

.field protected authenticator:Ljavax/obex/Authenticator;

.field private conn:Ljavax/microedition/io/StreamConnection;

.field protected connectionID:J

.field private is:Ljava/io/InputStream;

.field protected isConnected:Z

.field protected mtu:I

.field protected final obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

.field private os:Ljava/io/OutputStream;

.field protected packetsCountRead:I

.field protected packetsCountWrite:I

.field protected requestSent:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/io/StreamConnection;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V
    .locals 5
    .param p1, "conn"    # Ljavax/microedition/io/StreamConnection;
    .param p2, "obexConnectionParams"    # Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/16 v2, 0x400

    iput v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->mtu:I

    .line 85
    if-nez p2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "obexConnectionParams is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_0
    iput-boolean v4, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->isConnected:Z

    .line 89
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    .line 90
    iput-object p2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    .line 91
    iget v2, p2, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    iput v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->mtu:I

    .line 92
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->connectionID:J

    .line 93
    iput v4, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountWrite:I

    .line 94
    iput v4, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountRead:I

    .line 95
    const/4 v1, 0x0

    .line 97
    .local v1, "initOK":Z
    :try_start_0
    invoke-interface {p1}, Ljavax/microedition/io/StreamConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    .line 98
    invoke-interface {p1}, Ljavax/microedition/io/StreamConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const/4 v1, 0x1

    .line 101
    if-nez v1, :cond_1

    .line 103
    :try_start_1
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 100
    :catchall_0
    move-exception v2

    .line 101
    if-nez v1, :cond_2

    .line 103
    :try_start_2
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :cond_2
    :goto_1
    throw v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "close error"

    invoke-static {v3, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 105
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v2, "close error"

    invoke-static {v2, v0}, Lcom/intel/bluetooth/DebugLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static createOBEXHeaderSet()Ljavax/obex/HeaderSet;
    .locals 1

    .prologue
    .line 141
    invoke-static {}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    move-result-object v0

    return-object v0
.end method

.method static createOBEXHeaderSetImpl()Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .locals 1

    .prologue
    .line 137
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;

    invoke-direct {v0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;-><init>()V

    return-object v0
.end method

.method private validateBluetoothConnection()V
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    instance-of v0, v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a Bluetooth connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    return-void
.end method

.method static validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V
    .locals 0
    .param p0, "headers"    # Ljavax/obex/HeaderSet;

    .prologue
    .line 145
    invoke-static {p0}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->validateCreatedHeaderSet(Ljavax/obex/HeaderSet;)V

    .line 146
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    .line 113
    .local v0, "c":Ljavax/microedition/io/StreamConnection;
    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    .line 116
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :cond_1
    if-eqz v0, :cond_2

    .line 130
    invoke-interface {v0}, Ljavax/microedition/io/StreamConnection;->close()V

    .line 134
    :cond_2
    return-void

    .line 120
    :catchall_0
    move-exception v1

    .line 122
    :try_start_2
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 124
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    .line 126
    :cond_3
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 127
    :catchall_1
    move-exception v1

    .line 129
    if-eqz v0, :cond_4

    .line 130
    invoke-interface {v0}, Ljavax/microedition/io/StreamConnection;->close()V

    .line 132
    :cond_4
    throw v1
.end method

.method public encrypt(JZ)Z
    .locals 2
    .param p1, "address"    # J
    .param p3, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->validateBluetoothConnection()V

    .line 384
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0, p1, p2, p3}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->encrypt(JZ)Z

    move-result v0

    return v0
.end method

.method public getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
    .locals 1

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->validateBluetoothConnection()V

    .line 411
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-nez v0, :cond_0

    .line 412
    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;

    move-result-object v0

    goto :goto_0
.end method

.method getPacketSize()I
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->isConnected:Z

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->mtu:I

    .line 444
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    iget v0, v0, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    goto :goto_0
.end method

.method getPacketsCountRead()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountRead:I

    return v0
.end method

.method getPacketsCountWrite()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountWrite:I

    return v0
.end method

.method public getRemoteAddress()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->validateBluetoothConnection()V

    .line 305
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getRemoteAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getRemoteDevice()Ljavax/bluetooth/RemoteDevice;
    .locals 1

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->validateBluetoothConnection()V

    .line 318
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-nez v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .line 321
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getRemoteDevice()Ljavax/bluetooth/RemoteDevice;

    move-result-object v0

    goto :goto_0
.end method

.method public getSecurityOpt()I
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->validateBluetoothConnection()V

    .line 370
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-nez v0, :cond_0

    .line 371
    const/4 v0, 0x0

    .line 373
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getSecurityOpt()I

    move-result v0

    goto :goto_0
.end method

.method handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 2
    .param p1, "incomingHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p2, "replyHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authenticator:Ljavax/obex/Authenticator;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/io/IOException;

    .line 291
    const-string v1, "Authenticator required for authentication"

    .line 290
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authenticator:Ljavax/obex/Authenticator;

    .line 293
    invoke-static {p1, p2, v0}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->handleAuthenticationChallenge(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/Authenticator;)V

    .line 296
    :cond_1
    return-void
.end method

.method handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/ServerRequestHandler;)Z
    .locals 3
    .param p1, "incomingHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p2, "serverHandler"    # Ljavax/obex/ServerRequestHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationResponses()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authenticator:Ljavax/obex/Authenticator;

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Ljava/io/IOException;

    .line 259
    const-string v2, "Authenticator required for authentication"

    .line 258
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    if-nez v1, :cond_1

    .line 262
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 263
    new-instance v1, Ljava/io/IOException;

    .line 264
    const-string v2, "Authentication challenges had not been sent"

    .line 263
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    :cond_1
    const/4 v0, 0x0

    .line 270
    .local v0, "authenticated":Z
    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authenticator:Ljavax/obex/Authenticator;

    .line 271
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    .line 269
    invoke-static {p1, v1, p2, v2}, Lcom/intel/bluetooth/obex/OBEXAuthentication;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/Authenticator;Ljavax/obex/ServerRequestHandler;Ljava/util/Vector;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 273
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    .line 282
    .end local v0    # "authenticated":Z
    :cond_2
    :goto_0
    return v0

    .line 272
    .restart local v0    # "authenticated":Z
    :catchall_0
    move-exception v1

    .line 273
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    if-eqz v2, :cond_3

    .line 274
    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    .line 276
    :cond_3
    throw v1

    .line 279
    .end local v0    # "authenticated":Z
    :cond_4
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 280
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Authentication response is missing"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_5
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-nez v0, :cond_0

    .line 331
    const/4 v0, 0x1

    .line 336
    :goto_0
    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    instance-of v0, v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->isClosed()Z

    move-result v0

    goto :goto_0

    .line 336
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markAuthenticated()V
    .locals 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->validateBluetoothConnection()V

    .line 358
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->markAuthenticated()V

    .line 361
    :cond_0
    return-void
.end method

.method protected declared-synchronized readPacket()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 209
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->requestSent:Z

    if-nez v3, :cond_0

    .line 210
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Read packet out of order"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 212
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->requestSent:Z

    .line 213
    const/4 v3, 0x3

    new-array v1, v3, [B

    .line 214
    .local v1, "header":[B
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    invoke-static {v3, v4, v1}, Lcom/intel/bluetooth/obex/OBEXUtils;->readFully(Ljava/io/InputStream;Lcom/intel/bluetooth/obex/OBEXConnectionParams;[B)V

    .line 215
    iget v3, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountRead:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountRead:I

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "obex received ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountRead:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    const/4 v4, 0x0

    aget-byte v4, v1, v4

    invoke-static {v4}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(B)Ljava/lang/String;

    move-result-object v4

    .line 218
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    .line 216
    invoke-static {v3, v4, v5, v6}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;Ljava/lang/String;J)V

    .line 219
    const/4 v3, 0x1

    aget-byte v3, v1, v3

    const/4 v4, 0x2

    aget-byte v4, v1, v4

    invoke-static {v3, v4}, Lcom/intel/bluetooth/obex/OBEXUtils;->bytesToShort(BB)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 220
    .local v2, "lenght":I
    if-ne v2, v7, :cond_1

    .line 233
    .end local v1    # "header":[B
    :goto_0
    monitor-exit p0

    return-object v1

    .line 223
    .restart local v1    # "header":[B
    :cond_1
    if-lt v2, v7, :cond_2

    const v3, 0xffff

    if-le v2, v3, :cond_3

    .line 224
    :cond_2
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invalid packet length "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_3
    new-array v0, v2, [B

    .line 227
    .local v0, "data":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    array-length v5, v1

    .line 229
    array-length v6, v1

    sub-int v6, v2, v6

    .line 228
    invoke-static {v3, v4, v0, v5, v6}, Lcom/intel/bluetooth/obex/OBEXUtils;->readFully(Ljava/io/InputStream;Lcom/intel/bluetooth/obex/OBEXConnectionParams;[BII)V

    .line 230
    iget-object v3, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_4

    .line 231
    const-string v3, "has more data after read"

    iget-object v4, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->is:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->available()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v1, v0

    .line 233
    goto :goto_0
.end method

.method setPacketSize(I)V
    .locals 2
    .param p1, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->isConnected:Z

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session already connected"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    iput p1, v0, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    .line 459
    return-void
.end method

.method public setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V
    .locals 1
    .param p1, "remoteDevice"    # Ljavax/bluetooth/RemoteDevice;

    .prologue
    .line 398
    invoke-direct {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->validateBluetoothConnection()V

    .line 399
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0, p1}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V

    .line 402
    :cond_0
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
    .line 346
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    instance-of v0, v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->conn:Ljavax/microedition/io/StreamConnection;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->shutdown()V

    .line 349
    :cond_0
    return-void
.end method

.method validateAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 2
    .param p1, "requestHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .param p2, "incomingHeaders"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 245
    if-eqz p1, :cond_0

    .line 246
    invoke-virtual {p1}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p2}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationResponses()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Authentication response is missing"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->handleAuthenticationResponse(Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;Ljavax/obex/ServerRequestHandler;)Z

    .line 252
    return-void
.end method

.method protected writePacket(ILcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 1
    .param p1, "commId"    # I
    .param p2, "headers"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->writePacketWithFlags(I[BLcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V

    .line 151
    return-void
.end method

.method protected declared-synchronized writePacketWithFlags(I[BLcom/intel/bluetooth/obex/OBEXHeaderSetImpl;)V
    .locals 10
    .param p1, "commId"    # I
    .param p2, "headerFlagsData"    # [B
    .param p3, "headers"    # Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->requestSent:Z

    if-eqz v6, :cond_0

    .line 157
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Write packet out of order"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 159
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    iput-boolean v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->requestSent:Z

    .line 160
    const/4 v5, 0x3

    .line 161
    .local v5, "len":I
    iget-wide v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->connectionID:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 162
    add-int/lit8 v5, v5, 0x5

    .line 164
    :cond_1
    if-eqz p2, :cond_2

    .line 165
    array-length v6, p2

    add-int/2addr v5, v6

    .line 167
    :cond_2
    const/4 v3, 0x0

    check-cast v3, [B

    .line 168
    .local v3, "data":[B
    if-eqz p3, :cond_3

    .line 169
    invoke-static {p3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->toByteArray(Ljavax/obex/HeaderSet;)[B

    move-result-object v3

    .line 170
    array-length v6, v3

    add-int/2addr v5, v6

    .line 172
    :cond_3
    iget v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->mtu:I

    if-le v5, v6, :cond_4

    .line 173
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Can\'t sent more data than in MTU, len="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mtu="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->mtu:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 176
    :cond_4
    iget v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountWrite:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountWrite:I

    .line 177
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 178
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1, p1, v5}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexLen(Ljava/io/OutputStream;II)V

    .line 179
    if-eqz p2, :cond_5

    .line 180
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 182
    :cond_5
    iget-wide v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->connectionID:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_6

    .line 184
    const/16 v6, 0xcb

    iget-wide v7, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->connectionID:J

    .line 183
    invoke-static {v1, v6, v7, v8}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->writeObexInt(Ljava/io/OutputStream;IJ)V

    .line 186
    :cond_6
    if-eqz v3, :cond_7

    .line 187
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 189
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "obex send ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountWrite:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 190
    invoke-static {p1}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(I)Ljava/lang/String;

    move-result-object v7

    int-to-long v8, p1

    .line 189
    invoke-static {v6, v7, v8, v9}, Lcom/intel/bluetooth/DebugLog;->debug0x(Ljava/lang/String;Ljava/lang/String;J)V

    .line 191
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/OutputStream;->write([B)V

    .line 192
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->os:Ljava/io/OutputStream;

    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 193
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "obex sent ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->packetsCountWrite:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") len"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    int-to-long v7, v5

    invoke-static {v6, v7, v8}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 195
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->hasAuthenticationChallenge()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 196
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    if-nez v6, :cond_8

    .line 197
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    .line 199
    :cond_8
    invoke-virtual {p3}, Lcom/intel/bluetooth/obex/OBEXHeaderSetImpl;->getAuthenticationChallenges()Ljava/util/Enumeration;

    move-result-object v4

    .line 200
    .local v4, "iter":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 199
    if-nez v6, :cond_a

    .line 206
    .end local v4    # "iter":Ljava/util/Enumeration;
    :cond_9
    monitor-exit p0

    return-void

    .line 201
    .restart local v4    # "iter":Ljava/util/Enumeration;
    :cond_a
    :try_start_2
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 202
    .local v0, "authChallenge":[B
    new-instance v2, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;

    invoke-direct {v2, v0}, Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;-><init>([B)V

    .line 203
    .local v2, "challenge":Lcom/intel/bluetooth/obex/OBEXAuthentication$Challenge;
    iget-object v6, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;->authChallengesSent:Ljava/util/Vector;

    invoke-virtual {v6, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
