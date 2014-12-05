.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;
.super Ljava/lang/Object;
.source "CategoryPath.java"


# instance fields
.field protected _categoryElements:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x2e

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    .line 58
    move-object v1, p1

    .line 60
    .local v1, "processedCategory":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 61
    const-string v1, "Debug"

    .line 64
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 65
    const/16 v3, 0x5c

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, v1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .local v2, "st":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "element":Ljava/lang/String;
    new-instance v3, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    invoke-direct {v3, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->addCategoryElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;)V

    goto :goto_0

    .line 72
    .end local v0    # "element":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addCategoryElement(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;)V
    .locals 1
    .param p1, "categoryElement"    # Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    .line 90
    .local v0, "empty":Z
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 94
    :cond_0
    return v0
.end method

.method public removeAllCategoryElements()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 103
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 82
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->_categoryElements:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 84
    .local v0, "count":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 123
    .local v1, "out":Ljava/lang/StringBuffer;
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v2, "===========================\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const-string v2, "CategoryPath:                   \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v2, "---------------------------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v2, "\nCategoryPath:\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 132
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryPath;->categoryElementAt(I)Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v2, "\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    const-string v2, "<<NONE>>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    :cond_1
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v2, "===========================\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
