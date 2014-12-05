.class public Lorg/alljoyn/ns/nativeplatform/NativePlatformAndroid;
.super Lorg/alljoyn/ns/commons/NativePlatformAbstrImpl;
.source "NativePlatformAndroid.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/alljoyn/ns/commons/NativePlatformAbstrImpl;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method protected createLogger()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Lorg/alljoyn/ns/nativeplatform/AndroidLogger;

    invoke-direct {v0}, Lorg/alljoyn/ns/nativeplatform/AndroidLogger;-><init>()V

    iput-object v0, p0, Lorg/alljoyn/ns/nativeplatform/NativePlatformAndroid;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    .line 40
    return-void
.end method
