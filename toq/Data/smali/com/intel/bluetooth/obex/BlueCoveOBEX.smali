.class public abstract Lcom/intel/bluetooth/obex/BlueCoveOBEX;
.super Ljava/lang/Object;
.source "BlueCoveOBEX.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getPacketSize(Ljavax/microedition/io/Connection;)I
    .locals 3
    .param p0, "c"    # Ljavax/microedition/io/Connection;

    .prologue
    .line 49
    instance-of v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;

    if-eqz v0, :cond_0

    .line 50
    check-cast p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;

    .end local p0    # "c":Ljavax/microedition/io/Connection;
    invoke-virtual {p0}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->getPacketSize()I

    move-result v0

    return v0

    .line 52
    .restart local p0    # "c":Ljavax/microedition/io/Connection;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a BlueCove OBEX Session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static obexResponseCodes(I)Ljava/lang/String;
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 84
    invoke-static {p0}, Lcom/intel/bluetooth/obex/OBEXUtils;->toStringObexResponseCodes(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setPacketSize(Ljavax/microedition/io/Connection;I)V
    .locals 3
    .param p0, "c"    # Ljavax/microedition/io/Connection;
    .param p1, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    instance-of v0, p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;

    if-eqz v0, :cond_0

    .line 69
    check-cast p0, Lcom/intel/bluetooth/obex/OBEXSessionBase;

    .end local p0    # "c":Ljavax/microedition/io/Connection;
    invoke-virtual {p0, p1}, Lcom/intel/bluetooth/obex/OBEXSessionBase;->setPacketSize(I)V

    .line 74
    return-void

    .line 71
    .restart local p0    # "c":Ljavax/microedition/io/Connection;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not a BlueCove OBEX Session "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
