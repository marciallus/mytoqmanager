.class public interface abstract Ljavax/microedition/io/OutputConnection;
.super Ljava/lang/Object;
.source "OutputConnection.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# virtual methods
.method public abstract openDataOutputStream()Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract openOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
