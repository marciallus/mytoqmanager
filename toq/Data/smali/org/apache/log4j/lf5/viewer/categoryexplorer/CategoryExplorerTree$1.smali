.class Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree$1;
.super Lorg/apache/log4j/lf5/viewer/categoryexplorer/TreeModelAdapter;
.source "CategoryExplorerTree.java"


# instance fields
.field private final this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/TreeModelAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public treeNodesInserted(Ljavax/swing/event/TreeModelEvent;)V
    .locals 1
    .param p1, "e"    # Ljavax/swing/event/TreeModelEvent;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree$1;->this$0:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->expandRootNode()V

    .line 139
    return-void
.end method
