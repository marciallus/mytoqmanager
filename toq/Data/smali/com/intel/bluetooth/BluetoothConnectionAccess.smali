.class public interface abstract Lcom/intel/bluetooth/BluetoothConnectionAccess;
.super Ljava/lang/Object;
.source "BluetoothConnectionAccess.java"


# virtual methods
.method public abstract encrypt(JZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBluetoothStack()Lcom/intel/bluetooth/BluetoothStack;
.end method

.method public abstract getRemoteAddress()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getRemoteDevice()Ljavax/bluetooth/RemoteDevice;
.end method

.method public abstract getSecurityOpt()I
.end method

.method public abstract isClosed()Z
.end method

.method public abstract markAuthenticated()V
.end method

.method public abstract setRemoteDevice(Ljavax/bluetooth/RemoteDevice;)V
.end method

.method public abstract shutdown()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
