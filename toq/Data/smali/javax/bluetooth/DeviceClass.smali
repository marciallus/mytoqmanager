.class public Ljavax/bluetooth/DeviceClass;
.super Ljava/lang/Object;
.source "DeviceClass.java"


# static fields
.field private static final MAJOR_MASK:I = 0x1f00

.field private static final MINOR_MASK:I = 0xfc

.field private static final SERVICE_MASK:I = 0xffe000


# instance fields
.field private record:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "record"    # I

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const-string v0, "new DeviceClass"

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 107
    iput p1, p0, Ljavax/bluetooth/DeviceClass;->record:I

    .line 109
    const/high16 v0, -0x1000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public getMajorDeviceClass()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Ljavax/bluetooth/DeviceClass;->record:I

    and-int/lit16 v0, v0, 0x1f00

    return v0
.end method

.method public getMinorDeviceClass()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Ljavax/bluetooth/DeviceClass;->record:I

    and-int/lit16 v0, v0, 0xfc

    return v0
.end method

.method public getServiceClasses()I
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Ljavax/bluetooth/DeviceClass;->record:I

    const v1, 0xffe000

    and-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-static {p0}, Lcom/intel/bluetooth/BluetoothConsts;->toString(Ljavax/bluetooth/DeviceClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
