.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
.source "SimpleTextCard.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 315
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;-><init>(Landroid/os/Parcel;)V

    .line 309
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 36
    const-wide/16 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v2

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "headerText"    # Ljava/lang/String;
    .param p3, "timeMillis"    # J
    .param p5, "titleText"    # Ljava/lang/String;
    .param p6, "messageText"    # [Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->setHeaderText(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, p3, p4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->setTimeMillis(J)V

    .line 58
    invoke-virtual {p0, p5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->setTitleText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, p6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->setMessageText([Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->setInfoText(Ljava/lang/String;)V

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->setShowDivider(Z)V

    .line 63
    return-void
.end method

.method private delimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u000c"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 340
    .local v0, "delimText":Ljava/lang/String;
    const-string v1, "\\\\+\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\\+\'"

    const-string v3, "\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 344
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\\\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private delimit([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "textList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v1, "parsedTextList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 369
    return-object v1

    .line 355
    :cond_0
    aget-object v2, p1, v3

    .line 357
    .local v2, "textStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 359
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->delimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "delimitedStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 362
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    .end local v0    # "delimitedStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCardImage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    .locals 5
    .param p1, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;
        }
    .end annotation

    .prologue
    .line 232
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "resourceStore must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v3, "cardImageId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "cardImageId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 238
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    .line 242
    :cond_1
    invoke-virtual {p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->getResource(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    move-result-object v1

    .line 245
    .local v1, "resource":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
    instance-of v2, v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;

    if-nez v2, :cond_2

    .line 246
    new-instance v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Retrieved resource is the wrong type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    :cond_2
    check-cast v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;

    goto :goto_0
.end method

.method public getCardImageId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "cardImageId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "headerText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v2, "messageText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 149
    .local v0, "_messageText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getTimeMillis()J
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "timeMillis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "titleText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowDivider()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isShowDivider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCardImage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;)V
    .locals 3
    .param p1, "resourceStore"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
    .param p2, "cardImage"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;

    .prologue
    .line 212
    if-nez p2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "cardImageId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 217
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "resourceStore must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "cardImageId"

    invoke-virtual {p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;->addResource(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setHeaderText(Ljava/lang/String;)V
    .locals 3
    .param p1, "headerText"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "headerText"

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->delimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "headerText"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInfoText(Ljava/lang/String;)V
    .locals 3
    .param p1, "infoText"    # Ljava/lang/String;

    .prologue
    .line 190
    if-eqz p1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "infoText"

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->delimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "infoText"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageText([Ljava/lang/String;)V
    .locals 3
    .param p1, "messageText"    # [Ljava/lang/String;

    .prologue
    .line 162
    if-eqz p1, :cond_0

    .line 163
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->delimit([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 169
    .local v0, "_messageText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v2, "messageText"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 170
    return-void

    .line 166
    .end local v0    # "_messageText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "_messageText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public setShowDivider(Z)V
    .locals 2
    .param p1, "isShowDivider"    # Z

    .prologue
    .line 282
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isShowDivider"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 283
    return-void
.end method

.method public setTimeMillis(J)V
    .locals 2
    .param p1, "timeMillis"    # J

    .prologue
    .line 109
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "timeMillis"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 110
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 3
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 130
    if-eqz p1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "titleText"

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->delimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "titleText"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 291
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "SimpleTextCard["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 292
    invoke-super {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 291
    return-object v1
.end method
