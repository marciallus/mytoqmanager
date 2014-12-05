.class public Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;
.super Landroid/widget/BaseAdapter;
.source "WDEPDetailsListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$1;,
        Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDetailsContent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailsTitle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInflator:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p2, "wdDetailsTitle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, "wdDetailsContent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mInflator:Landroid/view/LayoutInflater;

    .line 29
    iput-object p2, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mDetailsTitle:Ljava/util/ArrayList;

    .line 30
    iput-object p3, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mDetailsContent:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mDetailsTitle:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance v0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;

    invoke-direct {v0, p0, v3}, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$1;)V

    .line 55
    .local v0, "viewHolder":Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mInflator:Landroid/view/LayoutInflater;

    const v2, 0x7f03004e

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 58
    const v1, 0x7f090269

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f09026a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    iget-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mDetailsTitle:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v2, v0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;->content:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;->mDetailsContent:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-object p2

    .line 63
    .end local v0    # "viewHolder":Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter$ViewHolder;
    goto :goto_0
.end method
