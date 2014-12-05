.class Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;
.super Ljavax/bluetooth/RemoteDevice;
.source "RemoteDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/intel/bluetooth/RemoteDeviceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteDeviceWithExtendedInfo"
.end annotation


# instance fields
.field addressLong:J

.field bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

.field private connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

.field name:Ljava/lang/String;

.field private paired:Z

.field private stackAttributes:Ljava/util/Hashtable;


# direct methods
.method private constructor <init>(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;)V
    .locals 1
    .param p1, "bluetoothStack"    # Lcom/intel/bluetooth/BluetoothStack;
    .param p2, "address"    # J
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p2, p3}, Lcom/intel/bluetooth/RemoteDeviceHelper;->getBluetoothAddress(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/bluetooth/RemoteDevice;-><init>(Ljava/lang/String;)V

    .line 75
    iput-object p1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 76
    iput-object p4, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->name:Ljava/lang/String;

    .line 77
    iput-wide p2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;-><init>(Lcom/intel/bluetooth/BluetoothStack;JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Z)V
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->paired:Z

    return-void
.end method

.method static synthetic access$2(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->setStackAttributes(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->getStackAttributes(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addConnection(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$5(Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->removeConnection(Ljava/lang/Object;)V

    return-void
.end method

.method private addConnection(Ljava/lang/Object;)V
    .locals 4
    .param p1, "connection"    # Ljava/lang/Object;

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Lcom/intel/bluetooth/WeakVectorFactory;->createWeakVector()Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    .line 81
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    monitor-enter v1

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v0, p1}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->addElement(Ljava/lang/Object;)V

    .line 88
    const-string v0, "connection open, open now"

    iget-object v2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v2}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v0, v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 86
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    return-void

    .line 81
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 86
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method private getStackAttributes(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->stackAttributes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->stackAttributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method private removeConnection(Ljava/lang/Object;)V
    .locals 4
    .param p1, "connection"    # Ljava/lang/Object;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    if-nez v0, :cond_0

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v0, p1}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->removeElement(Ljava/lang/Object;)Z

    .line 98
    const-string v0, "connection closed, open now"

    .line 99
    iget-object v2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v2}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->size()I

    move-result v2

    int-to-long v2, v2

    .line 98
    invoke-static {v0, v2, v3}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 96
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStackAttributes(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->stackAttributes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->stackAttributes:Ljava/util/Hashtable;

    .line 129
    :cond_0
    if-nez p2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->stackAttributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->stackAttributes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private updateConnectionMarkAuthenticated()V
    .locals 4

    .prologue
    .line 199
    iget-object v2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    if-nez v2, :cond_0

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v3, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    monitor-enter v3

    .line 203
    :try_start_0
    iget-object v2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v2}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 204
    .local v1, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    .line 203
    if-nez v2, :cond_1

    .line 202
    monitor-exit v3

    goto :goto_0

    .end local v1    # "en":Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 206
    .restart local v1    # "en":Ljava/util/Enumeration;
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    .line 207
    .local v0, "c":Lcom/intel/bluetooth/BluetoothConnectionAccess;
    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->markAuthenticated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public authenticate()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->hasConnections()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    new-instance v1, Ljava/io/IOException;

    .line 164
    const-string v2, "No open connections to this RemoteDevice"

    .line 163
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 168
    const/4 v0, 0x1

    .line 176
    :cond_1
    :goto_0
    return v0

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 171
    iget-wide v2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    invoke-interface {v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStack;->authenticateRemoteDevice(J)Z

    move-result v0

    .line 172
    .local v0, "authenticated":Z
    iput-boolean v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->paired:Z

    .line 173
    if-eqz v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->updateConnectionMarkAuthenticated()V

    goto :goto_0
.end method

.method authenticate(Ljava/lang/String;)Z
    .locals 4
    .param p1, "passkey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 185
    iget-wide v2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    .line 184
    invoke-interface {v1, v2, v3, p1}, Lcom/intel/bluetooth/BluetoothStack;->authenticateRemoteDevice(JLjava/lang/String;)Z

    move-result v0

    .line 186
    .local v0, "authenticated":Z
    iput-boolean v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->paired:Z

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->updateConnectionMarkAuthenticated()V

    .line 190
    :cond_0
    return v0
.end method

.method public authorize(Ljavax/microedition/io/Connection;)Z
    .locals 2
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    instance-of v0, p1, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 221
    const-string v1, "Connection is not a Bluetooth connection"

    .line 220
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 223
    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    instance-of v0, p1, Lcom/intel/bluetooth/BluetoothServerConnection;

    if-nez v0, :cond_2

    .line 227
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 228
    const-string v1, "Connection is not an incomming Bluetooth connection"

    .line 227
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isTrustedDevice()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method connectionsCount()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    if-nez v0, :cond_0

    .line 149
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v0}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public encrypt(Ljavax/microedition/io/Connection;Z)Z
    .locals 6
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 259
    instance-of v0, p1, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 261
    const-string v1, "Connection is not a Bluetooth connection"

    .line 260
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 263
    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getRemoteAddress()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 265
    const-string v1, "Connection is not to this device"

    .line 264
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p1

    .line 267
    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getSecurityOpt()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    if-ne v0, p2, :cond_3

    move v0, v1

    .line 270
    .end local p1    # "conn":Ljavax/microedition/io/Connection;
    :goto_1
    return v0

    .line 267
    .restart local p1    # "conn":Ljavax/microedition/io/Connection;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 270
    :cond_3
    check-cast p1, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    .end local p1    # "conn":Ljavax/microedition/io/Connection;
    iget-wide v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    invoke-interface {p1, v0, v1, p2}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->encrypt(JZ)Z

    move-result v0

    goto :goto_1
.end method

.method hasConnections()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connectionsCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 281
    const-string v4, "no connections, Authenticated = false"

    invoke-static {v4}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;)V

    .line 300
    :goto_0
    return v3

    .line 284
    :cond_0
    iget-object v4, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    .line 285
    iget-wide v5, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    invoke-interface {v4, v5, v6}, Lcom/intel/bluetooth/BluetoothStack;->isRemoteDeviceAuthenticated(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 286
    .local v0, "authenticated":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 287
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 289
    :cond_1
    iget-object v4, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    monitor-enter v4

    .line 291
    :try_start_0
    iget-object v5, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v5}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 292
    .local v2, "en":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    .line 291
    if-nez v5, :cond_3

    .line 289
    monitor-exit v4

    goto :goto_0

    .end local v2    # "en":Ljava/util/Enumeration;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 294
    .restart local v2    # "en":Ljava/util/Enumeration;
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    .line 295
    .local v1, "c":Lcom/intel/bluetooth/BluetoothConnectionAccess;
    invoke-interface {v1}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getSecurityOpt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 296
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isAuthorized(Ljavax/microedition/io/Connection;)Z
    .locals 2
    .param p1, "conn"    # Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    instance-of v0, p1, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 240
    const-string v1, "Connection is not a Bluetooth connection"

    .line 239
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p1

    .line 242
    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Connection is already closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    instance-of v0, p1, Lcom/intel/bluetooth/BluetoothServerConnection;

    if-nez v0, :cond_2

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 247
    const-string v1, "Connection is not an incomming Bluetooth connection"

    .line 246
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->isTrustedDevice()Z

    move-result v0

    return v0
.end method

.method public isEncrypted()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 309
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->hasConnections()Z

    move-result v3

    if-nez v3, :cond_0

    .line 323
    :goto_0
    return v2

    .line 312
    :cond_0
    iget-object v3, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    monitor-enter v3

    .line 314
    :try_start_0
    iget-object v4, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v4}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 315
    .local v1, "en":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    .line 314
    if-nez v4, :cond_2

    .line 312
    monitor-exit v3

    goto :goto_0

    .end local v1    # "en":Ljava/util/Enumeration;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 317
    .restart local v1    # "en":Ljava/util/Enumeration;
    :cond_2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    .line 318
    .local v0, "c":Lcom/intel/bluetooth/BluetoothConnectionAccess;
    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->getSecurityOpt()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 319
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isTrustedDevice()Z
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v2, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    invoke-interface {v1, v2, v3}, Lcom/intel/bluetooth/BluetoothStack;->isRemoteDeviceTrusted(J)Ljava/lang/Boolean;

    move-result-object v0

    .line 333
    .local v0, "trusted":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 334
    iget-boolean v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->paired:Z

    .line 336
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method removeAuthentication()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->bluetoothStack:Lcom/intel/bluetooth/BluetoothStack;

    iget-wide v1, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->addressLong:J

    invoke-interface {v0, v1, v2}, Lcom/intel/bluetooth/BluetoothStack;->removeAuthenticationWithRemoteDevice(J)V

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->paired:Z

    .line 196
    return-void
.end method

.method shutdownConnections()V
    .locals 6

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->hasConnections()Z

    move-result v4

    if-nez v4, :cond_0

    .line 123
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 108
    .local v1, "c2shutdown":Ljava/util/Vector;
    iget-object v5, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    monitor-enter v5

    .line 109
    :try_start_0
    iget-object v4, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v4}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Lcom/intel/bluetooth/Utils;->clone(Ljava/util/Enumeration;)Ljava/util/Vector;

    move-result-object v1

    .line 108
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_1

    .line 120
    iget-object v5, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    monitor-enter v5

    .line 121
    :try_start_1
    iget-object v4, p0, Lcom/intel/bluetooth/RemoteDeviceHelper$RemoteDeviceWithExtendedInfo;->connections:Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;

    invoke-interface {v4}, Lcom/intel/bluetooth/WeakVectorFactory$WeakVector;->removeAllElements()V

    .line 120
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 108
    .end local v3    # "en":Ljava/util/Enumeration;
    :catchall_1
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 113
    .restart local v3    # "en":Ljava/util/Enumeration;
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionAccess;

    .line 115
    .local v0, "c":Lcom/intel/bluetooth/BluetoothConnectionAccess;
    :try_start_3
    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionAccess;->shutdown()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "connection shutdown"

    invoke-static {v4, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Ljavax/bluetooth/RemoteDevice;->getBluetoothAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
