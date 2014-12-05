.class public final Lorg/apache/log4j/spi/NOPLoggerRepository;
.super Ljava/lang/Object;
.source "NOPLoggerRepository.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/apache/log4j/spi/HierarchyEventListener;

    .prologue
    .line 37
    return-void
.end method

.method public emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
    .locals 0
    .param p1, "cat"    # Lorg/apache/log4j/Category;

    .prologue
    .line 62
    return-void
.end method

.method public exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 0
    .param p1, "logger"    # Lorg/apache/log4j/Category;
    .param p2, "appender"    # Lorg/apache/log4j/Appender;

    .prologue
    .line 124
    return-void
.end method

.method public getCurrentCategories()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/apache/log4j/spi/NOPLoggerRepository;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoggers()Ljava/util/Enumeration;
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    new-instance v0, Lorg/apache/log4j/spi/NOPLogger;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/spi/NOPLogger;-><init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "factory"    # Lorg/apache/log4j/spi/LoggerFactory;

    .prologue
    .line 82
    new-instance v0, Lorg/apache/log4j/spi/NOPLogger;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/spi/NOPLogger;-><init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/log4j/Logger;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lorg/apache/log4j/spi/NOPLogger;

    const-string v1, "root"

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/spi/NOPLogger;-><init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Level;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public isDisabled(I)Z
    .locals 1
    .param p1, "level"    # I

    .prologue
    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public resetConfiguration()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 56
    return-void
.end method

.method public setThreshold(Lorg/apache/log4j/Level;)V
    .locals 0
    .param p1, "level"    # Lorg/apache/log4j/Level;

    .prologue
    .line 50
    return-void
.end method

.method public shutdown()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
