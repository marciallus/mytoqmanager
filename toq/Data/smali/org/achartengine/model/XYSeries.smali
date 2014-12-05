.class public Lorg/achartengine/model/XYSeries;
.super Ljava/lang/Object;
.source "XYSeries.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final PADDING:D = 1.0E-12


# instance fields
.field private mAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxX:D

.field private mMaxY:D

.field private mMinX:D

.field private mMinY:D

.field private final mScaleNumber:I

.field private final mStringXY:Lorg/achartengine/util/IndexXYMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/achartengine/util/IndexXYMap",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private final mXY:Lorg/achartengine/util/IndexXYMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/achartengine/util/IndexXYMap",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/achartengine/model/XYSeries;-><init>(Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "scaleNumber"    # I

    .prologue
    const-wide v3, 0x7fefffffffffffffL

    const-wide v1, -0x10000000000001L

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lorg/achartengine/util/IndexXYMap;

    invoke-direct {v0}, Lorg/achartengine/util/IndexXYMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    .line 38
    iput-wide v3, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    .line 40
    iput-wide v1, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    .line 42
    iput-wide v3, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    .line 44
    iput-wide v1, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/XYSeries;->mAnnotations:Ljava/util/List;

    .line 52
    new-instance v0, Lorg/achartengine/util/IndexXYMap;

    invoke-direct {v0}, Lorg/achartengine/util/IndexXYMap;-><init>()V

    iput-object v0, p0, Lorg/achartengine/model/XYSeries;->mStringXY:Lorg/achartengine/util/IndexXYMap;

    .line 70
    iput-object p1, p0, Lorg/achartengine/model/XYSeries;->mTitle:Ljava/lang/String;

    .line 71
    iput p2, p0, Lorg/achartengine/model/XYSeries;->mScaleNumber:I

    .line 72
    invoke-direct {p0}, Lorg/achartengine/model/XYSeries;->initRange()V

    .line 73
    return-void
.end method

.method private initRange()V
    .locals 10

    .prologue
    const-wide v8, 0x7fefffffffffffffL

    const-wide v6, -0x10000000000001L

    .line 83
    iput-wide v8, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    .line 84
    iput-wide v6, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    .line 85
    iput-wide v8, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    .line 86
    iput-wide v6, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    .line 87
    invoke-virtual {p0}, Lorg/achartengine/model/XYSeries;->getItemCount()I

    move-result v1

    .line 88
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 89
    invoke-virtual {p0, v0}, Lorg/achartengine/model/XYSeries;->getX(I)D

    move-result-wide v2

    .line 90
    .local v2, "x":D
    invoke-virtual {p0, v0}, Lorg/achartengine/model/XYSeries;->getY(I)D

    move-result-wide v4

    .line 91
    .local v4, "y":D
    invoke-direct {p0, v2, v3, v4, v5}, Lorg/achartengine/model/XYSeries;->updateRange(DD)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "x":D
    .end local v4    # "y":D
    :cond_0
    return-void
.end method

.method private updateRange(DD)V
    .locals 2
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    .line 103
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    .line 104
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    .line 105
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    invoke-static {v0, v1, p3, p4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized add(DD)V
    .locals 3
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 133
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/achartengine/util/IndexXYMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lorg/achartengine/model/XYSeries;->getPadding()D

    move-result-wide v0

    add-double/2addr p1, v0

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/util/IndexXYMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/achartengine/model/XYSeries;->updateRange(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(IDD)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "x"    # D
    .param p4, "y"    # D

    .prologue
    .line 150
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/achartengine/util/IndexXYMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lorg/achartengine/model/XYSeries;->getPadding()D

    move-result-wide v0

    add-double/2addr p2, v0

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lorg/achartengine/util/IndexXYMap;->put(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-direct {p0, p2, p3, p4, p5}, Lorg/achartengine/model/XYSeries;->updateRange(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addAnnotation(Ljava/lang/String;DD)V
    .locals 3
    .param p1, "annotation"    # Ljava/lang/String;
    .param p2, "x"    # D
    .param p4, "y"    # D

    .prologue
    .line 214
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mStringXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/util/IndexXYMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 181
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0}, Lorg/achartengine/util/IndexXYMap;->clear()V

    .line 182
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mStringXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0}, Lorg/achartengine/util/IndexXYMap;->clear()V

    .line 183
    invoke-direct {p0}, Lorg/achartengine/model/XYSeries;->initRange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAnnotationAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAnnotationCount()I
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getAnnotationX(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 235
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mStringXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0, p1}, Lorg/achartengine/util/IndexXYMap;->getXByIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getAnnotationY(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 245
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mStringXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0, p1}, Lorg/achartengine/util/IndexXYMap;->getYByIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getIndexForKey(D)I
    .locals 2
    .param p1, "key"    # D

    .prologue
    .line 309
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/achartengine/util/IndexXYMap;->getIndexForKey(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized getItemCount()I
    .locals 1

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0}, Lorg/achartengine/util/IndexXYMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxX()D
    .locals 2

    .prologue
    .line 345
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    return-wide v0
.end method

.method public getMaxY()D
    .locals 2

    .prologue
    .line 354
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    return-wide v0
.end method

.method public getMinX()D
    .locals 2

    .prologue
    .line 327
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    return-wide v0
.end method

.method public getMinY()D
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    return-wide v0
.end method

.method protected getPadding()D
    .locals 2

    .prologue
    .line 160
    const-wide v0, 0x3d719799812dea11L

    return-wide v0
.end method

.method public declared-synchronized getRange(DDZ)Ljava/util/SortedMap;
    .locals 7
    .param p1, "start"    # D
    .param p3, "stop"    # D
    .param p5, "beforeAfterPoints"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDZ)",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    monitor-enter p0

    if-eqz p5, :cond_1

    .line 286
    :try_start_0
    iget-object v4, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/achartengine/util/IndexXYMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 287
    .local v0, "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 288
    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 294
    :cond_0
    iget-object v4, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/achartengine/util/IndexXYMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    .line 295
    .local v3, "tailMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-interface {v3}, Ljava/util/SortedMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 296
    invoke-interface {v3}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 297
    .local v2, "tailIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    .line 298
    .local v1, "next":Ljava/lang/Double;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 299
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p3

    .line 305
    .end local v0    # "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v1    # "next":Ljava/lang/Double;
    .end local v2    # "tailIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    .end local v3    # "tailMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_1
    :goto_0
    iget-object v4, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/achartengine/util/IndexXYMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit p0

    return-object v4

    .line 301
    .restart local v0    # "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .restart local v1    # "next":Ljava/lang/Double;
    .restart local v2    # "tailIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    .restart local v3    # "tailMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    add-double/2addr p3, v4

    goto :goto_0

    .line 278
    .end local v0    # "headMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v1    # "next":Ljava/lang/Double;
    .end local v2    # "tailIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Double;>;"
    .end local v3    # "tailMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Double;Ljava/lang/Double;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getScaleNumber()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/achartengine/model/XYSeries;->mScaleNumber:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getX(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0, p1}, Lorg/achartengine/util/IndexXYMap;->getXByIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getY(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0, p1}, Lorg/achartengine/util/IndexXYMap;->getYByIndex(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lorg/achartengine/model/XYSeries;->mXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v5, p1}, Lorg/achartengine/util/IndexXYMap;->removeByIndex(I)Lorg/achartengine/util/XYEntry;

    move-result-object v0

    .line 170
    .local v0, "removedEntry":Lorg/achartengine/util/XYEntry;, "Lorg/achartengine/util/XYEntry<Ljava/lang/Double;Ljava/lang/Double;>;"
    invoke-virtual {v0}, Lorg/achartengine/util/XYEntry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 171
    .local v1, "removedX":D
    invoke-virtual {v0}, Lorg/achartengine/util/XYEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 172
    .local v3, "removedY":D
    iget-wide v5, p0, Lorg/achartengine/model/XYSeries;->mMinX:D

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lorg/achartengine/model/XYSeries;->mMaxX:D

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lorg/achartengine/model/XYSeries;->mMinY:D

    cmpl-double v5, v3, v5

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lorg/achartengine/model/XYSeries;->mMaxY:D

    cmpl-double v5, v3, v5

    if-nez v5, :cond_1

    .line 173
    :cond_0
    invoke-direct {p0}, Lorg/achartengine/model/XYSeries;->initRange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_1
    monitor-exit p0

    return-void

    .line 169
    .end local v0    # "removedEntry":Lorg/achartengine/util/XYEntry;, "Lorg/achartengine/util/XYEntry<Ljava/lang/Double;Ljava/lang/Double;>;"
    .end local v1    # "removedX":D
    .end local v3    # "removedY":D
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public removeAnnotation(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lorg/achartengine/model/XYSeries;->mStringXY:Lorg/achartengine/util/IndexXYMap;

    invoke-virtual {v0, p1}, Lorg/achartengine/util/IndexXYMap;->removeByIndex(I)Lorg/achartengine/util/XYEntry;

    .line 226
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lorg/achartengine/model/XYSeries;->mTitle:Ljava/lang/String;

    .line 124
    return-void
.end method
