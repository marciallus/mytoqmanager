.class public Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;",
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
    .line 276
    new-instance v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card$1;

    invoke-direct {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card$1;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 26
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    .line 269
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->readFromParcel(Landroid/os/Parcel;)V

    .line 270
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    .line 42
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "id must not be null or zero length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v1, "isReceivingEvents"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v1, "menuOptions"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 224
    if-ne p0, p1, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 232
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_0
    return v0

    .line 228
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    check-cast p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMenuOptionObjs()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
    .locals 5

    .prologue
    .line 154
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v4, "menuOptionObjs"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 157
    .local v1, "menuOptionObjsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;>;"
    if-nez v1, :cond_2

    .line 159
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v4, "menuOptions"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 162
    .local v2, "menuOptionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "menuOptionObjsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .restart local v1    # "menuOptionObjsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    .line 181
    .end local v2    # "menuOptionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v3

    .line 166
    .restart local v2    # "menuOptionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "menuOption":Ljava/lang/String;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    invoke-direct {v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 175
    .end local v0    # "menuOption":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    goto :goto_1

    .line 181
    .end local v2    # "menuOptionsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    goto :goto_1
.end method

.method public getMenuOptions()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->getMenuOptionObjs()[Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 99
    .local v1, "menuOptionObjsList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v2, "menuOptionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3

    .line 101
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    .line 102
    .local v0, "menuOptionObj":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 241
    const/4 v0, 0x5

    .line 243
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0xb9

    .line 244
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v2

    add-int v0, v1, v2

    .line 246
    return v0
.end method

.method public isReceivingEvents()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v1, "isReceivingEvents"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 312
    const-class v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    .line 313
    return-void
.end method

.method public setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V
    .locals 5
    .param p1, "menuOptions"    # [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    .prologue
    .line 201
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_1

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v3, "menuOptionObjs"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 216
    :goto_0
    return-void

    .line 206
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v1, "menuOptionObjsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 215
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v3, "menuOptionObjs"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 209
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    .line 210
    .local v0, "menuOptionObj":Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;
    if-nez v0, :cond_2

    .line 211
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A menu option must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setMenuOptions([Ljava/lang/String;)V
    .locals 5
    .param p1, "menuOptions"    # [Ljava/lang/String;

    .prologue
    .line 124
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 125
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V

    .line 138
    :goto_0
    return-void

    .line 129
    :cond_1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "menuOptionsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v1, "menuOptionObjsList":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    invoke-virtual {p0, v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->setMenuOptionObjs([Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, "menuOption":Ljava/lang/String;
    new-instance v4, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;

    invoke-direct {v4, v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/MenuOption;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setReceivingEvents(Z)V
    .locals 2
    .param p1, "isReceivingEvents"    # Z

    .prologue
    .line 80
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    const-string v1, "isReceivingEvents"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->toString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 302
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/card/Card;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 303
    return-void
.end method
