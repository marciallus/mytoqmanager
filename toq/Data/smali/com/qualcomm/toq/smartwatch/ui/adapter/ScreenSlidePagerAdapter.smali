.class public Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ScreenSlidePagerAdapter.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCarouselViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 23
    const-string v0, "FavoriteAppLauncherActivity"

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public addInitialViews(Landroid/widget/RelativeLayout;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_0
    return-void
.end method

.method public addViews(Landroid/widget/RelativeLayout;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/RelativeLayout;
    .param p2, "position"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding View at position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->notifyDataSetChanged()V

    .line 98
    :cond_0
    return-void
.end method

.method public clearAdapter()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    .line 110
    :cond_0
    return-void
.end method

.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 2
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Remove view called"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 66
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    .line 68
    :cond_0
    return-void
.end method

.method public getCarouselViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 47
    const/4 v0, -0x2

    return v0
.end method

.method public getPageWidth(I)F
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    const v0, 0x3eb33333

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 3
    .param p1, "collection"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 33
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Inside instantiateItem"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    .line 36
    .local v0, "layout":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->mCarouselViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "layout":Landroid/widget/RelativeLayout;
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 38
    .restart local v0    # "layout":Landroid/widget/RelativeLayout;
    check-cast p1, Landroid/support/v4/view/ViewPager;

    .end local p1    # "collection":Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    .line 40
    :cond_0
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 54
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method
