.class public Lorg/apache/log4j/helpers/FormattingInfo;
.super Ljava/lang/Object;
.source "FormattingInfo.java"


# instance fields
.field leftAlign:Z

.field max:I

.field min:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    .line 32
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    return-void
.end method


# virtual methods
.method dump()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "min="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", leftAlign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method reset()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    .line 37
    const v0, 0x7fffffff

    iput v0, p0, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    .line 39
    return-void
.end method
