.class Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;
.super Ljava/lang/Object;
.source "BluetoothConnectionNotifierParams.java"


# instance fields
.field authenticate:Z

.field authorize:Z

.field bluecove_ext_psm:I

.field encrypt:Z

.field master:Z

.field name:Ljava/lang/String;

.field obex:Z

.field timeouts:Z

.field uuid:Ljavax/bluetooth/UUID;


# direct methods
.method public constructor <init>(Ljavax/bluetooth/UUID;ZZZLjava/lang/String;Z)V
    .locals 1
    .param p1, "uuid"    # Ljavax/bluetooth/UUID;
    .param p2, "authenticate"    # Z
    .param p3, "encrypt"    # Z
    .param p4, "authorize"    # Z
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "master"    # Z

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->bluecove_ext_psm:I

    .line 61
    iput-object p1, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->uuid:Ljavax/bluetooth/UUID;

    .line 62
    iput-boolean p2, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authenticate:Z

    .line 63
    iput-boolean p3, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->encrypt:Z

    .line 64
    iput-boolean p4, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->authorize:Z

    .line 65
    iput-object p5, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->name:Ljava/lang/String;

    .line 66
    iput-boolean p6, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->master:Z

    .line 67
    iput-boolean v0, p0, Lcom/intel/bluetooth/BluetoothConnectionNotifierParams;->obex:Z

    .line 68
    return-void
.end method
