.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;
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
    .line 1188
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 5
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 1190
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v1, v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const-string v2, "Sort by this NDC: "

    const-string v3, "Sort Log Records by NDC"

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1197
    .local v0, "inputValue":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setNDCTextFilter(Ljava/lang/String;)V

    .line 1198
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->sortByNDC()V

    .line 1199
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v1, v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 1200
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    .line 1201
    return-void
.end method
