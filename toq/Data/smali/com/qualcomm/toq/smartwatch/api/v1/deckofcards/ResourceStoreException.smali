.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStoreException;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;
.source "ResourceStoreException.java"


# static fields
.field private static final serialVersionUID:J = 0x687366ad086a1553L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCardsException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method
