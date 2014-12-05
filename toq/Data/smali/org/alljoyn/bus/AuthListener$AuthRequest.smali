.class public Lorg/alljoyn/bus/AuthListener$AuthRequest;
.super Ljava/lang/Object;
.source "AuthListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/AuthListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthRequest"
.end annotation


# instance fields
.field protected credentials:Lorg/alljoyn/bus/AuthListener$Credentials;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/alljoyn/bus/AuthListener$1;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/alljoyn/bus/AuthListener$AuthRequest;-><init>()V

    return-void
.end method
