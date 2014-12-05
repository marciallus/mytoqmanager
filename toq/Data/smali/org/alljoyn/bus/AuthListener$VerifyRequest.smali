.class public Lorg/alljoyn/bus/AuthListener$VerifyRequest;
.super Lorg/alljoyn/bus/AuthListener$AuthRequest;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifyRequest"
.end annotation


# instance fields
.field private certificateChain:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/alljoyn/bus/AuthListener$AuthRequest;-><init>(Lorg/alljoyn/bus/AuthListener$1;)V

    .line 214
    iput-object p1, p0, Lorg/alljoyn/bus/AuthListener$VerifyRequest;->certificateChain:Ljava/lang/String;

    .line 215
    return-void
.end method


# virtual methods
.method public getCertificateChain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lorg/alljoyn/bus/AuthListener$VerifyRequest;->certificateChain:Ljava/lang/String;

    return-object v0
.end method
