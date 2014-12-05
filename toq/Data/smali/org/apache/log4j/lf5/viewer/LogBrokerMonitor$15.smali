.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;
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
    .line 924
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 926
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->selectAllLogTableColumns(Z)V

    .line 928
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateView()Ljava/util/List;

    move-result-object v0

    .line 929
    .local v0, "selectedColumns":Ljava/util/List;
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v1, v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v1, v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->setView(Ljava/util/List;)V

    .line 930
    return-void
.end method
