.class public interface abstract Ljavax/microedition/io/ServerSocketConnection;
.super Ljava/lang/Object;
.source "ServerSocketConnection.java"

# interfaces
.implements Ljavax/microedition/io/StreamConnectionNotifier;


# virtual methods
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
