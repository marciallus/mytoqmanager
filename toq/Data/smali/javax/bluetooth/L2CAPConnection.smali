.class public interface abstract Ljavax/bluetooth/L2CAPConnection;
.super Ljava/lang/Object;
.source "L2CAPConnection.java"

# interfaces
.implements Ljavax/microedition/io/Connection;


# static fields
.field public static final DEFAULT_MTU:I = 0x2a0

.field public static final MINIMUM_MTU:I = 0x30


# virtual methods
.method public abstract getReceiveMTU()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getTransmitMTU()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract ready()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract receive([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
