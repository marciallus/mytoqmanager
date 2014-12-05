.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppletGridViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$1;,
        Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private appletImageIdArray:[I

.field bgImgIndex:I

.field carouselViewsAppInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private inflator:Landroid/view/LayoutInflater;

.field pref:Landroid/content/SharedPreferences;

.field selectionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->bgImgIndex:I

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->appletImageIdArray:[I

    .line 52
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->context:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->inflator:Landroid/view/LayoutInflater;

    .line 55
    return-void

    .line 36
    :array_0
    .array-data 4
        0x7f020016
        0x7f02001c
        0x7f020015
        0x7f02001b
        0x7f020018
        0x7f02001a
        0x7f020013
        0x7f020019
        0x7f020014
    .end array-data
.end method

.method private populateUI(Landroid/view/View;I)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const v8, 0x7f0900a1

    const v7, 0x7f09009e

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;

    .line 113
    .local v1, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->appletImageNames:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-static {v4}, Lcom/qualcomm/toq/base/utils/Utils;->getFavouriteAppLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->appletImageIdArray:[I

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->appImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->appletImageIdArray:[I

    aget v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->selectionList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 120
    .local v2, "imageSelected":Landroid/widget/ImageView;
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :goto_0
    iget v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->bgImgIndex:I

    if-ne v3, p2, :cond_3

    .line 128
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    .local v0, "gridItemContainer":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    .line 130
    const v3, 0x7f020074

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 142
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->appletImageIdArray:[I

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->appletImageIdArray:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne p2, v3, :cond_4

    .line 144
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->app_bottom_margin:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 149
    :goto_2
    return-void

    .line 123
    .end local v0    # "gridItemContainer":Landroid/widget/LinearLayout;
    .end local v2    # "imageSelected":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 124
    .restart local v2    # "imageSelected":Landroid/widget/ImageView;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 136
    .restart local v0    # "gridItemContainer":Landroid/widget/LinearLayout;
    if-eqz v0, :cond_1

    .line 137
    const-string v3, "#242929"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    .line 147
    :cond_4
    iget-object v3, v1, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->app_bottom_margin:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public clearAdapter()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    .line 172
    :cond_0
    return-void
.end method

.method public getAppletImageAt(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 152
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->appletImageIdArray:[I

    aget v0, v0, p1

    return v0
.end method

.method public getAppletNameAt(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 156
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->appletImageNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->appletImageIdArray:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 87
    move-object v2, p2

    .line 88
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_1

    .line 89
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->inflator:Landroid/view/LayoutInflater;

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->inflator:Landroid/view/LayoutInflater;

    const v4, 0x7f030011

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 92
    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 93
    .local v1, "tempLayout":Landroid/widget/RelativeLayout;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 95
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$1;)V

    .line 96
    .local v0, "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;
    const v3, 0x7f0900a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->appImage:Landroid/widget/ImageView;

    .line 97
    const v3, 0x7f0900a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->app_name:Landroid/widget/TextView;

    .line 98
    const v3, 0x7f0900a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;->app_bottom_margin:Landroid/view/View;

    .line 99
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 100
    invoke-direct {p0, v2, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->populateUI(Landroid/view/View;I)V

    .line 108
    .end local v0    # "holder":Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter$ViewHolder;
    .end local v1    # "tempLayout":Landroid/widget/RelativeLayout;
    :cond_0
    :goto_0
    return-object v2

    .line 105
    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->populateUI(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setBacgroundImageIndex(I)V
    .locals 0
    .param p1, "bgImgIndex"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->bgImgIndex:I

    .line 67
    return-void
.end method

.method public setCarouselViewsAppInfoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "carouselViewsAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->carouselViewsAppInfoList:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method public setSelictionList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "selectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->selectionList:Ljava/util/ArrayList;

    .line 63
    return-void
.end method
