.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;
.super Ljava/lang/Object;
.source "ListCard.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final MAX_CARDS:I = 0x14


# instance fields
.field protected bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    .line 44
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    const-string v1, "childCards"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 45
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    .line 302
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->readFromParcel(Landroid/os/Parcel;)V

    .line 303
    return-void
.end method

.method private getChildCards()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    const-string v1, "childCards"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private isUniqueId(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)Z
    .locals 3
    .param p1, "card"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 364
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(ILcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "card"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .prologue
    .line 68
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->size()I

    move-result v0

    if-le p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list card already contains maximum number of cards"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    invoke-direct {p0, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->isUniqueId(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list already contains a card with the same id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 73
    return-void
.end method

.method public add(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)V
    .locals 3
    .param p1, "card"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .prologue
    .line 54
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "list card already contains maximum number of cards"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->isUniqueId(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "list already contains a card with the same id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public childAtIndex(I)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 234
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    return-void
.end method

.method public contains(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)Z
    .locals 2
    .param p1, "card"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .prologue
    .line 117
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->get(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 254
    if-ne p0, p1, :cond_0

    .line 255
    const/4 v0, 0x1

    .line 262
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 258
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 259
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public get(I)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 83
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    return-object v0
.end method

.method public get(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    .locals 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 95
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "id must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 99
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .line 101
    .local v0, "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 271
    const/4 v0, 0x5

    .line 273
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 274
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 276
    return v0
.end method

.method public indexOfChild(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)I
    .locals 2
    .param p1, "card"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .prologue
    .line 222
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFull()Z
    .locals 2

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 345
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    .line 346
    return-void
.end method

.method public remove(I)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 141
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index out of range"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 165
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "id must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->get(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    move-result-object v0

    .line 169
    .local v0, "card":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->indexOfChild(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->remove(I)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    move-result-object v1

    .line 173
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public remove(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;)Z
    .locals 2
    .param p1, "card"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .prologue
    .line 153
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "ListCard["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    const-string v2, "childCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->getChildCards()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 335
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 336
    return-void
.end method
