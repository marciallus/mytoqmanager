.class Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;
.super Ljava/lang/Object;
.source "FavoriteAppLauncherActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x1

    .line 426
    const-string v0, "FavoriteAppLauncherActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " View pager scroll state --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    if-ne p1, v3, :cond_1

    .line 430
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->isFavAppletPageScrolled:Z
    invoke-static {v0, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1002(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Z)Z

    .line 438
    :goto_0
    return-void

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->isFavAppletPageScrolled:Z
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1002(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Z)Z

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "paramInt1"    # I
    .param p2, "paramFloat"    # F
    .param p3, "paramInt2"    # I

    .prologue
    .line 415
    return-void
.end method

.method public onPageSelected(I)V
    .locals 10
    .param p1, "position"    # I

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 323
    const-string v3, "FavoriteAppLauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "On Page Selected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const/4 v3, 0x5

    if-lt p1, v3, :cond_1

    .line 327
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    const v4, 0x7f0901ac

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 336
    .local v0, "appletDeactivatedTextView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 337
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 338
    if-eq v2, p1, :cond_3

    .line 339
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    .line 340
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200f5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 343
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200f3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 346
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_4

    .line 347
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200f6

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 350
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->paginationImageList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v4, 0x7f0200f4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 356
    .end local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v4

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->removeIndicatorFrom(I)V
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)V

    .line 359
    if-lt p1, v8, :cond_9

    .line 360
    if-eqz v0, :cond_6

    .line 361
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    :cond_6
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/GridView;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 364
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 366
    :cond_7
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deActivateDeleteIcon()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    .line 394
    :cond_8
    :goto_3
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/GridView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 398
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I
    invoke-static {v4, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)I

    .line 401
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->appletImageNames:[Ljava/lang/String;

    array-length v1, v3

    .line 402
    .local v1, "gridViewItemCount":I
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v3

    if-ge v3, v1, :cond_0

    .line 404
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v4

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateSelectionBackground(IZ)V
    invoke-static {v3, v4, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;IZ)V

    goto/16 :goto_0

    .line 369
    .end local v1    # "gridViewItemCount":I
    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-eq v3, v9, :cond_a

    .line 372
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 373
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/GridView;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 374
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mAppletGridView:Landroid/widget/GridView;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/GridView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 377
    :cond_a
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 378
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 381
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    .line 384
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->enableDeleteIcon()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    goto/16 :goto_3

    .line 387
    :cond_b
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->deActivateDeleteIcon()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    goto/16 :goto_3
.end method
