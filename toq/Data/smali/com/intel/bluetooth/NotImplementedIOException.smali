.class public Lcom/intel/bluetooth/NotImplementedIOException;
.super Ljava/io/IOException;
.source "NotImplementedIOException.java"


# static fields
.field public static final enabled:Z = true

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "Not Implemented"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
