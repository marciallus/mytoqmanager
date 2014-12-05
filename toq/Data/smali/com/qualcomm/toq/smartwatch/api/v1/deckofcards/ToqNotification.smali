.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;
.super Ljava/lang/Object;
.source "ToqNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;",
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
    .line 289
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    .line 282
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->readFromParcel(Landroid/os/Parcel;)V

    .line 283
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "timeMillis"    # J
    .param p5, "titleText"    # Ljava/lang/String;
    .param p6, "messageText"    # [Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;-><init>(JLjava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;)V

    .line 52
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "notificationCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "notificationCard must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "notificationCard"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 237
    if-ne p0, p1, :cond_0

    .line 238
    const/4 v0, 0x1

    .line 245
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 241
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 242
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 245
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfoText()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getInfoText()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "infoText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMessageText()[Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v2, "messageText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 183
    .local v0, "_messageText":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "notificationCard"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    return-object v0
.end method

.method public getTimeMillis()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getTimeMillis()J

    move-result-wide v0

    .line 120
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "timeMillis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getTitleText()Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    const-string v1, "titleText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x5

    .line 256
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 257
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 259
    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 325
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    .line 326
    return-void
.end method

.method public setInfoText(Ljava/lang/String;)V
    .locals 1
    .param p1, "infoText"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setInfoText(Ljava/lang/String;)V

    .line 229
    return-void
.end method

.method public setMessageText([Ljava/lang/String;)V
    .locals 1
    .param p1, "messageText"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setMessageText([Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public setTimeMillis(J)V
    .locals 1
    .param p1, "timeMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setTimeMillis(J)V

    .line 135
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .param p1, "titleText"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->getNotificationCard()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->setTitleText(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ToqNotification;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 316
    return-void
.end method
