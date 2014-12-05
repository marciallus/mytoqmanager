.class public Lcom/intel/bluetooth/NotImplementedError;
.super Ljava/lang/Error;
.source "NotImplementedError.java"


# static fields
.field public static final enabled:Z = true

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "Not Implemented"

    invoke-direct {p0, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method
