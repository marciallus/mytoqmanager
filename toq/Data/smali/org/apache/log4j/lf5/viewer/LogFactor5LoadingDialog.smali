.class public Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.source "LogFactor5LoadingDialog.java"


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;)V
    .locals 4
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 53
    const-string v2, "LogFactor5"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    .line 55
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 56
    .local v0, "bottom":Ljavax/swing/JPanel;
    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 58
    new-instance v1, Ljavax/swing/JPanel;

    invoke-direct {v1}, Ljavax/swing/JPanel;-><init>()V

    .line 59
    .local v1, "main":Ljavax/swing/JPanel;
    new-instance v2, Ljava/awt/GridBagLayout;

    invoke-direct {v2}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 60
    invoke-virtual {p0, p2, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V

    .line 62
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v1, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "South"

    invoke-virtual {v2, v0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->show()V

    .line 66
    return-void
.end method
