.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
.super Ljava/lang/Object;
.source "DeckOfCards.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 37
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    .line 240
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->readFromParcel(Landroid/os/Parcel;)V

    .line 241
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "listCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listCard must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "listCard"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "resourceIds"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 195
    if-ne p0, p1, :cond_0

    .line 196
    const/4 v0, 0x1

    .line 203
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 199
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherIconIds()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v2, "resourceIds"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "ids":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    .line 181
    :cond_0
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 184
    .end local v0    # "ids":[Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getLauncherIcons(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;
    .locals 7
    .param p1, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;
        }
    .end annotation

    .prologue
    .line 141
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "resourceStore must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v5, "resourceIds"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "ids":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v4, v2

    if-nez v4, :cond_3

    .line 147
    :cond_1
    const/4 v4, 0x0

    new-array v0, v4, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;

    .line 166
    :cond_2
    return-object v0

    .line 151
    :cond_3
    invoke-virtual {p1, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->getResources([Ljava/lang/String;)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    move-result-object v3

    .line 153
    .local v3, "resources":[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    array-length v4, v3

    new-array v0, v4, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;

    .line 156
    .local v0, "deckOfCardsLauncherIcons":[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 159
    aget-object v4, v3, v1

    instance-of v4, v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;

    if-nez v4, :cond_4

    .line 160
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Retrieved resource is the wrong type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 163
    :cond_4
    aget-object v4, v3, v1

    check-cast v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;

    aput-object v4, v0, v1

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getListCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "listCard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 212
    const/4 v0, 0x5

    .line 214
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 215
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 217
    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 283
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    .line 284
    return-void
.end method

.method public setLauncherIcons(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;)V
    .locals 3
    .param p1, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .param p2, "deckOfCardsLauncherIcons"    # [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;

    .prologue
    .line 121
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "resourceIds"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 126
    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resourceStore must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "resourceIds"

    invoke-virtual {p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->addResources([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 273
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 274
    return-void
.end method
