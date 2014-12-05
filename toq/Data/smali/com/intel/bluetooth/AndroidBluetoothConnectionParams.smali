.class Lcom/intel/bluetooth/AndroidBluetoothConnectionParams;
.super Lcom/intel/bluetooth/BluetoothConnectionParams;
.source "AndroidBluetoothConnectionParams.java"


# instance fields
.field serviceUUID:Ljava/lang/String;


# direct methods
.method public constructor <init>(JZZ)V
    .locals 6
    .param p1, "address"    # J
    .param p3, "authenticate"    # Z
    .param p4, "encrypt"    # Z

    .prologue
    .line 36
    const/4 v3, -0x1

    move-object v0, p0

    move-wide v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/intel/bluetooth/BluetoothConnectionParams;-><init>(JIZZ)V

    .line 37
    return-void
.end method


# virtual methods
.method public setServiceUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceUUID"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/intel/bluetooth/AndroidBluetoothConnectionParams;->serviceUUID:Ljava/lang/String;

    .line 41
    return-void
.end method
