.class public interface abstract Ljavax/microedition/io/SocketConnection;
.super Ljava/lang/Object;
.source "SocketConnection.java"

# interfaces
.implements Ljavax/microedition/io/StreamConnection;


# static fields
.field public static final DELAY:B = 0x0t

.field public static final KEEPALIVE:B = 0x2t

.field public static final LINGER:B = 0x1t

.field public static final RCVBUF:B = 0x3t

.field public static final SNDBUF:B = 0x4t


# virtual methods
.method public abstract getAddress()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLocalAddress()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLocalPort()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPort()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSocketOption(B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setSocketOption(BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
