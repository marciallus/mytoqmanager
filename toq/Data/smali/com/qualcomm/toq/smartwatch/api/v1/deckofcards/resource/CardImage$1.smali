.class Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage$1;
.super Ljava/lang/Object;
.source "CardImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 64
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;-><init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 69
    new-array v0, p1, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage$1;->newArray(I)[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;

    move-result-object v0

    return-object v0
.end method