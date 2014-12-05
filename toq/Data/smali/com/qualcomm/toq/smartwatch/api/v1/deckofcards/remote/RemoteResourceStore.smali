.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;
.super Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;
.source "RemoteResourceStore.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 18
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/ResourceStore;-><init>(Landroid/os/Parcel;)V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/remote/RemoteResourceStore;-><init>(Landroid/os/Parcel;)V

    return-void
.end method
