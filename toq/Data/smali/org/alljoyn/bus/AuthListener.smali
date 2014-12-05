.class public interface abstract Lorg/alljoyn/bus/AuthListener;
.super Ljava/lang/Object;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/alljoyn/bus/AuthListener$1;,
        Lorg/alljoyn/bus/AuthListener$VerifyRequest;,
        Lorg/alljoyn/bus/AuthListener$ExpirationRequest;,
        Lorg/alljoyn/bus/AuthListener$LogonEntryRequest;,
        Lorg/alljoyn/bus/AuthListener$PrivateKeyRequest;,
        Lorg/alljoyn/bus/AuthListener$CertificateRequest;,
        Lorg/alljoyn/bus/AuthListener$UserNameRequest;,
        Lorg/alljoyn/bus/AuthListener$PasswordRequest;,
        Lorg/alljoyn/bus/AuthListener$AuthRequest;,
        Lorg/alljoyn/bus/AuthListener$Credentials;
    }
.end annotation


# virtual methods
.method public abstract completed(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract requested(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lorg/alljoyn/bus/AuthListener$AuthRequest;)Z
.end method
