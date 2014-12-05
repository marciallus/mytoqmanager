.class public Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
.super Ljava/lang/Object;
.source "ToqLoggerFactory.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;


# instance fields
.field private mFactoryRegisteredLoggers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->mFactoryRegisteredLoggers:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    .locals 2

    .prologue
    .line 26
    const-class v1, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->inst:Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->inst:Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    .line 31
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->inst:Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public configureLogger(Ljava/lang/String;)V
    .locals 1
    .param p1, "loggerType"    # Ljava/lang/String;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->mFactoryRegisteredLoggers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;->configure()V

    .line 85
    :cond_0
    return-void
.end method

.method public getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    .locals 1
    .param p1, "loggerId"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->mFactoryRegisteredLoggers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->mFactoryRegisteredLoggers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerLogger(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;)V
    .locals 1
    .param p1, "loggerId"    # Ljava/lang/String;
    .param p2, "loggerImplObj"    # Lcom/qualcomm/toq/smartwatch/logger/AbstractToqLoggerImpl;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->mFactoryRegisteredLoggers:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->mFactoryRegisteredLoggers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    :cond_0
    return-void
.end method

.method public resetLoggerConfiguration()V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Lorg/apache/log4j/LogManager;->resetConfiguration()V

    .line 69
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->removeAllAppenders()V

    .line 71
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    new-instance v1, Lde/mindpipe/android/logging/log4j/LogCatAppender;

    invoke-direct {v1}, Lde/mindpipe/android/logging/log4j/LogCatAppender;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    .line 72
    return-void
.end method
