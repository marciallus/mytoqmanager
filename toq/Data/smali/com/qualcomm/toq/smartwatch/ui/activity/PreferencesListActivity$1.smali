.class Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;
.super Ljava/lang/Object;
.source "PreferencesListActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


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
    .line 346
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 5
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    const/high16 v4, 0x10000

    .line 354
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a016b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 359
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 360
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    .line 462
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0170

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/IconStyleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 367
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 370
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0166

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 373
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a016e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 381
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 383
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 386
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a016f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 389
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 391
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 394
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0165

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 397
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 399
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 400
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 402
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0168

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 405
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 407
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 408
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 410
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a016d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 413
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 415
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 418
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0171

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 421
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 423
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a016c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 428
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 430
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 431
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 433
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_a
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 435
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 437
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 438
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 440
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_b
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0169

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 442
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 445
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 447
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_c
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a016a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 449
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 451
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 452
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 454
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_d
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mChildItemsTextArray:[[I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)[[I

    move-result-object v2

    aget-object v2, v2, p3

    aget v2, v2, p4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 458
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
