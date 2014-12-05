.class final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;
.super Ljava/lang/Object;
.source "InternalNotifyTextCard.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 275
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;-><init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 280
    new-array v0, p1, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard$1;->newArray(I)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalNotifyTextCard;

    move-result-object v0

    return-object v0
.end method
