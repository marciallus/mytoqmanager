.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "CategoryNodeRenderer.java"


# static fields
.field public static final FATAL_CHILDREN:Ljava/awt/Color;

.field protected static _sat:Ljavax/swing/ImageIcon; = null

.field private static final serialVersionUID:J = -0x53ea340b672cefe8L


# instance fields
.field protected _checkBox:Ljavax/swing/JCheckBox;

.field protected _panel:Ljavax/swing/JPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xbd

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    .line 47
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    .line 45
    new-instance v2, Ljavax/swing/JCheckBox;

    invoke-direct {v2}, Ljavax/swing/JCheckBox;-><init>()V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    .line 46
    new-instance v2, Ljavax/swing/JPanel;

    invoke-direct {v2}, Ljavax/swing/JPanel;-><init>()V

    iput-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    .line 58
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    const-string v3, "Tree.textBackground"

    invoke-static {v3}, Ljavax/swing/UIManager;->getColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 60
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    if-nez v2, :cond_0

    .line 62
    const-string v0, "/org/apache/log4j/lf5/viewer/images/channelexplorer_satellite.gif"

    .line 64
    .local v0, "resource":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 66
    .local v1, "satURL":Ljava/net/URL;
    new-instance v2, Ljavax/swing/ImageIcon;

    invoke-direct {v2, v1}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    sput-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    .line 69
    .end local v0    # "resource":Ljava/lang/String;
    .end local v1    # "satURL":Ljava/net/URL;
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setOpaque(Z)V

    .line 70
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v2, v4}, Ljavax/swing/JCheckBox;->setOpaque(Z)V

    .line 71
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v2, v4}, Ljavax/swing/JPanel;->setOpaque(Z)V

    .line 75
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    new-instance v3, Ljava/awt/FlowLayout;

    invoke-direct {v3, v4, v4, v4}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 76
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    iget-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v2, v3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 77
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v2, p0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 79
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 80
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 81
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    .local v0, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " contains a total of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTotalNumberOfRecords()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, " LogRecords."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, " Right-click for more info."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCheckBoxOffset()Ljava/awt/Dimension;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 4
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "selected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I
    .param p7, "hasFocus"    # Z

    .prologue
    .line 93
    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 98
    .local v0, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    .line 102
    if-nez p6, :cond_2

    .line 104
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/swing/JCheckBox;->setVisible(Z)V

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "toolTip":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v2, v1}, Ljavax/swing/JPanel;->setToolTipText(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    sget-object v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setForeground(Ljava/awt/Color;)V

    .line 114
    :cond_0
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalRecords()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    sget-object v2, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setForeground(Ljava/awt/Color;)V

    .line 118
    :cond_1
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    return-object v2

    .line 106
    .end local v1    # "toolTip":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/swing/JCheckBox;->setVisible(Z)V

    .line 107
    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    goto :goto_0
.end method
