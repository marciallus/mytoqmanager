.class public Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;
.super Lcom/qualcomm/toq/base/controller/DefaultController;
.source "AppMessagingController.java"


# static fields
.field private static final APP_ID_BYTES:I = 0x100

.field public static final FREE_MESSAGE_BYTES:I = 0xefa

.field private static final HEADER_BYTES:I = 0x6

.field private static final MAX_BYTES:I = 0x1000

.field private static final MAX_PAYLOAD_BYTES:I = 0xffa

.field private static inst:Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;


# instance fields
.field private internalEventListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/qualcomm/toq/base/controller/DefaultController;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->internalEventListeners:Ljava/util/Map;

    .line 45
    return-void
.end method

.method private debugPayloadBytes([B)V
    .locals 7
    .param p1, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 336
    aget-byte v1, p1, v5

    .line 338
    .local v1, "destAppIdLen":B
    new-array v0, v1, [B

    .line 339
    .local v0, "destAppIdBytes":[B
    const/4 v3, 0x1

    invoke-static {p1, v3, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 341
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    new-array v2, v3, [B

    .line 342
    .local v2, "messageBytes":[B
    add-int/lit8 v3, v1, 0x1

    array-length v4, v2

    invoke-static {p1, v3, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    const-string v3, "DeckOfCards"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppMessagingController.debugPayloadBytes - payloadBytes.length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", destAppIdLen: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", destAppIdBytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", messageBytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v2, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method private dispatchLocalMessage(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    .prologue
    .line 352
    const-string v1, "DeckOfCards"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppMessagingController.dispatchLocalMessage - packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->internalEventListeners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;

    .line 356
    .local v0, "listener":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 375
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getMessageBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;->onReceivedMessage([B)V

    .line 379
    :goto_0
    return-void

    .line 359
    :pswitch_0
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;->onCardOpen(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :pswitch_1
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;->onCardVisible(Ljava/lang/String;)V

    goto :goto_0

    .line 367
    :pswitch_2
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;->onCardInvisible(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :pswitch_3
    invoke-virtual {p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getCardId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;->onCardClosed(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private extractAppId([B)Ljava/lang/String;
    .locals 5
    .param p1, "payloadBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 307
    aget-byte v1, p1, v4

    .line 309
    .local v1, "destAppIdLen":B
    add-int/lit8 v2, v1, -0x1

    new-array v0, v2, [B

    .line 310
    .local v0, "destAppIdBytes":[B
    const/4 v2, 0x1

    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    new-instance v2, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v2
.end method

.method private extractMessageBytes([B)[B
    .locals 5
    .param p1, "payloadBytes"    # [B

    .prologue
    const/4 v4, 0x0

    .line 321
    aget-byte v0, p1, v4

    .line 323
    .local v0, "destAppIdLen":B
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [B

    .line 325
    .local v1, "messageBytes":[B
    array-length v2, v1

    if-lez v2, :cond_0

    .line 326
    add-int/lit8 v2, v0, 0x1

    array-length v3, v1

    invoke-static {p1, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    :cond_0
    return-object v1
.end method

.method private generatePayloadBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 8
    .param p1, "destAppId"    # Ljava/lang/String;
    .param p2, "luaCard"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 282
    const-string v5, "UTF-8"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 283
    .local v0, "_destAppIdBytes":[B
    array-length v5, v0

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [B

    .line 284
    .local v1, "destAppIdBytes":[B
    array-length v5, v0

    invoke-static {v0, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    array-length v5, v1

    int-to-byte v2, v5

    .line 290
    .local v2, "destAppIdLen":B
    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 293
    .local v3, "messageBytes":[B
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 294
    .local v4, "payloadBytes":[B
    aput-byte v2, v4, v7

    .line 295
    const/4 v5, 0x1

    array-length v6, v1

    invoke-static {v1, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    array-length v5, v1

    add-int/lit8 v5, v5, 0x1

    array-length v6, v3

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    return-object v4
.end method

.method public static getAppMessagingController()Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;
    .locals 2

    .prologue
    .line 255
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    if-nez v0, :cond_1

    .line 257
    const-class v1, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    .line 263
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->inst:Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;

    return-object v0

    .line 263
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addInternalEventListener(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;)V
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "internalDeckOfCardsEventListener"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCardsEventListener;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->internalEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public dismissNotificationPopup(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)V
    .locals 9
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .prologue
    const/16 v5, 0xffa

    const/4 v3, 0x0

    .line 209
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppMessagingController.dismissNotificationPopup - appPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notifyTextCard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 214
    :cond_0
    const-string v0, "DeckOfCards"

    const-string v1, "AppMessagingController.dismissNotificationPopup - unable to send outgoing message, not connected to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 220
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateDismissPopupMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;

    move-result-object v7

    .line 221
    .local v7, "cardLua":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/MessagingUtils;->generateAppId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->generatePayloadBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 224
    .local v4, "payloadBytes":[B
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->debugPayloadBytes([B)V

    .line 227
    array-length v0, v4

    if-le v0, v5, :cond_2

    .line 228
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppMessagingController.dismissNotificationPopup - payload length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > max payload length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xffa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const v5, 0x8000

    const/4 v6, 0x0

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v4    # "payloadBytes":[B
    .end local v7    # "cardLua":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 241
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppMessagingController.dismissNotificationPopup - unable to send outgoing message, appPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notifyTextCard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public handleConnHandlerMessage(IILjava/lang/Object;II)V
    .locals 11
    .param p1, "appID"    # I
    .param p2, "command"    # I
    .param p3, "payload"    # Ljava/lang/Object;
    .param p4, "transactionId"    # I
    .param p5, "endpointType"    # I

    .prologue
    .line 77
    const/4 v3, 0x0

    .line 82
    .local v3, "destAppId":Ljava/lang/String;
    if-nez p3, :cond_0

    .line 83
    :try_start_0
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Payload is null"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local p3    # "payload":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 146
    .local v4, "e":Ljava/lang/Exception;
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppMessagingController.handleConnHandlerMessage - unable to process incoming message, destApp: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 87
    .restart local p3    # "payload":Ljava/lang/Object;
    :cond_0
    :try_start_1
    instance-of v8, p3, [B

    if-nez v8, :cond_1

    .line 88
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Payload not byte[], unsupported type, payload: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 91
    :cond_1
    check-cast p3, [B

    .end local p3    # "payload":Ljava/lang/Object;
    move-object v0, p3

    check-cast v0, [B

    move-object v7, v0

    .line 94
    .local v7, "payloadBytes":[B
    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->debugPayloadBytes([B)V

    .line 97
    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->extractAppId([B)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/MessagingUtils;->getAppPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    .local v2, "appPackageName":Ljava/lang/String;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/MessagingUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "appName":Ljava/lang/String;
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppMessagingController.handleConnHandlerMessage - destAppId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", appPackageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", appName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v7}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->extractMessageBytes([B)[B

    move-result-object v6

    .line 105
    .local v6, "messageBytes":[B
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;

    move-result-object v8

    invoke-virtual {v8, v1, v6}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->parseMessage(Ljava/lang/String;[B)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    move-result-object v5

    .line 107
    .local v5, "message":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppMessagingController.handleConnHandlerMessage - message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->internalEventListeners:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    :try_start_2
    invoke-direct {p0, v2, v5}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->dispatchLocalMessage(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 115
    :catch_1
    move-exception v4

    .line 116
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppMessagingController.handleConnHandlerMessage - an error occurred dispatching local message, appPackageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 125
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->getEventType()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v8

    if-eqz v8, :cond_3

    .line 128
    :try_start_4
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;

    move-result-object v8

    invoke-virtual {v8, v2, v5}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/LocalDeckOfCardsManager;->dispatchRemoteMessage(Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 130
    :catch_2
    move-exception v4

    .line 131
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_5
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppMessagingController.handleConnHandlerMessage - an error occurred dispatching remote message, appPackageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 138
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v8, "DeckOfCards"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AppMessagingController.handleConnHandlerMessage - remote message contains an undefined event, dropping event, appPackageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method public removeInternalEventListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->internalEventListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method

.method public showNotificationPopup(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)V
    .locals 9
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "notifyTextCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    .prologue
    const/16 v5, 0xffa

    const/4 v3, 0x0

    .line 161
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppMessagingController.showNotificationPopup - appPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notifyTextCard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPointVersionState(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 166
    :cond_0
    const-string v0, "DeckOfCards"

    const-string v1, "AppMessagingController.showNotificationPopup - unable to send outgoing message, not connected to WD"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_0
    return-void

    .line 172
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageTranslator;->generateShowPopupMessage(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;)Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "cardLua":Ljava/lang/String;
    invoke-static {p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/MessagingUtils;->generateAppId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v7}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->generatePayloadBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    .line 176
    .local v4, "payloadBytes":[B
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/controller/AppMessagingController;->debugPayloadBytes([B)V

    .line 179
    array-length v0, v4

    if-le v0, v5, :cond_2

    .line 180
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppMessagingController.showNotificationPopup - payload length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") > max payload length ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xffa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v1

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const v5, 0x8000

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->createTransactionID()I

    move-result v6

    move-object v0, p0

    invoke-super/range {v0 .. v6}, Lcom/qualcomm/toq/base/controller/DefaultController;->sendControllerMessageData(IIILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v4    # "payloadBytes":[B
    .end local v7    # "cardLua":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 193
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "DeckOfCards"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppMessagingController.showNotificationPopup - unable to send outgoing message, appPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", appName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notifyTextCard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
