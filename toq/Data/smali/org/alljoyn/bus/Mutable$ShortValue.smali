.class public Lorg/alljoyn/bus/Mutable$ShortValue;
.super Ljava/lang/Object;
.source "Mutable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/Mutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortValue"
.end annotation


# instance fields
.field public value:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-short v0, p0, Lorg/alljoyn/bus/Mutable$ShortValue;->value:S

    .line 86
    return-void
.end method

.method public constructor <init>(S)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-short p1, p0, Lorg/alljoyn/bus/Mutable$ShortValue;->value:S

    .line 93
    return-void
.end method
