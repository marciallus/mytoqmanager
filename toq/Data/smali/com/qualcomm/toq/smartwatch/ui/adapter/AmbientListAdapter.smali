.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AmbientListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$1;,
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private ambientList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 40
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->ambientList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    int-to-long v0, p1

    return-wide v0
.end method

.method public getStringAtPosition(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 112
    if-nez p2, :cond_0

    .line 113
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 118
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$1;)V

    .line 119
    .local v0, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;
    const v1, 0x7f090087

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 128
    :goto_0
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->ambientList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    return-object p2

    .line 125
    .end local v0    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setLists(Ljava/util/ArrayList;)V
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
    .line 48
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->ambientList:Ljava/util/ArrayList;

    .line 49
    return-void
.end method

.method public setUpdateList(Ljava/util/ArrayList;)V
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
    .line 57
    .local p1, "lists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AmbientListAdapter;->ambientList:Ljava/util/ArrayList;

    .line 58
    return-void
.end method
