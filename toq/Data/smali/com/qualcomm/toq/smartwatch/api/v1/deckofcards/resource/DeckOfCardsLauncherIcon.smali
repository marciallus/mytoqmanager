.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Icon;
.source "DeckOfCardsLauncherIcon.java"


# static fields
.field public static final COLOR:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEIGHT:I = 0x3e

.field public static final WHITE:I = 0x1

.field public static final WIDTH:I = 0x84


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Icon;-><init>(Landroid/os/Parcel;)V

    .line 80
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "icon"    # Landroid/graphics/Bitmap;
    .param p3, "type"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Icon;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 54
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x84

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "launcher icon width must be 132 pixels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    const/16 v1, 0x3e

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "launcher icon height must be 62 pixels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    const/4 v0, 0x2

    if-eq p3, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type must WHITE or COLOR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;->bundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/DeckOfCardsLauncherIcon;->bundle:Landroid/os/Bundle;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
