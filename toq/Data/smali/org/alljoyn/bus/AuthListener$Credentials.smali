.class public Lorg/alljoyn/bus/AuthListener$Credentials;
.super Ljava/lang/Object;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Credentials"
.end annotation


# instance fields
.field certificateChain:Ljava/lang/String;

.field expiration:Ljava/lang/Integer;

.field logonEntry:[B

.field password:[B

.field privateKey:Ljava/lang/String;

.field userName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
