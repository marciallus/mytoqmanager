.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;
.super Ljava/lang/Object;
.source "LuaMessageParser.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/MessageParser;


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;


# instance fields
.field private cardPattern:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "\\{(.*?)\\}"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->cardPattern:Ljava/util/regex/Pattern;

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;

    if-nez v0, :cond_1

    .line 135
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;

    monitor-enter v1

    .line 137
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;

    .line 141
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public parseMessage(Ljava/lang/String;[B)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
    .locals 18
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "msgBytes"    # [B

    .prologue
    .line 41
    new-instance v9, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v9, v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;-><init>(Ljava/lang/String;[B)V

    .line 43
    .local v9, "message":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;
    const/4 v3, 0x0

    .line 48
    .local v3, "card":Ljava/lang/String;
    :try_start_0
    new-instance v15, Ljava/lang/String;

    const-string v16, "UTF-8"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 51
    const-string v15, "CardEvent"

    invoke-virtual {v3, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 52
    const-string v15, "DeckOfCards"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LuaMessageParser.parseMessage - card is not a \'CardEvent\', aborting parsing, appName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", card: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :cond_0
    :goto_0
    return-object v9

    .line 57
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/comm/lua/LuaMessageParser;->cardPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v15, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 58
    .local v8, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    .line 59
    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 60
    .local v4, "cardContents":Ljava/lang/String;
    const-string v15, "[\r\n]+"

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 63
    .local v13, "pairs":[Ljava/lang/String;
    move-object v2, v13

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v12, v2, v6

    .line 65
    .local v12, "pair":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 68
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 63
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 72
    :cond_3
    const-string v15, "="

    invoke-virtual {v12, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 74
    .local v11, "ops":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v11, v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 75
    .local v10, "name":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object v15, v11, v15

    const-string v16, "\""

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ","

    const-string v17, ""

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 78
    .local v14, "value":Ljava/lang/String;
    const-string v15, "id"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 79
    invoke-virtual {v9, v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setCardId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 118
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v4    # "cardContents":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "matcher":Ljava/util/regex/Matcher;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "ops":[Ljava/lang/String;
    .end local v12    # "pair":Ljava/lang/String;
    .end local v13    # "pairs":[Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 119
    .local v5, "e":Ljava/lang/Exception;
    const-string v15, "DeckOfCards"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LuaMessageParser.parseMessage - an error occurred parsing the message, aborting parsing, appName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", card: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 82
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v4    # "cardContents":Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    .restart local v8    # "matcher":Ljava/util/regex/Matcher;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "ops":[Ljava/lang/String;
    .restart local v12    # "pair":Ljava/lang/String;
    .restart local v13    # "pairs":[Ljava/lang/String;
    .restart local v14    # "value":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v15, "event"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 84
    const-string v15, "open"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 85
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setEventType(I)V

    goto :goto_2

    .line 87
    :cond_5
    const-string v15, "visible"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 88
    const/4 v15, 0x2

    invoke-virtual {v9, v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setEventType(I)V

    goto/16 :goto_2

    .line 90
    :cond_6
    const-string v15, "invisible"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 91
    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setEventType(I)V

    goto/16 :goto_2

    .line 93
    :cond_7
    const-string v15, "closed"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 94
    const/4 v15, 0x4

    invoke-virtual {v9, v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setEventType(I)V

    goto/16 :goto_2

    .line 96
    :cond_8
    const-string v15, "selected"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 97
    const/4 v15, 0x5

    invoke-virtual {v9, v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setEventType(I)V

    goto/16 :goto_2

    .line 100
    :cond_9
    const-string v15, "DeckOfCards"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "LuaMessageParser.parseMessage - unknown card event, aborting parsing, appName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", card: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/qualcomm/toq/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 106
    :cond_a
    const-string v15, "eventdata"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 107
    invoke-virtual {v9, v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setSelectedMenuOption(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 110
    :cond_b
    const-string v15, "eventdata2"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 111
    const/4 v15, 0x6

    invoke-virtual {v9, v15}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setEventType(I)V

    .line 112
    invoke-virtual {v9, v14}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/rpc/Message;->setQuickReplyOption(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method
