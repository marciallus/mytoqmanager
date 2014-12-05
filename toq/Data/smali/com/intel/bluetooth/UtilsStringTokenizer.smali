.class Lcom/intel/bluetooth/UtilsStringTokenizer;
.super Ljava/lang/Object;
.source "UtilsStringTokenizer.java"


# instance fields
.field private currentPosition:I

.field private delimiter:Ljava/lang/String;

.field private newPosition:I

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->str:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->delimiter:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    .line 57
    invoke-direct {p0}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextPosition()V

    .line 58
    return-void
.end method

.method private nextPosition()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->str:Ljava/lang/String;

    iget-object v1, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->delimiter:Ljava/lang/String;

    .line 69
    iget v2, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    .line 70
    iget v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    iget v1, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    if-ne v0, v1, :cond_0

    .line 74
    iget v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    .line 75
    invoke-direct {p0}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextPosition()V

    goto :goto_0
.end method


# virtual methods
.method public hasMoreTokens()Z
    .locals 2

    .prologue
    .line 64
    iget v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    iget v1, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/intel/bluetooth/UtilsStringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->str:Ljava/lang/String;

    .line 91
    iget v2, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    iget v3, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "next":Ljava/lang/String;
    iget v1, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->newPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/intel/bluetooth/UtilsStringTokenizer;->currentPosition:I

    .line 94
    invoke-direct {p0}, Lcom/intel/bluetooth/UtilsStringTokenizer;->nextPosition()V

    .line 95
    return-object v0
.end method
