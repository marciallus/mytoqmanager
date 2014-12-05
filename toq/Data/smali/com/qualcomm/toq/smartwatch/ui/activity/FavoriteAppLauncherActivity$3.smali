.class Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;
.super Ljava/lang/Object;
.source "FavoriteAppLauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 272
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v3, 0x7f06000b

    .line 278
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->isFavAppletPageScrolled:Z
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 292
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 293
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$902(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 309
    :goto_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, p1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    goto/16 :goto_0

    .line 298
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 299
    .restart local v0    # "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$902(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    goto :goto_1

    .line 304
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 305
    .restart local v0    # "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$902(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    goto :goto_1
.end method
