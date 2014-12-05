.class public Lorg/apache/log4j/helpers/CyclicBuffer;
.super Ljava/lang/Object;
.source "CyclicBuffer.java"


# instance fields
.field ea:[Lorg/apache/log4j/spi/LoggingEvent;

.field first:I

.field last:I

.field maxSize:I

.field numElems:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "maxSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") is not a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    .line 55
    new-array v0, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    iput-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 56
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 57
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    .line 58
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 59
    return-void
.end method


# virtual methods
.method public add(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    aput-object p1, v0, v1

    .line 68
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v0, v1, :cond_0

    .line 69
    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    .line 71
    :cond_0
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ge v0, v1, :cond_2

    .line 72
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 73
    :cond_2
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v0, v1, :cond_1

    .line 74
    iput v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    goto :goto_0
.end method

.method public get()Lorg/apache/log4j/spi/LoggingEvent;
    .locals 4

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "r":Lorg/apache/log4j/spi/LoggingEvent;
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lez v1, :cond_0

    .line 106
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 107
    iget-object v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v0, v1, v2

    .line 108
    iget-object v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 109
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    if-ne v1, v2, :cond_0

    .line 110
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 112
    :cond_0
    return-object v0
.end method

.method public get(I)Lorg/apache/log4j/spi/LoggingEvent;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 87
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-lt p1, v0, :cond_1

    .line 88
    :cond_0
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getMaxSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    return v0
.end method

.method public resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .prologue
    const/4 v6, 0x0

    .line 132
    if-gez p1, :cond_0

    .line 133
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Negative array size ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "] not allowed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 136
    :cond_0
    iget v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne p1, v3, :cond_1

    .line 158
    :goto_0
    return-void

    .line 139
    :cond_1
    new-array v2, p1, [Lorg/apache/log4j/spi/LoggingEvent;

    .line 141
    .local v2, "temp":[Lorg/apache/log4j/spi/LoggingEvent;
    iget v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ge p1, v3, :cond_3

    move v1, p1

    .line 143
    .local v1, "loopLen":I
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 144
    iget-object v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 145
    iget-object v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    const/4 v5, 0x0

    aput-object v5, v3, v4

    .line 146
    iget v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    iget v4, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    if-ne v3, v4, :cond_2

    .line 147
    iput v6, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 141
    .end local v0    # "i":I
    .end local v1    # "loopLen":I
    :cond_3
    iget v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    goto :goto_1

    .line 149
    .restart local v0    # "i":I
    .restart local v1    # "loopLen":I
    :cond_4
    iput-object v2, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->ea:[Lorg/apache/log4j/spi/LoggingEvent;

    .line 150
    iput v6, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->first:I

    .line 151
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->numElems:I

    .line 152
    iput p1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->maxSize:I

    .line 153
    if-ne v1, p1, :cond_5

    .line 154
    iput v6, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    goto :goto_0

    .line 156
    :cond_5
    iput v1, p0, Lorg/apache/log4j/helpers/CyclicBuffer;->last:I

    goto :goto_0
.end method
