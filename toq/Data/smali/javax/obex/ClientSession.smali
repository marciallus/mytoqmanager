.class public interface abstract Ljavax/obex/ClientSession;
.super Ljava/lang/Object;
.source "ClientSession.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# virtual methods
.method public abstract connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract createHeaderSet()Ljavax/obex/HeaderSet;
.end method

.method public abstract delete(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract get(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getConnectionID()J
.end method

.method public abstract put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAuthenticator(Ljavax/obex/Authenticator;)V
.end method

.method public abstract setConnectionID(J)V
.end method

.method public abstract setPath(Ljavax/obex/HeaderSet;ZZ)Ljavax/obex/HeaderSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
