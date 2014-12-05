.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;
.source "InternalListCard.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;-><init>(Landroid/os/Parcel;)V

    .line 45
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/internal/InternalListCard;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .local v0, "buffy":Ljava/lang/StringBuilder;
    const-string v1, "InternalListCard["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/ListCard;->toString()Ljava/lang/String;

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
