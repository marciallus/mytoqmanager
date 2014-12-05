.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;
.super Ljava/lang/Object;
.source "DeckOfCardsSyncFactory.java"


# static fields
.field private static inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;

    monitor-enter v1

    .line 46
    :try_start_0
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;

    .line 50
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;->inst:Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncFactory;

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDeckOfCardsSync()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;->getInstance()Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSyncImpl_v2;

    move-result-object v0

    return-object v0
.end method
