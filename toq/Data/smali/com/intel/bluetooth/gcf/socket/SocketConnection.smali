.class public Lcom/intel/bluetooth/gcf/socket/SocketConnection;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Ljavax/microedition/io/SocketConnection;


# instance fields
.field protected socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 0
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 166
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method public getPort()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0
.end method

.method public getSocketOption(B)I
    .locals 3
    .param p1, "option"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 86
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 111
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 88
    :pswitch_0
    iget-object v2, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getTcpNoDelay()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 91
    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v2, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoLinger()I

    move-result v0

    .line 95
    .local v0, "value":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    move v0, v1

    .line 96
    goto :goto_0

    .line 101
    .end local v0    # "value":I
    :pswitch_2
    iget-object v2, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getKeepAlive()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 104
    goto :goto_0

    .line 107
    :pswitch_3
    iget-object v1, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getReceiveBufferSize()I

    move-result v0

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v1, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I

    move-result v0

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openDataInputStream()Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public openDataOutputStream()Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-virtual {p0}, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public openInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setSocketOption(BI)V
    .locals 5
    .param p1, "option"    # B
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 117
    iget-object v4, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 120
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 158
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 123
    :pswitch_0
    if-nez p2, :cond_1

    .line 124
    const/4 v0, 0x0

    .line 128
    .local v0, "delay":I
    :goto_0
    iget-object v4, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 160
    .end local v0    # "delay":I
    :goto_2
    return-void

    .line 126
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "delay":I
    goto :goto_0

    :cond_2
    move v2, v3

    .line 128
    goto :goto_1

    .line 131
    .end local v0    # "delay":I
    :pswitch_1
    if-gez p2, :cond_3

    .line 132
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 134
    :cond_3
    iget-object v4, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-nez p2, :cond_4

    :goto_3
    invoke-virtual {v4, v2, p2}, Ljava/net/Socket;->setSoLinger(ZI)V

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    .line 138
    :pswitch_2
    if-nez p2, :cond_5

    .line 139
    const/4 v1, 0x0

    .line 143
    .local v1, "keepalive":I
    :goto_4
    iget-object v4, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    if-nez v1, :cond_6

    :goto_5
    invoke-virtual {v4, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    goto :goto_2

    .line 141
    .end local v1    # "keepalive":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "keepalive":I
    goto :goto_4

    :cond_6
    move v2, v3

    .line 143
    goto :goto_5

    .line 146
    .end local v1    # "keepalive":I
    :pswitch_3
    if-gtz p2, :cond_7

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 149
    :cond_7
    iget-object v2, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    goto :goto_2

    .line 152
    :pswitch_4
    if-gtz p2, :cond_8

    .line 153
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 155
    :cond_8
    iget-object v2, p0, Lcom/intel/bluetooth/gcf/socket/SocketConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSendBufferSize(I)V

    goto :goto_2

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
