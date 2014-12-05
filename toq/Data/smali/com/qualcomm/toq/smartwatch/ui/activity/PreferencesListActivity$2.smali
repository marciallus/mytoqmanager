.class Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;
.super Ljava/lang/Object;
.source "PreferencesListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 471
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const v6, 0x7f090242

    invoke-virtual {v5, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 473
    .local v4, "prefScreenlayout":Landroid/widget/RelativeLayout;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 474
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 476
    :cond_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPreferenceDownArrow:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/widget/ImageView;

    move-result-object v5

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02010a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 477
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 478
    .local v3, "pos":[I
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mPrefsExpandableView:Landroid/widget/ExpandableListView;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/widget/ExpandableListView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ExpandableListView;->getLocationInWindow([I)V

    .line 479
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 480
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 481
    .local v1, "displaymetrics":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 482
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 484
    .local v2, "height":I
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x1

    aget v5, v3, v5

    sub-int v5, v2, v5

    add-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-direct {v0, v8, v8, v8, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 487
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 488
    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 489
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 490
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2$1;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;)V

    const-wide/16 v6, 0x2ee

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 497
    return-void
.end method
