.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;
.super Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
.source "CategoryNodeEditorRenderer.java"


# static fields
.field private static final serialVersionUID:J = -0x5495189194b32de6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;-><init>()V

    return-void
.end method


# virtual methods
.method public getCheckBox()Ljavax/swing/JCheckBox;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeEditorRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    return-object v0
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 1
    .param p1, "tree"    # Ljavax/swing/JTree;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "selected"    # Z
    .param p4, "expanded"    # Z
    .param p5, "leaf"    # Z
    .param p6, "row"    # I
    .param p7, "hasFocus"    # Z

    .prologue
    .line 61
    invoke-super/range {p0 .. p7}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    move-result-object v0

    .line 65
    .local v0, "c":Ljava/awt/Component;
    return-object v0
.end method
