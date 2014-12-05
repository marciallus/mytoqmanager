.class Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;
.super Lorg/apache/log4j/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternAbbreviator"
.end annotation


# instance fields
.field private final fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .param p1, "fragments"    # Ljava/util/List;

    .prologue
    .line 313
    invoke-direct {p0}, Lorg/apache/log4j/pattern/NameAbbreviator;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fragments must have at least one element"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    iput-object v0, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    .line 320
    iget-object v0, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 321
    return-void
.end method


# virtual methods
.method public abbreviate(ILjava/lang/StringBuffer;)V
    .locals 5
    .param p1, "nameStart"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 332
    move v1, p1

    .line 334
    .local v1, "pos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 336
    iget-object v3, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2, v1}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->abbreviate(Ljava/lang/StringBuffer;I)I

    move-result v1

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    iget-object v3, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    iget-object v4, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v2, v3, v4

    .line 345
    .local v2, "terminalFragment":Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    if-ltz v1, :cond_1

    .line 346
    invoke-virtual {v2, p2, v1}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->abbreviate(Ljava/lang/StringBuffer;I)I

    move-result v1

    goto :goto_1

    .line 348
    :cond_1
    return-void
.end method
