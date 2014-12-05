.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AutoListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$1;,
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field mItemListEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    const v0, 0x7f03001d

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 30
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mItemListEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mItemListEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 37
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 57
    if-nez p2, :cond_2

    .line 58
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001d

    invoke-virtual {v2, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;

    invoke-direct {v1, p0, v7}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$1;)V

    .line 64
    .local v1, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;
    const v2, 0x7f09010c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->upperItem:Landroid/widget/TextView;

    .line 65
    const v2, 0x7f09010d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->lowerItem:Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :goto_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mItemListEntries:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mItemListEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mItemListEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "datas":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 77
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    .line 78
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->upperItem:Landroid/widget/TextView;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    .line 81
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->lowerItem:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    .end local v0    # "datas":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object p2

    .line 72
    .end local v1    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;
    goto :goto_0

    .line 85
    .restart local v0    # "datas":[Ljava/lang/String;
    :cond_3
    array-length v2, v0

    if-ne v2, v6, :cond_5

    .line 86
    aget-object v2, v0, v4

    if-eqz v2, :cond_4

    .line 87
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->upperItem:Landroid/widget/TextView;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    :cond_4
    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    .line 90
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->lowerItem:Landroid/widget/TextView;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 93
    :cond_5
    array-length v2, v0

    if-ne v2, v5, :cond_1

    .line 94
    aget-object v2, v0, v4

    if-eqz v2, :cond_1

    .line 95
    iget-object v2, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter$ViewHolder;->upperItem:Landroid/widget/TextView;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setItemsList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    .local p1, "mItemListEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AutoListAdapter;->mItemListEntries:Ljava/util/ArrayList;

    .line 52
    return-void
.end method
