.class public abstract Lorg/apache/log4j/Layout;
.super Ljava/lang/Object;
.source "Layout.java"

# interfaces
.implements Lorg/apache/log4j/spi/OptionHandler;


# static fields
.field public static final LINE_SEP:Ljava/lang/String;

.field public static final LINE_SEP_LEN:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    .line 35
    sget-object v0, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lorg/apache/log4j/Layout;->LINE_SEP_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const-string v0, "text/plain"

    return-object v0
.end method

.method public getFooter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract ignoresThrowable()Z
.end method
