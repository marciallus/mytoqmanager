.class Lcom/intel/bluetooth/BluetoothConnectionParams;
.super Ljava/lang/Object;
.source "BluetoothConnectionParams.java"


# static fields
.field public static final DEFAULT_CONNECT_TIMEOUT:I = 0x1d4c0


# instance fields
.field address:J

.field authenticate:Z

.field channel:I

.field encrypt:Z

.field public timeout:I

.field timeouts:Z


# direct methods
.method public constructor <init>(JIZZ)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "channel"    # I
    .param p4, "authenticate"    # Z
    .param p5, "encrypt"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const v0, 0x1d4c0

    iput v0, p0, Lcom/intel/bluetooth/BluetoothConnectionParams;->timeout:I

    .line 63
    iput-wide p1, p0, Lcom/intel/bluetooth/BluetoothConnectionParams;->address:J

    .line 64
    iput p3, p0, Lcom/intel/bluetooth/BluetoothConnectionParams;->channel:I

    .line 65
    iput-boolean p4, p0, Lcom/intel/bluetooth/BluetoothConnectionParams;->authenticate:Z

    .line 66
    iput-boolean p5, p0, Lcom/intel/bluetooth/BluetoothConnectionParams;->encrypt:Z

    .line 67
    return-void
.end method
