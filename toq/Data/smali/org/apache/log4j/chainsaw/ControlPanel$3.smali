.class Lorg/apache/log4j/chainsaw/ControlPanel$3;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljavax/swing/event/DocumentListener;


# instance fields
.field private final this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

.field private final val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private final val$catField:Ljavax/swing/JTextField;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iput-object p3, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$catField:Ljavax/swing/JTextField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public changedUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 2
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 145
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$catField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setCategoryFilter(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public insertUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 2
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 139
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$catField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setCategoryFilter(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public removeUpdate(Ljavax/swing/event/DocumentEvent;)V
    .locals 2
    .param p1, "aEvent"    # Ljavax/swing/event/DocumentEvent;

    .prologue
    .line 142
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iget-object v1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$3;->val$catField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/chainsaw/MyTableModel;->setCategoryFilter(Ljava/lang/String;)V

    .line 143
    return-void
.end method
