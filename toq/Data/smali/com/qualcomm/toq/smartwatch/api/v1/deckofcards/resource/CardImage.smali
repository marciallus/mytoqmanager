.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Image;
.source "CardImage.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIGHT:I = 0x120

.field public static final WIDTH:I = 0xfa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Image;-><init>(Landroid/os/Parcel;)V

    .line 55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/CardImage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Image;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 42
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card image width must be 250 pixels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x120

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "card image height must be 288 pixels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    return-void
.end method
