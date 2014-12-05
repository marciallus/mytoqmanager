.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private final val$logLevel:Lorg/apache/log4j/lf5/LogLevel;

.field private final val$result:Ljavax/swing/JMenuItem;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$result:Ljavax/swing/JMenuItem;

    iput-object p3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$logLevel:Lorg/apache/log4j/lf5/LogLevel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 817
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$result:Ljavax/swing/JMenuItem;

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$11;->val$logLevel:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->showLogLevelColorChangeDialog(Ljavax/swing/JMenuItem;Lorg/apache/log4j/lf5/LogLevel;)V

    .line 818
    return-void
.end method
