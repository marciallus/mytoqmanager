.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;
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
    .line 746
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 748
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->selectAllLogLevels(Z)V

    .line 749
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 750
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$8;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    .line 751
    return-void
.end method
