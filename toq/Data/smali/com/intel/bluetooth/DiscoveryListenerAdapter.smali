.class Lcom/intel/bluetooth/DiscoveryListenerAdapter;
.super Ljava/lang/Object;
.source "DiscoveryListenerAdapter.java"

# interfaces
.implements Ljavax/bluetooth/DiscoveryListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V
    .locals 0
    .param p1, "btDevice"    # Ljavax/bluetooth/RemoteDevice;
    .param p2, "cod"    # Ljavax/bluetooth/DeviceClass;

    .prologue
    .line 45
    return-void
.end method

.method public inquiryCompleted(I)V
    .locals 3
    .param p1, "discType"    # I

    .prologue
    .line 53
    const-string v0, "inquiryCompleted"

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 54
    return-void
.end method

.method public serviceSearchCompleted(II)V
    .locals 3
    .param p1, "transID"    # I
    .param p2, "respCode"    # I

    .prologue
    .line 62
    const-string v0, "serviceSearchCompleted"

    int-to-long v1, p2

    invoke-static {v0, v1, v2}, Lcom/intel/bluetooth/DebugLog;->debug(Ljava/lang/String;J)V

    .line 63
    return-void
.end method

.method public servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V
    .locals 0
    .param p1, "transID"    # I
    .param p2, "servRecord"    # [Ljavax/bluetooth/ServiceRecord;

    .prologue
    .line 72
    return-void
.end method
