.class public Lorg/apache/log4j/lf5/StartLogFactor5;
.super Ljava/lang/Object;
.source "StartLogFactor5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLog4JLevels()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;-><init>(Ljava/util/List;)V

    .line 60
    .local v0, "monitor":Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorWidth()I

    move-result v1

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFrameSize(II)V

    .line 62
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(I)V

    .line 63
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show()V

    .line 65
    return-void
.end method
