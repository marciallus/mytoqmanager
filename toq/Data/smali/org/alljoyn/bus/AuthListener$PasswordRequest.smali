.class public Lorg/alljoyn/bus/AuthListener$PasswordRequest;
.super Lorg/alljoyn/bus/AuthListener$AuthRequest;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordRequest"
.end annotation


# instance fields
.field private isNew:Z

.field private isOneTime:Z


# direct methods
.method constructor <init>(Lorg/alljoyn/bus/AuthListener$Credentials;ZZ)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/AuthListener$AuthRequest;-><init>(Lorg/alljoyn/bus/AuthListener$1;)V

    .line 76
    iput-object p1, p0, Lorg/alljoyn/bus/AuthListener$PasswordRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    .line 77
    iput-boolean p2, p0, Lorg/alljoyn/bus/AuthListener$PasswordRequest;->isNew:Z

    .line 78
    iput-boolean p3, p0, Lorg/alljoyn/bus/AuthListener$PasswordRequest;->isOneTime:Z

    .line 79
    return-void
.end method


# virtual methods
.method public isNewPassword()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/alljoyn/bus/AuthListener$PasswordRequest;->isNew:Z

    return v0
.end method

.method public isOneTimePassword()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lorg/alljoyn/bus/AuthListener$PasswordRequest;->isOneTime:Z

    return v0
.end method

.method public setPassword([C)V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/alljoyn/bus/AuthListener$PasswordRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    invoke-static {p1}, Lorg/alljoyn/bus/BusAttachment;->encode([C)[B

    move-result-object v1

    iput-object v1, v0, Lorg/alljoyn/bus/AuthListener$Credentials;->password:[B

    .line 106
    return-void
.end method
