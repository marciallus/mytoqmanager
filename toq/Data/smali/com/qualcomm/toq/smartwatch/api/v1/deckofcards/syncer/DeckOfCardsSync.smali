.class public interface abstract Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/syncer/DeckOfCardsSync;
.super Ljava/lang/Object;
.source "DeckOfCardsSync.java"


# virtual methods
.method public abstract installDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation
.end method

.method public abstract uninstallDeckOfCards(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation
.end method

.method public abstract updateDeckOfCards(Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation
.end method

.method public abstract updateDeckOfCardsAppZip(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
        }
    .end annotation
.end method
