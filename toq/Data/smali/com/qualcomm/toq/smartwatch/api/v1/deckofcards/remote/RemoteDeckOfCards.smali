.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;
.source "RemoteDeckOfCards.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;-><init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listCard"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/DeckOfCards;-><init>(Landroid/os/Parcel;)V

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteDeckOfCards;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
