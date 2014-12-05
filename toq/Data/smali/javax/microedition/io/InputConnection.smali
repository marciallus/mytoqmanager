.class public interface abstract Ljavax/microedition/io/InputConnection;
.super Ljava/lang/Object;
.source "InputConnection.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# virtual methods
.method public abstract openDataInputStream()Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
