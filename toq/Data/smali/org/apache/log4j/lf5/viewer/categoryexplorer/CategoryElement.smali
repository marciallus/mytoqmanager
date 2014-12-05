.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;
.super Ljava/lang/Object;
.source "CategoryElement.java"


# instance fields
.field protected _categoryTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->_categoryTitle:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->_categoryTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryElement;->_categoryTitle:Ljava/lang/String;

    .line 64
    return-void
.end method
