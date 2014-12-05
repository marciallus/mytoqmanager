.class public Lorg/apache/log4j/lf5/util/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# instance fields
.field protected _name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/Resource;->_name:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 105
    invoke-static {p0, p0}, Lorg/apache/log4j/lf5/util/ResourceUtils;->getResourceAsStream(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/io/InputStream;

    move-result-object v0

    .line 107
    .local v0, "in":Ljava/io/InputStream;
    return-object v0
.end method

.method public getInputStreamReader()Ljava/io/InputStreamReader;
    .locals 2

    .prologue
    .line 118
    invoke-static {p0, p0}, Lorg/apache/log4j/lf5/util/ResourceUtils;->getResourceAsStream(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/io/InputStream;

    move-result-object v0

    .line 120
    .local v0, "in":Ljava/io/InputStream;
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 126
    :goto_0
    return-object v1

    .line 124
    :cond_0
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 126
    .local v1, "reader":Ljava/io/InputStreamReader;
    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lorg/apache/log4j/lf5/util/Resource;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 135
    invoke-static {p0, p0}, Lorg/apache/log4j/lf5/util/ResourceUtils;->getResourceAsURL(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/apache/log4j/lf5/util/Resource;->_name:Ljava/lang/String;

    .line 85
    return-void
.end method
