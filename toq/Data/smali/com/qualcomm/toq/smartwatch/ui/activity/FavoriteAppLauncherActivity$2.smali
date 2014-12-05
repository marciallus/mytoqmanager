.class Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;
.super Ljava/lang/Object;
.source "FavoriteAppLauncherActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 213
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "paramLong"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "paramAdapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    .line 217
    const-string v5, "FavoriteAppLauncherActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Clicked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 219
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 222
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPagerAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/adapter/ScreenSlidePagerAdapter;->getCarouselViewList()Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    .local v0, "appletPos":I
    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->appletImageNames:[Ljava/lang/String;

    array-length v2, v5

    .line 230
    .local v2, "gridViewItemCount":I
    if-eq v0, p3, :cond_1

    if-ge v0, v2, :cond_1

    .line 231
    if-ltz v0, :cond_0

    .line 232
    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 233
    .local v4, "viewPrev":Landroid/view/View;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    const/16 v6, 0x8

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->setSelection(ILandroid/view/View;I)V
    invoke-static {v5, v6, v4, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;ILandroid/view/View;I)V

    .line 241
    .end local v0    # "appletPos":I
    .end local v2    # "gridViewItemCount":I
    .end local v4    # "viewPrev":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->setSelection(ILandroid/view/View;I)V
    invoke-static {v5, v8, p2, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;ILandroid/view/View;I)V

    .line 242
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v6

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->removeIndicatorFrom(I)V
    invoke-static {v5, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)V

    .line 243
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->gridItemIndicatorPosition:I
    invoke-static {v5, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)I

    .line 246
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->loadViewToCarousel(I)V
    invoke-static {v5, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;I)V

    .line 248
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 253
    :try_start_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mGridViewAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;

    move-result-object v8

    invoke-virtual {v8, p3}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletGridViewAdapter;->getAppletNameAt(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qualcomm/toq/base/utils/Utils;->getFavouriteAppLocalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "toastMessage":Ljava/lang/String;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->showCustomToast(Ljava/lang/String;)V
    invoke-static {v5, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 267
    .end local v3    # "toastMessage":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/util/IllegalFormatException;
    invoke-virtual {v1}, Ljava/util/IllegalFormatException;->printStackTrace()V

    goto :goto_0

    .line 262
    .end local v1    # "e":Ljava/util/IllegalFormatException;
    :catch_1
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
