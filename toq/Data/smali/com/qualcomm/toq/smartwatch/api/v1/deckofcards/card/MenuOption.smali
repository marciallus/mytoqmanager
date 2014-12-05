.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
.super Ljava/lang/Object;
.source "MenuOption.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;",
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
    .line 152
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 24
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    .line 145
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->readFromParcel(Landroid/os/Parcel;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;-><init>(Ljava/lang/String;Z)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isQuickReply"    # Z

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    .line 53
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name must not be zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    const-string v1, "isQuickReply"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 100
    if-ne p0, p1, :cond_0

    .line 101
    const/4 v0, 0x1

    .line 108
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 104
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x5

    .line 119
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 120
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 122
    return v0
.end method

.method public isQuickReply()Z
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    const-string v1, "isQuickReply"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 188
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    .line 189
    return-void
.end method

.method public setQuickReply(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isQuickReply"    # Ljava/lang/Boolean;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    const-string v1, "isQuickReply"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 179
    return-void
.end method
