.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "IconStyleGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private iconTypeImages:[Ljava/lang/Integer;

.field private iconTypeText:[Ljava/lang/String;

.field private layoutInflator:Landroid/view/LayoutInflater;

.field private selectedIconStyle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Ljava/lang/Integer;[Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconTypeImages"    # [Ljava/lang/Integer;
    .param p3, "iconTypeText"    # [Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->layoutInflator:Landroid/view/LayoutInflater;

    .line 29
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeImages:[Ljava/lang/Integer;

    .line 30
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeText:[Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeImages:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeImages:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 53
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelectedIconStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->selectedIconStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 58
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;)V

    .line 60
    .local v0, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 61
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->layoutInflator:Landroid/view/LayoutInflater;

    const v2, 0x7f030031

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    const v1, 0x7f0901c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->iconStyleImageView:Landroid/widget/ImageView;

    .line 64
    const v1, 0x7f0901ca

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->iconStyleTextView:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0901c9

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->iconStyleSelected:Landroid/widget/ImageView;

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    :goto_0
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->iconStyleImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeImages:[Ljava/lang/Integer;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->iconStyleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeText:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->geIconStyleLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->selectedIconStyle:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 76
    const-string v1, "MainActivity"

    const-string v2, "selectedIconStyle is NULL"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->getSelectedIconStyle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeText:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->getSelectedIconStyle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->iconTypeText:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->iconStyleSelected:Landroid/widget/ImageView;

    const v2, 0x7f020118

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    :goto_1
    return-object p2

    .line 69
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;
    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;

    .restart local v0    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;
    goto :goto_0

    .line 86
    :cond_2
    iget-object v1, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter$ViewHolder;->iconStyleSelected:Landroid/widget/ImageView;

    const v2, 0x7f02013c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setSelectedIconStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "iconStyle"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/IconStyleGridViewAdapter;->selectedIconStyle:Ljava/lang/String;

    .line 35
    return-void
.end method
