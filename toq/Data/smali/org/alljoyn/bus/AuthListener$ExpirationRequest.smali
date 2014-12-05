.class public Lorg/alljoyn/bus/AuthListener$ExpirationRequest;
.super Lorg/alljoyn/bus/AuthListener$AuthRequest;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpirationRequest"
.end annotation


# direct methods
.method constructor <init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/AuthListener$AuthRequest;-><init>(Lorg/alljoyn/bus/AuthListener$1;)V

    .line 187
    iput-object p1, p0, Lorg/alljoyn/bus/AuthListener$ExpirationRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    .line 188
    return-void
.end method


# virtual methods
.method public setExpiration(I)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lorg/alljoyn/bus/AuthListener$ExpirationRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lorg/alljoyn/bus/AuthListener$Credentials;->expiration:Ljava/lang/Integer;

    .line 203
    return-void
.end method
