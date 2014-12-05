.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;
.super Ljava/lang/Object;
.source "LuaMessageTranslator.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/MessageTranslator;


# static fields
.field private static final DELETE_CARD_TYPE:Ljava/lang/String; = "DeleteCard"

.field private static final NOTIFY_CARD_TYPE:Ljava/lang/String; = "NotifyCard"

.field private static final POPUP_CARD_TYPE:Ljava/lang/String; = "PopupCard"

.field private static final VERSION:Ljava/lang/String; = "2"

.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addPartialDetail(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;
    .locals 9
    .param p1, "cardLua"    # Ljava/lang/String;
    .param p2, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .prologue
    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .local v2, "details":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v7, v7

    rsub-int v7, v7, 0xefa

    add-int/lit8 v4, v7, -0x8

    .line 136
    .local v4, "freeBytes":I
    const/4 v5, 0x1

    .line 140
    .local v5, "isFirst":Z
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v0, "detail":Ljava/lang/StringBuilder;
    if-nez v5, :cond_0

    .line 145
    const-string v7, ", "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_0
    const-string v7, "\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v1, v7

    .line 152
    .local v1, "detailLen":I
    if-gt v1, v4, :cond_1

    .line 154
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    sub-int/2addr v4, v1

    .line 156
    const/4 v5, 0x0

    .line 165
    goto :goto_0

    .line 168
    .end local v0    # "detail":Ljava/lang/StringBuilder;
    .end local v1    # "detailLen":I
    .end local v4    # "freeBytes":I
    .end local v5    # "isFirst":Z
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "DeckOfCards"

    const-string v8, "LuaMessageTranslator.addPartialDetail - an error occurred parsing the card detail"

    invoke-static {v7, v8, v3}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v7, "%DETAIL%"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 174
    return-object p1
.end method

.method private generateBasicCard(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;
    .locals 7
    .param p1, "cardType"    # Ljava/lang/String;
    .param p2, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " { "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "buffy":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v3, "version = 2, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getHeaderText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 193
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getHeaderText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    :cond_0
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getTitleText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getTitleText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :cond_1
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    const-string v3, "NotifyCard"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 203
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_3
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getInfoText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getInfoText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_4
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->isReceivingEvents()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 215
    const-string v3, "cardevents = \"true\", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMenuOptionObjs()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    move-result-object v2

    .line 220
    .local v2, "menuOptions":[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
    array-length v3, v2

    if-lez v3, :cond_5

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "options = {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateLuaMenuOptionsArray([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .end local v2    # "menuOptions":[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
    :cond_5
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->isShowDivider()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 228
    const-string v3, "divider = \"true\", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    :cond_6
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getIconURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 235
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getIconURI()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, "iconURI":Ljava/lang/String;
    const-string v3, "fms:/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fms:/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 241
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icon = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .end local v1    # "iconURI":Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getCardImageURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "picture = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getCardImageURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_9
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->isVibeAlert()Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "PopupCard"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 251
    const-string v3, "suppressvibe = \"true\", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_a
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_b

    .line 256
    const-string v3, "detail = { %DETAIL% } "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    :cond_b
    const-string v3, "}\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private generateCard(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;Z)Ljava/lang/String;
    .locals 3
    .param p1, "cardType"    # Ljava/lang/String;
    .param p2, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .param p3, "isSizeRestricted"    # Z

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateBasicCard(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "cardLua":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_0

    .line 113
    if-eqz p3, :cond_1

    .line 114
    invoke-direct {p0, v0, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->addPartialDetail(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :cond_0
    :goto_0
    return-object v0

    .line 117
    :cond_1
    const-string v1, "%DETAIL%"

    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getMessageText()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateLuaArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private generateLuaArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "items"    # [Ljava/lang/String;

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v0, "buffy":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 281
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private generateLuaMenuOptionsArray([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)Ljava/lang/String;
    .locals 7
    .param p1, "menuOptions"    # [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    .prologue
    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "buffy":Ljava/lang/StringBuilder;
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    .line 296
    .local v2, "menuOption":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
    const-string v3, "{\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->isQuickReply()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 303
    .end local v2    # "menuOption":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    if-nez v0, :cond_1

    .line 83
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    monitor-enter v1

    .line 85
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public generateDismissPopupMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;
    .locals 4
    .param p1, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeleteCard { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "buffy":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "timestamp = \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public generateNotifyMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;
    .locals 2
    .param p1, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .prologue
    .line 45
    const-string v0, "NotifyCard"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateCard(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public generateShowPopupMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;
    .locals 2
    .param p1, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .prologue
    .line 54
    const-string v0, "PopupCard"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateCard(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
