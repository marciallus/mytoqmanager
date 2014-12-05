.class public Lorg/alljoyn/bus/AuthListener$UserNameRequest;
.super Lorg/alljoyn/bus/AuthListener$AuthRequest;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserNameRequest"
.end annotation


# direct methods
.method constructor <init>(Lorg/alljoyn/bus/AuthListener$Credentials;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/AuthListener$AuthRequest;-><init>(Lorg/alljoyn/bus/AuthListener$1;)V

    .line 113
    iput-object p1, p0, Lorg/alljoyn/bus/AuthListener$UserNameRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    .line 114
    return-void
.end method


# virtual methods
.method public setUserName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/alljoyn/bus/AuthListener$UserNameRequest;->credentials:Lorg/alljoyn/bus/AuthListener$Credentials;

    iput-object p1, v0, Lorg/alljoyn/bus/AuthListener$Credentials;->userName:Ljava/lang/String;

    .line 123
    return-void
.end method
