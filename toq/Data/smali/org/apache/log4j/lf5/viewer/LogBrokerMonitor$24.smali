.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .prologue
    .line 1117
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 1119
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const-string v1, "LogFactor5 Properties"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->showPropertiesDialog(Ljava/lang/String;)V

    .line 1120
    return-void
.end method
