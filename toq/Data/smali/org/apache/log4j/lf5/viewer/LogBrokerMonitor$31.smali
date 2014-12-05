.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;
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
    .line 1309
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 1311
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComboBox;

    .line 1312
    .local v0, "box":Ljavax/swing/JComboBox;
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1313
    .local v2, "size":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1315
    .local v1, "s":I
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSizeSilently(I)V

    .line 1316
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->refreshDetailTextArea()V

    .line 1317
    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput v1, v3, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    .line 1318
    return-void
.end method
