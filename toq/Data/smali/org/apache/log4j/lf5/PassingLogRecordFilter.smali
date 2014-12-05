.class public Lorg/apache/log4j/lf5/PassingLogRecordFilter;
.super Ljava/lang/Object;
.source "PassingLogRecordFilter.java"

# interfaces
.implements Lorg/apache/log4j/lf5/LogRecordFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public passes(Lorg/apache/log4j/lf5/LogRecord;)Z
    .locals 1
    .param p1, "record"    # Lorg/apache/log4j/lf5/LogRecord;

    .prologue
    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method
