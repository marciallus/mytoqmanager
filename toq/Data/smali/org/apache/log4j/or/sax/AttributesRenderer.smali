.class public Lorg/apache/log4j/or/sax/AttributesRenderer;
.super Ljava/lang/Object;
.source "AttributesRenderer.java"

# interfaces
.implements Lorg/apache/log4j/or/ObjectRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public doRender(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    instance-of v6, p1, Lorg/xml/sax/Attributes;

    if-eqz v6, :cond_2

    .line 42
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .local v5, "sbuf":Ljava/lang/StringBuffer;
    move-object v0, p1

    .line 43
    check-cast v0, Lorg/xml/sax/Attributes;

    .line 44
    .local v0, "a":Lorg/xml/sax/Attributes;
    invoke-interface {v0}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    .line 45
    .local v4, "len":I
    const/4 v2, 0x1

    .line 46
    .local v2, "first":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 47
    if-eqz v2, :cond_0

    .line 48
    const/4 v2, 0x0

    .line 52
    :goto_1
    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const/16 v6, 0x3d

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    invoke-interface {v0, v3}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 50
    :cond_0
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    .end local v0    # "a":Lorg/xml/sax/Attributes;
    .end local v2    # "first":Z
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "sbuf":Ljava/lang/StringBuffer;
    :goto_2
    return-object v6

    .line 59
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_2

    .line 60
    :catch_0
    move-exception v1

    .line 61
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method
