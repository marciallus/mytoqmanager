.class public Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;
.super Ljava/lang/Object;
.source "OBEXSessionNotifierImpl.java"

# interfaces
.implements Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;
.implements Ljavax/obex/SessionNotifier;


# static fields
.field private static final FQCN:Ljava/lang/String;

.field private static final fqcnSet:Ljava/util/Vector;


# instance fields
.field private notifier:Ljavax/microedition/io/StreamConnectionNotifier;

.field private obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->FQCN:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->fqcnSet:Ljava/util/Vector;

    .line 63
    sget-object v0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->fqcnSet:Ljava/util/Vector;

    sget-object v1, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->FQCN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljavax/microedition/io/StreamConnectionNotifier;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V
    .locals 1
    .param p1, "notifier"    # Ljavax/microedition/io/StreamConnectionNotifier;
    .param p2, "obexConnectionParams"    # Lcom/intel/bluetooth/obex/OBEXConnectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Error;
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->fqcnSet:Ljava/util/Vector;

    invoke-static {v0}, Lcom/intel/bluetooth/Utils;->isLegalAPICall(Ljava/util/Vector;)V

    .line 76
    iput-object p1, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    .line 77
    iput-object p2, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    .line 78
    return-void
.end method


# virtual methods
.method public acceptAndOpen(Ljavax/obex/ServerRequestHandler;)Ljavax/microedition/io/Connection;
    .locals 1
    .param p1, "handler"    # Ljavax/obex/ServerRequestHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/microedition/io/Connection;
    .locals 3
    .param p1, "handler"    # Ljavax/obex/ServerRequestHandler;
    .param p2, "auth"    # Ljavax/obex/Authenticator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    if-nez v1, :cond_0

    .line 88
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Session closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 90
    :cond_0
    if-nez p1, :cond_1

    .line 91
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "handler is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_1
    new-instance v0, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;

    .line 94
    iget-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    invoke-interface {v1}, Ljavax/microedition/io/StreamConnectionNotifier;->acceptAndOpen()Ljavax/microedition/io/StreamConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->obexConnectionParams:Lcom/intel/bluetooth/obex/OBEXConnectionParams;

    .line 93
    invoke-direct {v0, v1, p1, p2, v2}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;-><init>(Ljavax/microedition/io/StreamConnection;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;Lcom/intel/bluetooth/obex/OBEXConnectionParams;)V

    .line 95
    .local v0, "sessionImpl":Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;
    invoke-virtual {v0}, Lcom/intel/bluetooth/obex/OBEXServerSessionImpl;->startSessionHandlerThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    monitor-exit p0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    .line 101
    .local v0, "n":Ljavax/microedition/io/StreamConnectionNotifier;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-interface {v0}, Ljavax/microedition/io/StreamConnectionNotifier;->close()V

    .line 105
    :cond_0
    return-void
.end method

.method public getServiceRecord()Ljavax/bluetooth/ServiceRecord;
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    instance-of v0, v0, Ljavax/microedition/io/ServerSocketConnection;

    if-eqz v0, :cond_0

    .line 115
    new-instance v1, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;

    .line 116
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    check-cast v0, Ljavax/microedition/io/ServerSocketConnection;

    .line 115
    invoke-direct {v1, v0}, Lcom/intel/bluetooth/obex/OBEXTCPServiceRecordImpl;-><init>(Ljavax/microedition/io/ServerSocketConnection;)V

    move-object v0, v1

    .line 122
    :goto_0
    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    instance-of v0, v0, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 120
    const-string v1, "connection is not a Bluetooth notifier"

    .line 119
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;

    .line 123
    invoke-interface {v0}, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;->getServiceRecord()Ljavax/bluetooth/ServiceRecord;

    move-result-object v0

    goto :goto_0
.end method

.method public updateServiceRecord(Z)V
    .locals 2
    .param p1, "acceptAndOpen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    instance-of v0, v0, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 136
    const-string v1, "connection is not a Bluetooth notifier"

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionNotifierImpl;->notifier:Ljavax/microedition/io/StreamConnectionNotifier;

    check-cast v0, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;

    .line 139
    invoke-interface {v0, p1}, Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;->updateServiceRecord(Z)V

    .line 140
    return-void
.end method
