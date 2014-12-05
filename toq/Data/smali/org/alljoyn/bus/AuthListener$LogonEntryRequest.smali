.class public Lorg/alljoyn/bus/AuthListener$LogonEntryRequest;
.super Lorg/alljoyn/bus/AuthListener$AuthRequest;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogonEntryRequest"
.end annotation


# direct methods
.method constructor <init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/AuthListener$AuthRequest;-><init>(Lorg/alljoyn/bus/AuthListener$1;)V

    .line 166
    iput-object p1, p0, Lorg/alljoyn/bus/AuthListener$LogonEntryRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    .line 167
    return-void
.end method


# virtual methods
.method public setLogonEntry([C)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lorg/alljoyn/bus/AuthListener$LogonEntryRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    invoke-static {p1}, Lorg/alljoyn/bus/BusAttachment;->encode([C)[B

    move-result-object v1

    iput-object v1, v0, Lorg/alljoyn/bus/AuthListener$Credentials;->logonEntry:[B

    .line 180
    return-void
.end method
