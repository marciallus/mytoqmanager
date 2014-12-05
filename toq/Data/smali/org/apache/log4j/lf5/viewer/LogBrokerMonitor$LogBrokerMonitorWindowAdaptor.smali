.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;
.super Ljava/awt/event/WindowAdapter;
.source "LogBrokerMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogBrokerMonitorWindowAdaptor"
.end annotation


# instance fields
.field protected _monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0
    .param p2, "monitor"    # Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .prologue
    .line 1602
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    .line 1603
    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 1604
    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 1
    .param p1, "ev"    # Ljava/awt/event/WindowEvent;

    .prologue
    .line 1607
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$LogBrokerMonitorWindowAdaptor;->_monitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->requestClose()V

    .line 1608
    return-void
.end method
