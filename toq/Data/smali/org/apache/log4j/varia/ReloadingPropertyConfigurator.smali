.class public Lorg/apache/log4j/varia/ReloadingPropertyConfigurator;
.super Ljava/lang/Object;
.source "ReloadingPropertyConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# instance fields
.field delegate:Lorg/apache/log4j/PropertyConfigurator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/varia/ReloadingPropertyConfigurator;->delegate:Lorg/apache/log4j/PropertyConfigurator;

    .line 32
    return-void
.end method


# virtual methods
.method public doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 38
    return-void
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "repository"    # Lorg/apache/log4j/spi/LoggerRepository;

    .prologue
    .line 41
    return-void
.end method
