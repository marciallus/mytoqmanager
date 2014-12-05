.class public interface abstract Ljavax/bluetooth/ServiceRecord;
.super Ljava/lang/Object;
.source "ServiceRecord.java"


# static fields
.field public static final AUTHENTICATE_ENCRYPT:I = 0x2

.field public static final AUTHENTICATE_NOENCRYPT:I = 0x1

.field public static final NOAUTHENTICATE_NOENCRYPT:I


# virtual methods
.method public abstract getAttributeIDs()[I
.end method

.method public abstract getAttributeValue(I)Ljavax/bluetooth/DataElement;
.end method

.method public abstract getConnectionURL(IZ)Ljava/lang/String;
.end method

.method public abstract getHostDevice()Ljavax/bluetooth/RemoteDevice;
.end method

.method public abstract populateRecord([I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setAttributeValue(ILjavax/bluetooth/DataElement;)Z
.end method

.method public abstract setDeviceServiceClasses(I)V
.end method
