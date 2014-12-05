.class Lcom/intel/bluetooth/NativeTestInterfaces;
.super Ljava/lang/Object;
.source "NativeTestInterfaces.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static loadDllMS()Z
    .locals 1

    .prologue
    .line 35
    const-string v0, "intelbth"

    invoke-static {v0}, Lcom/intel/bluetooth/NativeLibLoader;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static loadDllWIDCOMM()Z
    .locals 1

    .prologue
    .line 39
    const-string v0, "bluecove"

    invoke-static {v0}, Lcom/intel/bluetooth/NativeLibLoader;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static native testDebug(ILjava/lang/String;)V
.end method

.method static native testOsXDataElementConversion(IIJ[B)[B
.end method

.method static native testOsXRunnableLoop(II)V
.end method

.method static native testReceiveBufferAvailable(J)I
.end method

.method static native testReceiveBufferClose(J)V
.end method

.method static native testReceiveBufferCreate(I)J
.end method

.method static native testReceiveBufferIsCorrupted(J)Z
.end method

.method static native testReceiveBufferIsOverflown(J)Z
.end method

.method static native testReceiveBufferRead(J)I
.end method

.method static native testReceiveBufferRead(J[B)I
.end method

.method static native testReceiveBufferSkip(JI)I
.end method

.method static native testReceiveBufferWrite(J[B)I
.end method

.method static native testThrowException(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method static native testUUIDConversion([B)[B
.end method

.method static native testWIDCOMMConstants()Z
.end method
