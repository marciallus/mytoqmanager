.class Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;
.super Lorg/apache/log4j/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MaxElementAbbreviator"
.end annotation


# instance fields
.field private final count:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 178
    invoke-direct {p0}, Lorg/apache/log4j/pattern/NameAbbreviator;-><init>()V

    .line 179
    iput p1, p0, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;->count:I

    .line 180
    return-void
.end method


# virtual methods
.method public abbreviate(ILjava/lang/StringBuffer;)V
    .locals 5
    .param p1, "nameStart"    # I
    .param p2, "buf"    # Ljava/lang/StringBuffer;

    .prologue
    .line 191
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 193
    .local v1, "end":I
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "bufString":Ljava/lang/String;
    iget v2, p0, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;->count:I

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_2

    .line 195
    const-string v3, "."

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v1

    .line 197
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    if-ge v1, p1, :cond_1

    .line 203
    :cond_0
    :goto_1
    return-void

    .line 194
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 202
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p2, p1, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
