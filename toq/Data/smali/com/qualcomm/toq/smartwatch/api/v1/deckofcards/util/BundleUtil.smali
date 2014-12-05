.class public final Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 9
    .param p0, "bundle1"    # Landroid/os/Bundle;
    .param p1, "bundle2"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 39
    .local v1, "keys1":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 42
    .local v2, "keys2":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 43
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null key not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 47
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 95
    :cond_2
    :goto_0
    return v5

    .line 52
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_5

    .line 95
    const/4 v5, 0x1

    goto :goto_0

    .line 52
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 55
    .local v3, "obj1":Ljava/lang/Object;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "obj2":Ljava/lang/Object;
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 61
    instance-of v7, v3, [Ljava/lang/Object;

    if-eqz v7, :cond_6

    instance-of v7, v4, [Ljava/lang/Object;

    if-eqz v7, :cond_6

    .line 62
    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "obj1":Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "obj2":Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    .restart local v3    # "obj1":Ljava/lang/Object;
    .restart local v4    # "obj2":Ljava/lang/Object;
    :cond_6
    instance-of v7, v3, Landroid/os/Bundle;

    if-eqz v7, :cond_7

    instance-of v7, v4, Landroid/os/Bundle;

    if-eqz v7, :cond_7

    .line 68
    check-cast v3, Landroid/os/Bundle;

    .end local v3    # "obj1":Ljava/lang/Object;
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "obj2":Ljava/lang/Object;
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 77
    .restart local v3    # "obj1":Ljava/lang/Object;
    .restart local v4    # "obj2":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    .line 85
    :cond_8
    if-nez v3, :cond_2

    if-nez v4, :cond_2

    goto :goto_1
.end method

.method public static hashCode(Landroid/os/Bundle;)I
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 108
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 111
    .local v1, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 112
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null key not supported"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v2, "keysList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 119
    const/4 v4, 0x5

    .line 122
    .local v4, "result":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 144
    return v4

    .line 122
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 126
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_1

    .line 129
    instance-of v6, v3, [Ljava/lang/Object;

    if-eqz v6, :cond_3

    .line 130
    mul-int/lit8 v6, v4, 0x25

    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->hashCode()I

    move-result v7

    add-int v4, v6, v7

    goto :goto_0

    .line 133
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v6, v3, Landroid/os/Bundle;

    if-eqz v6, :cond_4

    .line 134
    mul-int/lit8 v6, v4, 0x25

    check-cast v3, Landroid/os/Bundle;

    .end local v3    # "obj":Ljava/lang/Object;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/api/v1/deckofcards/util/BundleUtil;->hashCode(Landroid/os/Bundle;)I

    move-result v7

    add-int v4, v6, v7

    goto :goto_0

    .line 137
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_4
    mul-int/lit8 v6, v4, 0x25

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int v4, v6, v7

    goto :goto_0
.end method

.method public static toString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "buffy":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 160
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 188
    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 162
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 164
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 168
    .local v4, "obj":Ljava/lang/Object;
    if-nez v4, :cond_2

    .line 169
    const-string v5, "null"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 183
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 173
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_2
    instance-of v5, v4, [Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 174
    check-cast v4, [Ljava/lang/Object;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 177
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
