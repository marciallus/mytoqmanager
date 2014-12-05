.class public interface abstract Ljavax/bluetooth/DiscoveryListener;
.super Ljava/lang/Object;
.source "DiscoveryListener.java"


# static fields
.field public static final INQUIRY_COMPLETED:I = 0x0

.field public static final INQUIRY_ERROR:I = 0x7

.field public static final INQUIRY_TERMINATED:I = 0x5

.field public static final SERVICE_SEARCH_COMPLETED:I = 0x1

.field public static final SERVICE_SEARCH_DEVICE_NOT_REACHABLE:I = 0x6

.field public static final SERVICE_SEARCH_ERROR:I = 0x3

.field public static final SERVICE_SEARCH_NO_RECORDS:I = 0x4

.field public static final SERVICE_SEARCH_TERMINATED:I = 0x2


# virtual methods
.method public abstract deviceDiscovered(Ljavax/bluetooth/RemoteDevice;Ljavax/bluetooth/DeviceClass;)V
.end method

.method public abstract inquiryCompleted(I)V
.end method

.method public abstract serviceSearchCompleted(II)V
.end method

.method public abstract servicesDiscovered(I[Ljavax/bluetooth/ServiceRecord;)V
.end method
