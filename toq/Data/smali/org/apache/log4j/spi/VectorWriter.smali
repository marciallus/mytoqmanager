.class Lorg/apache/log4j/spi/VectorWriter;
.super Ljava/io/PrintWriter;
.source "VectorWriter.java"


# instance fields
.field private v:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lorg/apache/log4j/spi/NullWriter;

    invoke-direct {v0}, Lorg/apache/log4j/spi/NullWriter;-><init>()V

    invoke-direct {p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    .line 38
    return-void
.end method


# virtual methods
.method public print(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 41
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public print([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 45
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public println(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public println([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public toStringArray()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    iget-object v3, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    .line 86
    .local v1, "len":I
    new-array v2, v1, [Ljava/lang/String;

    .line 87
    .local v2, "sa":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 88
    iget-object v3, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v0

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object v2
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    add-int v1, p2, p3

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public write([C)V
    .locals 2
    .param p1, "chars"    # [C

    .prologue
    .line 69
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public write([CII)V
    .locals 2
    .param p1, "chars"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/log4j/spi/VectorWriter;->v:Ljava/util/Vector;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 74
    return-void
.end method
