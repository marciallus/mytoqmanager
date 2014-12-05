.class public Lorg/alljoyn/bus/Mutable$IntegerValue;
.super Ljava/lang/Object;
.source "Mutable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/alljoyn/bus/Mutable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntegerValue"
.end annotation


# instance fields
.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    .line 62
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lorg/alljoyn/bus/Mutable$IntegerValue;->value:I

    .line 69
    return-void
.end method
