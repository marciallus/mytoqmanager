.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;
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
    .line 1288
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 6
    .param p1, "e"    # Ljava/awt/event/ActionEvent;

    .prologue
    .line 1290
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/swing/JComboBox;

    .line 1291
    .local v0, "box":Ljavax/swing/JComboBox;
    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1292
    .local v1, "font":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v2, v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    new-instance v3, Ljava/awt/Font;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget v5, v5, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    invoke-direct {v3, v1, v4, v5}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v2, v3}, Lorg/apache/log4j/lf5/viewer/LogTable;->setFont(Ljava/awt/Font;)V

    .line 1293
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput-object v1, v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    .line 1294
    return-void
.end method
