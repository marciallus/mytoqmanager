.class public Lorg/alljoyn/bus/AuthListener$PrivateKeyRequest;
.super Lorg/alljoyn/bus/AuthListener$AuthRequest;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateKeyRequest"
.end annotation


# direct methods
.method constructor <init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/AuthListener$AuthRequest;-><init>(Lorg/alljoyn/bus/AuthListener$1;)V

    .line 148
    iput-object p1, p0, Lorg/alljoyn/bus/AuthListener$PrivateKeyRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    .line 149
    return-void
.end method


# virtual methods
.method public setPrivateKey(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lorg/alljoyn/bus/AuthListener$PrivateKeyRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    iput-object p1, v0, Lorg/alljoyn/bus/AuthListener$Credentials;->privateKey:Ljava/lang/String;

    .line 159
    return-void
.end method
