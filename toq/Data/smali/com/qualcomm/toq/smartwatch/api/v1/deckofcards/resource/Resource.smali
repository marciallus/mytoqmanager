.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bundle:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 108
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 19
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    .line 101
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->readFromParcel(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 56
    if-ne p0, p1, :cond_0

    .line 57
    const/4 v0, 0x1

    .line 64
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 60
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 61
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x5

    .line 75
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 76
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 78
    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    .line 145
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/resource/Resource;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 135
    return-void
.end method
