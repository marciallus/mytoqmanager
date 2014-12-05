.class Lcom/intel/bluetooth/SearchServicesTerminatedException;
.super Lcom/intel/bluetooth/SearchServicesException;
.source "SearchServicesTerminatedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/intel/bluetooth/SearchServicesException;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/SearchServicesException;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method
