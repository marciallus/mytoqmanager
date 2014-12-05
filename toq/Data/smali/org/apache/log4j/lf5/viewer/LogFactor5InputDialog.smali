.class public Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.source "LogFactor5InputDialog.java"


# static fields
.field public static final SIZE:I = 0x1e


# instance fields
.field private _textField:Ljavax/swing/JTextField;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;

    .prologue
    .line 62
    const/16 v0, 0x1e

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "jframe"    # Ljavax/swing/JFrame;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "size"    # I

    .prologue
    .line 74
    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, v4}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    .line 76
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 77
    .local v0, "bottom":Ljavax/swing/JPanel;
    new-instance v4, Ljava/awt/FlowLayout;

    invoke-direct {v4}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v0, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 79
    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    .line 80
    .local v2, "main":Ljavax/swing/JPanel;
    new-instance v4, Ljava/awt/FlowLayout;

    invoke-direct {v4}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 81
    new-instance v4, Ljavax/swing/JLabel;

    invoke-direct {v4, p3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 82
    new-instance v4, Ljavax/swing/JTextField;

    invoke-direct {v4, p4}, Ljavax/swing/JTextField;-><init>(I)V

    iput-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    .line 83
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 85
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;

    invoke-direct {v4, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 93
    new-instance v3, Ljavax/swing/JButton;

    const-string v4, "Ok"

    invoke-direct {v3, v4}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 94
    .local v3, "ok":Ljavax/swing/JButton;
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;

    invoke-direct {v4, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {v3, v4}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 100
    new-instance v1, Ljavax/swing/JButton;

    const-string v4, "Cancel"

    invoke-direct {v1, v4}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "cancel":Ljavax/swing/JButton;
    new-instance v4, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;

    invoke-direct {v4, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {v1, v4}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 111
    invoke-virtual {v0, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 112
    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 113
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    const-string v5, "Center"

    invoke-virtual {v4, v2, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getContentPane()Ljava/awt/Container;

    move-result-object v4

    const-string v5, "South"

    invoke-virtual {v4, v0, v5}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->pack()V

    .line 116
    invoke-virtual {p0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->centerWindow(Ljava/awt/Window;)V

    .line 117
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->show()V

    .line 118
    return-void
.end method

.method static access$000(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)Ljavax/swing/JTextField;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    .prologue
    .line 38
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    return-object v0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    invoke-virtual {v1}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 130
    .end local v0    # "s":Ljava/lang/String;
    :cond_0
    return-object v0
.end method
