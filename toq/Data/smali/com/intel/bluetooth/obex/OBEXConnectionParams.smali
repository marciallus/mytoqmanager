.class public Lcom/intel/bluetooth/obex/OBEXConnectionParams;
.super Ljava/lang/Object;
.source "OBEXConnectionParams.java"


# static fields
.field public static final DEFAULT_TIMEOUT:I = 0x1d4c0

.field public static final OBEX_DEFAULT_MTU:I = 0x400


# instance fields
.field public mtu:I

.field public timeout:I

.field public timeouts:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const v0, 0x1d4c0

    iput v0, p0, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->timeout:I

    .line 58
    const/16 v0, 0x400

    iput v0, p0, Lcom/intel/bluetooth/obex/OBEXConnectionParams;->mtu:I

    .line 30
    return-void
.end method
