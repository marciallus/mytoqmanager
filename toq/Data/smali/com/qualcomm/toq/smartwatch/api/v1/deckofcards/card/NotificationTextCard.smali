.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
.source "NotificationTextCard.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final ID:Ljava/lang/String; = "notification"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "timeMillis"    # J
    .param p3, "titleText"    # Ljava/lang/String;
    .param p4, "messageText"    # [Ljava/lang/String;

    .prologue
    .line 41
    const-string v0, "notification"

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setTimeMillis(J)V

    .line 44
    invoke-virtual {p0, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setTitleText(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setMessageText([Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setInfoText(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setShowDivider(Z)V

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setVibeAlert(Z)V

    .line 49
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;-><init>(Landroid/os/Parcel;)V

    .line 228
    return-void
.end method

.method private delimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "rawText"    # Ljava/lang/String;

    .prologue
    .line 258
    const-string v1, "\r"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u000c"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "delimText":Ljava/lang/String;
    const-string v1, "\\\\+\""

    const-string v2, "\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\\\+\'"

    const-string v3, "\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\'"

    const-string v3, "\\\'"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 265
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
    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v1, "parsedTextList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 288
    return-object v1

    .line 274
    :cond_0
    aget-object v2, p1, v3

    .line 276
    .local v2, "textStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 278
    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->delimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "delimitedStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 281
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    .end local v0    # "delimitedStr":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInfoText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageText()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 110
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v2, "messageText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 112
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
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "timeMillis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "titleText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isShowDivider()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isShowDivider"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isVibeAlert()Z
    .locals 3

    .prologue
    .line 190
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isVibeAlert"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setInfoText(Ljava/lang/String;)V
    .locals 3
    .param p1, "infoText"    # Ljava/lang/String;

    .prologue
    .line 151
    if-eqz p1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "infoText"

    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->delimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "infoText"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setMessageText([Ljava/lang/String;)V
    .locals 3
    .param p1, "messageText"    # [Ljava/lang/String;

    .prologue
    .line 123
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "messageText must not be null or zero length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->delimit([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 128
    .local v0, "_messageText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "messageText must not be zero length"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v2, "messageText"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 131
    return-void
.end method

.method public setShowDivider(Z)V
    .locals 2
    .param p1, "isShowDivider"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isShowDivider"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 180
    return-void
.end method

.method public setTimeMillis(J)V
    .locals 2
    .param p1, "timeMillis"    # J

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeMillis must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "timeMillis"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 72
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "titleText"    # Ljava/lang/String;

    .prologue
    .line 92
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "titleText must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->delimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "titleText must not be zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "titleText"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public setVibeAlert(Z)V
    .locals 2
    .param p1, "isVibeAlert"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isVibeAlert"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "NotificationTextCard["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 211
    invoke-super {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 212
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 210
    return-object v1
.end method
