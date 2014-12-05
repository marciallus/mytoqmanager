.class public Lcom/intel/bluetooth/AndroidBluetoothConnection;
.super Ljava/lang/Object;
.source "AndroidBluetoothConnection.java"


# static fields
.field private static connectionsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/intel/bluetooth/AndroidBluetoothConnection;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile nextHandle:J


# instance fields
.field private handle:J

.field private inputStream:Ljava/io/InputStream;

.field private outputStream:Ljava/io/OutputStream;

.field private serverSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private socket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->connectionsMap:Ljava/util/Map;

    .line 39
    return-void
.end method

.method private constructor <init>(JLandroid/bluetooth/BluetoothServerSocket;)V
    .locals 0
    .param p1, "handle"    # J
    .param p3, "serverSocket"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-wide p1, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->handle:J

    .line 68
    iput-object p3, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 69
    return-void
.end method

.method private constructor <init>(JLandroid/bluetooth/BluetoothSocket;Z)V
    .locals 1
    .param p1, "handle"    # J
    .param p3, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p4, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->handle:J

    .line 57
    iput-object p3, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    .line 58
    if-nez p4, :cond_0

    .line 59
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 61
    :cond_0
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->inputStream:Ljava/io/InputStream;

    .line 62
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->outputStream:Ljava/io/OutputStream;

    .line 63
    return-void
.end method

.method public static declared-synchronized createConnection(Landroid/bluetooth/BluetoothSocket;Z)Lcom/intel/bluetooth/AndroidBluetoothConnection;
    .locals 7
    .param p0, "socket"    # Landroid/bluetooth/BluetoothSocket;
    .param p1, "isServer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const-class v2, Lcom/intel/bluetooth/AndroidBluetoothConnection;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/intel/bluetooth/AndroidBluetoothConnection;

    .line 74
    sget-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J

    .line 73
    invoke-direct {v0, v3, v4, p0, p1}, Lcom/intel/bluetooth/AndroidBluetoothConnection;-><init>(JLandroid/bluetooth/BluetoothSocket;Z)V

    .line 75
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    sget-object v1, Lcom/intel/bluetooth/AndroidBluetoothConnection;->connectionsMap:Ljava/util/Map;

    sget-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit v2

    return-object v0

    .line 73
    .end local v0    # "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized createServerConnection(Landroid/bluetooth/BluetoothServerSocket;)Lcom/intel/bluetooth/AndroidBluetoothConnection;
    .locals 7
    .param p0, "serverSocket"    # Landroid/bluetooth/BluetoothServerSocket;

    .prologue
    .line 84
    const-class v2, Lcom/intel/bluetooth/AndroidBluetoothConnection;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/intel/bluetooth/AndroidBluetoothConnection;

    .line 85
    sget-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J

    .line 84
    invoke-direct {v0, v3, v4, p0}, Lcom/intel/bluetooth/AndroidBluetoothConnection;-><init>(JLandroid/bluetooth/BluetoothServerSocket;)V

    .line 86
    .local v0, "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    sget-object v1, Lcom/intel/bluetooth/AndroidBluetoothConnection;->connectionsMap:Ljava/util/Map;

    sget-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    sput-wide v3, Lcom/intel/bluetooth/AndroidBluetoothConnection;->nextHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit v2

    return-object v0

    .line 84
    .end local v0    # "bluetoothConnection":Lcom/intel/bluetooth/AndroidBluetoothConnection;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static getBluetoothConnection(J)Lcom/intel/bluetooth/AndroidBluetoothConnection;
    .locals 2
    .param p0, "handle"    # J

    .prologue
    .line 94
    sget-object v0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->connectionsMap:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/intel/bluetooth/AndroidBluetoothConnection;

    return-object v0
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
    .line 118
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->outputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 130
    :cond_3
    sget-object v0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->connectionsMap:Ljava/util/Map;

    iget-wide v1, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->handle:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public getHandle()J
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->handle:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public getServerSocket()Landroid/bluetooth/BluetoothServerSocket;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->serverSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method public getSocket()Landroid/bluetooth/BluetoothSocket;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/intel/bluetooth/AndroidBluetoothConnection;->socket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method
