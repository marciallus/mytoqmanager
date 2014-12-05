.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
.source "InternalDeckOfCards.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;-><init>(Landroid/os/Parcel;)V

    .line 98
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "appZipFileName"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "appZipFileName"    # Ljava/lang/String;
    .param p4, "isNewAppZip"    # Z

    .prologue
    .line 42
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;)V

    .line 44
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "appZipFileName"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "isNewAppZip"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    return-void
.end method


# virtual methods
.method public getAppZipFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "appZipFileName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNewAppZip()Z
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "isNewAppZip"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setNewAppZip(Z)V
    .locals 2
    .param p1, "isNewAppZip"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalDeckOfCards;->bundle:Landroid/os/Bundle;

    const-string v1, "isNewAppZip"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "InternalDeckOfCards["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;->toString()Ljava/lang/String;

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
