.class public interface abstract Ljavax/obex/SessionNotifier;
.super Ljava/lang/Object;
.source "SessionNotifier.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# virtual methods
.method public abstract acceptAndOpen(Ljavax/obex/ServerRequestHandler;)Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract acceptAndOpen(Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)Ljavax/microedition/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
