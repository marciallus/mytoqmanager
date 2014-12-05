.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;
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
    .line 1371
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 1373
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComboBox;

    .line 1374
    .local v0, "box":Ljavax/swing/JComboBox;
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/lf5/LogLevel;

    .line 1375
    .local v1, "level":Lorg/apache/log4j/lf5/LogLevel;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$32;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setLeastSevereDisplayedLogLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 1376
    return-void
.end method
