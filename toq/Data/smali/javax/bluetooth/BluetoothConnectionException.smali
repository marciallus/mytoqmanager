.class public Ljavax/bluetooth/BluetoothConnectionException;
.super Ljava/io/IOException;
.source "BluetoothConnectionException.java"


# static fields
.field public static final FAILED_NOINFO:I = 0x4

.field public static final NO_RESOURCES:I = 0x3

.field public static final SECURITY_BLOCK:I = 0x2

.field public static final TIMEOUT:I = 0x5

.field public static final UNACCEPTABLE_PARAMS:I = 0x6

.field public static final UNKNOWN_PSM:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 103
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 106
    :cond_1
    iput p1, p0, Ljavax/bluetooth/BluetoothConnectionException;->errorCode:I

    .line 107
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 123
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x6

    if-le p1, v0, :cond_1

    .line 124
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 126
    :cond_1
    iput p1, p0, Ljavax/bluetooth/BluetoothConnectionException;->errorCode:I

    .line 127
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Ljavax/bluetooth/BluetoothConnectionException;->errorCode:I

    return v0
.end method
