.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;
.source "InternalNotifyTextCard.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 272
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;-><init>(Landroid/os/Parcel;)V

    .line 266
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "headerText"    # Ljava/lang/String;
    .param p3, "timeMillis"    # J
    .param p5, "titleText"    # Ljava/lang/String;
    .param p6, "messageText"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct/range {p0 .. p6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setIconURI(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V

    .line 28
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageURI(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static getAllJoynNotificationInstance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "timeMillis"    # J
    .param p4, "titleText"    # Ljava/lang/String;
    .param p5, "messageText"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 243
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 245
    .local v0, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V

    .line 246
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setInfoText(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setReceivingEvents(Z)V

    .line 248
    invoke-virtual {v0, v8}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    .line 250
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V

    .line 251
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setIconURI(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageURI(Ljava/lang/String;)V

    .line 254
    return-object v0
.end method

.method public static getNotificationHandlerInstance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "timeMillis"    # J
    .param p4, "titleText"    # Ljava/lang/String;
    .param p5, "messageText"    # [Ljava/lang/String;
    .param p6, "infoText"    # Ljava/lang/String;
    .param p7, "isOngoing"    # Z

    .prologue
    const/4 v7, 0x0

    .line 186
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 188
    .local v0, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V

    .line 189
    invoke-virtual {v0, p6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setInfoText(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setReceivingEvents(Z)V

    .line 191
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    .line 193
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V

    .line 194
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setIconURI(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageURI(Ljava/lang/String;)V

    .line 197
    return-object v0
.end method

.method public static getRemoteToqNotificationInstance(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .locals 7
    .param p0, "notificationTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "iconURI"    # Ljava/lang/String;

    .prologue
    .line 155
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getTitleText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 158
    .local v0, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getMenuOptionObjs()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V

    .line 159
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->getInfoText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setInfoText(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->isReceivingEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setReceivingEvents(Z)V

    .line 161
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->isShowDivider()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    .line 163
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/NotificationTextCard;->isVibeAlert()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V

    .line 164
    invoke-virtual {v0, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setIconURI(Ljava/lang/String;)V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageURI(Ljava/lang/String;)V

    .line 167
    return-object v0
.end method

.method public static getRemoteToqNotificationLegacyInstance(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "timeMillis"    # J
    .param p4, "titleText"    # Ljava/lang/String;
    .param p5, "messageText"    # [Ljava/lang/String;
    .param p6, "infoText"    # Ljava/lang/String;
    .param p7, "iconURI"    # Ljava/lang/String;

    .prologue
    .line 216
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 218
    .local v0, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V

    .line 219
    invoke-virtual {v0, p6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setInfoText(Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setReceivingEvents(Z)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    .line 223
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V

    .line 224
    invoke-virtual {v0, p7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setIconURI(Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageURI(Ljava/lang/String;)V

    .line 227
    return-object v0
.end method

.method public static getSimpleTextCardInstance(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .locals 8
    .param p0, "simpleTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;

    .prologue
    const/4 v7, 0x0

    .line 127
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getTitleText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/String;)V

    .line 130
    .local v0, "notifyCard":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getMenuOptionObjs()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V

    .line 131
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getInfoText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setInfoText(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->isReceivingEvents()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setReceivingEvents(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->isShowDivider()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setShowDivider(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->getCardImageId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageId(Ljava/lang/String;)V

    .line 137
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setVibeAlert(Z)V

    .line 138
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setIconURI(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v0, v7}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->setCardImageURI(Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method private setCardImageId(Ljava/lang/String;)V
    .locals 2
    .param p1, "cardImageId"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "cardImageId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getCardImageURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "cardImageURI"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isVibeAlert()Z
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isVibeAlert"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setCardImageURI(Ljava/lang/String;)V
    .locals 2
    .param p1, "cardImageURI"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "cardImageURI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setIconURI(Ljava/lang/String;)V
    .locals 2
    .param p1, "iconURI"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "icon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setVibeAlert(Z)V
    .locals 2
    .param p1, "isVibeAlert"    # Z

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->bundle:Landroid/os/Bundle;

    const-string v1, "isVibeAlert"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "InternalNotifyTextCard["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/SimpleTextCard;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
