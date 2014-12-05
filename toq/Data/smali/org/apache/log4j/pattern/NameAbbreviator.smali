.class public abstract Lorg/apache/log4j/pattern/NameAbbreviator;
.super Ljava/lang/Object;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;,
        Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;,
        Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;
    }
.end annotation


# static fields
.field private static final DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/NameAbbreviator$NOPAbbreviator;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    return-void
.end method

.method public static getAbbreviator(Ljava/lang/String;)Lorg/apache/log4j/pattern/NameAbbreviator;
    .locals 12
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a

    .line 50
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 52
    .local v7, "trimmed":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 53
    sget-object v8, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    .line 128
    .end local v7    # "trimmed":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 56
    .restart local v7    # "trimmed":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 57
    .local v5, "i":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 58
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_1

    .line 59
    add-int/lit8 v5, v5, 0x1

    .line 63
    :cond_1
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v5, v8, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v10, :cond_2

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v11, :cond_2

    .line 65
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 73
    :cond_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v5, v8, :cond_4

    .line 74
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 75
    .local v1, "elements":I
    if-ltz v1, :cond_3

    .line 76
    new-instance v8, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;

    invoke-direct {v8, v1}, Lorg/apache/log4j/pattern/NameAbbreviator$MaxElementAbbreviator;-><init>(I)V

    goto :goto_0

    .line 78
    :cond_3
    new-instance v8, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;

    neg-int v9, v1

    invoke-direct {v8, v9}, Lorg/apache/log4j/pattern/NameAbbreviator$DropElementAbbreviator;-><init>(I)V

    goto :goto_0

    .line 82
    .end local v1    # "elements":I
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    const/4 v8, 0x5

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v4, "fragments":Ljava/util/ArrayList;
    const/4 v6, 0x0

    .line 87
    .local v6, "pos":I
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_6

    if-ltz v6, :cond_6

    .line 88
    move v3, v6

    .line 90
    .local v3, "ellipsisPos":I
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2a

    if-ne v8, v9, :cond_7

    .line 91
    const v0, 0x7fffffff

    .line 92
    .local v0, "charCount":I
    add-int/lit8 v3, v3, 0x1

    .line 102
    :goto_3
    const/4 v2, 0x0

    .line 104
    .local v2, "ellipsis":C
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 105
    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 107
    const/16 v8, 0x2e

    if-ne v2, v8, :cond_5

    .line 108
    const/4 v2, 0x0

    .line 112
    :cond_5
    new-instance v8, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    invoke-direct {v8, v0, v2}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;-><init>(IC)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    const-string v8, "."

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 115
    const/4 v8, -0x1

    if-ne v6, v8, :cond_9

    .line 122
    .end local v0    # "charCount":I
    .end local v2    # "ellipsis":C
    .end local v3    # "ellipsisPos":I
    :cond_6
    new-instance v8, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;

    invoke-direct {v8, v4}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;-><init>(Ljava/util/List;)V

    goto/16 :goto_0

    .line 94
    .restart local v3    # "ellipsisPos":I
    :cond_7
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v10, :cond_8

    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v11, :cond_8

    .line 95
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v0, v8, -0x30

    .line 96
    .restart local v0    # "charCount":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 98
    .end local v0    # "charCount":I
    :cond_8
    const/4 v0, 0x0

    .restart local v0    # "charCount":I
    goto :goto_3

    .line 119
    .restart local v2    # "ellipsis":C
    :cond_9
    add-int/lit8 v6, v6, 0x1

    .line 120
    goto :goto_2

    .line 128
    .end local v0    # "charCount":I
    .end local v2    # "ellipsis":C
    .end local v3    # "ellipsisPos":I
    .end local v4    # "fragments":Ljava/util/ArrayList;
    .end local v5    # "i":I
    .end local v6    # "pos":I
    .end local v7    # "trimmed":Ljava/lang/String;
    :cond_a
    sget-object v8, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    goto/16 :goto_0
.end method

.method public static getDefaultAbbreviator()Lorg/apache/log4j/pattern/NameAbbreviator;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lorg/apache/log4j/pattern/NameAbbreviator;->DEFAULT:Lorg/apache/log4j/pattern/NameAbbreviator;

    return-object v0
.end method


# virtual methods
.method public abstract abbreviate(ILjava/lang/StringBuffer;)V
.end method
