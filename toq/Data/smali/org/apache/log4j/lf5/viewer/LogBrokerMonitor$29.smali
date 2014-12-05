.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;
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
    .line 1257
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 1259
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->clearLogRecords()V

    .line 1260
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->resetAllNodeCounts()V

    .line 1261
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    .line 1262
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$29;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->clearDetailTextArea()V

    .line 1263
    invoke-static {}, Lorg/apache/log4j/lf5/LogRecord;->resetSequenceNumber()V

    .line 1264
    return-void
.end method
