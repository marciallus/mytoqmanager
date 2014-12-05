.class public interface abstract Lcom/intel/bluetooth/BluetoothConnectionNotifierServiceRecordAccess;
.super Ljava/lang/Object;
.source "BluetoothConnectionNotifierServiceRecordAccess.java"


# virtual methods
.method public abstract getServiceRecord()Ljavax/bluetooth/ServiceRecord;
.end method

.method public abstract updateServiceRecord(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/bluetooth/ServiceRegistrationException;
        }
    .end annotation
.end method
