.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;
.super Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;
.source "CategoryNodeEditor.java"


# instance fields
.field protected _categoryModel:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

.field protected _checkBox:Ljavax/swing/JCheckBox;

.field protected _lastEditedNode:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

.field protected _renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;

.field protected _tree:Ljavax/swing/JTree;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;)V
    .locals 2
    .param p1, "model"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryAbstractCellEditor;-><init>()V

    .line 66
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;

    invoke-direct {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;

    .line 67
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;->getCheckBox()Ljavax/swing/JCheckBox;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_checkBox:Ljavax/swing/JCheckBox;

    .line 68
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_categoryModel:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    .line 70
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_checkBox:Ljavax/swing/JCheckBox;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$1;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JCheckBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 77
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$2;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$2;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;->addMouseListener(Ljava/awt/event/MouseListener;)V

    .line 85
    return-void
.end method


# virtual methods
.method protected collapse(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_tree:Ljavax/swing/JTree;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->getTreePath(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->collapsePath(Ljavax/swing/tree/TreePath;)V

    .line 281
    return-void
.end method

.method protected collapseDescendants(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 244
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 246
    .local v1, "descendants":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 248
    .local v0, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->collapse(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    goto :goto_0

    .line 250
    .end local v0    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    return-void
.end method

.method protected createCollapseMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 206
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Collapse All Descendant Categories"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 207
    .local v0, "result":Ljavax/swing/JMenuItem;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$7;

    invoke-direct {v1, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$7;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 212
    return-object v0
.end method

.method protected createExpandMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 196
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Expand All Descendant Categories"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "result":Ljavax/swing/JMenuItem;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$6;

    invoke-direct {v1, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$6;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 202
    return-object v0
.end method

.method protected createPropertiesMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 111
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Properties"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "result":Ljavax/swing/JMenuItem;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$3;

    invoke-direct {v1, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$3;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 117
    return-object v0
.end method

.method protected createRemoveMenuItem()Ljavax/swing/JMenuItem;
    .locals 2

    .prologue
    .line 225
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Remove All Empty Categories"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "result":Ljavax/swing/JMenuItem;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$8;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$8;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 231
    return-object v0
.end method

.method protected createSelectDescendantsMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 168
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Select All Descendant Categories"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 170
    .local v0, "selectDescendants":Ljavax/swing/JMenuItem;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$4;

    invoke-direct {v1, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$4;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 177
    return-object v0
.end method

.method protected createUnselectDescendantsMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 181
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v1, "Deselect All Descendant Categories"

    invoke-direct {v0, v1}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, "unselectDescendants":Ljavax/swing/JMenuItem;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$5;

    invoke-direct {v1, p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor$5;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    invoke-virtual {v0, v1}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 192
    return-object v0
.end method

.method protected expand(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 272
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_tree:Ljavax/swing/JTree;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->getTreePath(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTree;->expandPath(Ljavax/swing/tree/TreePath;)V

    .line 273
    return-void
.end method

.method protected expandDescendants(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 235
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 237
    .local v1, "descendants":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 239
    .local v0, "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->expand(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    goto :goto_0

    .line 241
    .end local v0    # "current":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_0
    return-void
.end method

.method public getCellEditorValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_lastEditedNode:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getUserObject()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getDisplayedProperties(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, "result":Ljava/util/ArrayList;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalRecords()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const-string v1, "Contains at least one fatal LogRecord."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    const-string v1, "Contains descendants with a fatal LogRecord."

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "LogRecords in this category alone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfContainedRecords()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "LogRecords in descendant categories: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfRecordsFromChildren()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "LogRecords in this category including descendants: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTotalNumberOfRecords()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getTreeCellEditorComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZI)Ljava/awt/Component;
    .locals 8
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "selected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I

    .prologue
    .line 94
    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_lastEditedNode:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 95
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_tree:Ljavax/swing/JTree;

    .line 97
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;

    const/4 v7, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    move-result-object v0

    return-object v0
.end method

.method protected getTreePath(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/tree/TreePath;
    .locals 2
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 276
    new-instance v0, Ljavax/swing/tree/TreePath;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getPath()[Ljavax/swing/tree/TreeNode;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method protected removeUnusedNodes()I
    .locals 5

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "count":I
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_categoryModel:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    invoke-virtual {v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v3

    .line 258
    .local v3, "root":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->depthFirstEnumeration()Ljava/util/Enumeration;

    move-result-object v1

    .line 259
    .local v1, "enumeration":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 261
    .local v2, "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isLeaf()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getNumberOfContainedRecords()I

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 263
    iget-object v4, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_categoryModel:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    invoke-virtual {v4, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->removeNodeFromParent(Ljavax/swing/tree/MutableTreeNode;)V

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "node":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    :cond_1
    return v0
.end method

.method protected showPopup(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;II)V
    .locals 3
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 148
    new-instance v0, Ljavax/swing/JPopupMenu;

    invoke-direct {v0}, Ljavax/swing/JPopupMenu;-><init>()V

    .line 149
    .local v0, "popup":Ljavax/swing/JPopupMenu;
    const/16 v1, 0x96

    const/16 v2, 0x190

    invoke-virtual {v0, v1, v2}, Ljavax/swing/JPopupMenu;->setSize(II)V

    .line 153
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getParent()Ljavax/swing/tree/TreeNode;

    move-result-object v1

    if-nez v1, :cond_0

    .line 154
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->createRemoveMenuItem()Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 155
    invoke-virtual {v0}, Ljavax/swing/JPopupMenu;->addSeparator()V

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->createSelectDescendantsMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 158
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->createUnselectDescendantsMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 159
    invoke-virtual {v0}, Ljavax/swing/JPopupMenu;->addSeparator()V

    .line 160
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->createExpandMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 161
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->createCollapseMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 162
    invoke-virtual {v0}, Ljavax/swing/JPopupMenu;->addSeparator()V

    .line 163
    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->createPropertiesMenuItem(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljavax/swing/JMenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPopupMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 164
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_renderer:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;

    invoke-virtual {v0, v1, p2, p3}, Ljavax/swing/JPopupMenu;->show(Ljava/awt/Component;II)V

    .line 165
    return-void
.end method

.method protected showPropertiesDialog(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V
    .locals 4
    .param p1, "node"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->_tree:Ljavax/swing/JTree;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;->getDisplayedProperties(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Category Properties: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 127
    return-void
.end method
