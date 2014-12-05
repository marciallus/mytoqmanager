.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;
.super Ljavax/swing/JTree;
.source "CategoryExplorerTree.java"


# static fields
.field private static final serialVersionUID:J = 0x6ff11a69406207b8L


# instance fields
.field protected _model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

.field protected _rootAlreadyExpanded:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 70
    invoke-direct {p0}, Ljavax/swing/JTree;-><init>()V

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_rootAlreadyExpanded:Z

    .line 72
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    const-string v1, "Categories"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "rootNode":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    invoke-direct {v1, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)V

    iput-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    .line 76
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->setModel(Ljavax/swing/tree/TreeModel;)V

    .line 78
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->init()V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;)V
    .locals 1
    .param p1, "model"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljavax/swing/JTree;-><init>(Ljavax/swing/tree/TreeModel;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_rootAlreadyExpanded:Z

    .line 62
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    .line 63
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->init()V

    .line 64
    return-void
.end method


# virtual methods
.method protected ensureRootExpansion()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree$1;

    invoke-direct {v1, p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree$1;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addTreeModelListener(Ljavax/swing/event/TreeModelListener;)V

    .line 141
    return-void
.end method

.method protected expandRootNode()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_rootAlreadyExpanded:Z

    if-eqz v1, :cond_0

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_rootAlreadyExpanded:Z

    .line 131
    new-instance v0, Ljavax/swing/tree/TreePath;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->getRootCategoryNode()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getPath()[Ljavax/swing/tree/TreeNode;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/swing/tree/TreePath;-><init>([Ljava/lang/Object;)V

    .line 132
    .local v0, "path":Ljavax/swing/tree/TreePath;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->expandPath(Ljavax/swing/tree/TreePath;)V

    goto :goto_0
.end method

.method public getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    return-object v0
.end method

.method public getToolTipText(Ljava/awt/event/MouseEvent;)Ljava/lang/String;
    .locals 2
    .param p1, "e"    # Ljava/awt/event/MouseEvent;

    .prologue
    .line 92
    :try_start_0
    invoke-super {p0, p1}, Ljavax/swing/JTree;->getToolTipText(Ljava/awt/event/MouseEvent;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    :goto_0
    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method protected init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 105
    const-string v2, "JTree.lineStyle"

    const-string v3, "Angled"

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->putClientProperty(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    new-instance v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    invoke-direct {v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;-><init>()V

    .line 110
    .local v1, "renderer":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->setEditable(Z)V

    .line 111
    invoke-virtual {p0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->setCellRenderer(Ljavax/swing/tree/TreeCellRenderer;)V

    .line 113
    new-instance v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->_model:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    invoke-direct {v0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;-><init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;)V

    .line 115
    .local v0, "editor":Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;
    new-instance v2, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;

    new-instance v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;

    invoke-direct {v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;-><init>()V

    invoke-direct {v2, p0, v3, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryImmediateEditor;-><init>(Ljavax/swing/JTree;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditor;)V

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->setCellEditor(Ljavax/swing/tree/TreeCellEditor;)V

    .line 118
    invoke-virtual {p0, v4}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->setShowsRootHandles(Z)V

    .line 120
    const-string v2, ""

    invoke-virtual {p0, v2}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->setToolTipText(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->ensureRootExpansion()V

    .line 124
    return-void
.end method
