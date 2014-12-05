.class public Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.source "LogFactor5ErrorDialog.java"


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;)V
    .locals 5
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v3, "Error"

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    .line 57
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Ok"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 58
    .local v2, "ok":Ljavax/swing/JButton;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;

    invoke-direct {v3, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 64
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 65
    .local v0, "bottom":Ljavax/swing/JPanel;
    new-instance v3, Ljava/awt/FlowLayout;

    invoke-direct {v3}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 66
    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 68
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 69
    .local v1, "main":Ljavax/swing/JPanel;
    new-instance v3, Ljava/awt/GridBagLayout;

    invoke-direct {v3}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 70
    invoke-virtual {p0, p2, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;->wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V

    .line 72
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "Center"

    invoke-virtual {v3, v1, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "South"

    invoke-virtual {v3, v0, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;->show()V

    .line 76
    return-void
.end method
