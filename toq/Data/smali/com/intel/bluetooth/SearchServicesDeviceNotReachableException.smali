.class Lcom/intel/bluetooth/SearchServicesDeviceNotReachableException;
.super Lcom/intel/bluetooth/SearchServicesException;
.source "SearchServicesDeviceNotReachableException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/intel/bluetooth/SearchServicesException;-><init>()V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/intel/bluetooth/SearchServicesException;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method
