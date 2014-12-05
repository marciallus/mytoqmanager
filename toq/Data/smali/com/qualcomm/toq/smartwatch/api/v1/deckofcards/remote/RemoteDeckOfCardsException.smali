.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;
.super Ljava/lang/Exception;
.source "RemoteDeckOfCardsException.java"


# static fields
.field private static final serialVersionUID:J = 0x687366ad086a1553L


# instance fields
.field private errorCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 48
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 49
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 82
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    .line 59
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    const-string v2, "errorCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCardsException;->errorCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 103
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 104
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    return-object v1
.end method
