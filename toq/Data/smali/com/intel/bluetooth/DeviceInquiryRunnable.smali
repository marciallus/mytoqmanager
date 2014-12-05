.class interface abstract Lcom/intel/bluetooth/DeviceInquiryRunnable;
.super Ljava/lang/Object;
.source "DeviceInquiryRunnable.java"


# virtual methods
.method public abstract deviceDiscoveredCallback(Ljavax/bluetooth/DiscoveryListener;JILjava/lang/String;Z)V
.end method

.method public abstract runDeviceInquiry(Lcom/intel/bluetooth/DeviceInquiryThread;ILjavax/bluetooth/DiscoveryListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/BluetoothStateException;
        }
    .end annotation
.end method
