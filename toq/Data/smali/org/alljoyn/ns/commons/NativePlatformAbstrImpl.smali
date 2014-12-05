.class public abstract Lorg/alljoyn/ns/commons/NativePlatformAbstrImpl;
.super Ljava/lang/Object;
.source "NativePlatformAbstrImpl.java"

# interfaces
.implements Lorg/alljoyn/ns/commons/NativePlatform;


# instance fields
.field protected logger:Lorg/alljoyn/ns/commons/GenericLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-virtual {p0}, Lorg/alljoyn/ns/commons/NativePlatformAbstrImpl;->createLogger()V

    .line 34
    return-void
.end method


# virtual methods
.method protected abstract createLogger()V
.end method

.method public getNativeLogger()Lorg/alljoyn/ns/commons/GenericLogger;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/alljoyn/ns/commons/NativePlatformAbstrImpl;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    return-object v0
.end method

.method public setNativeLogger(Lorg/alljoyn/ns/commons/GenericLogger;)V
    .locals 0
    .param p1, "logger"    # Lorg/alljoyn/ns/commons/GenericLogger;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/alljoyn/ns/commons/NativePlatformAbstrImpl;->logger:Lorg/alljoyn/ns/commons/GenericLogger;

    .line 55
    return-void
.end method
