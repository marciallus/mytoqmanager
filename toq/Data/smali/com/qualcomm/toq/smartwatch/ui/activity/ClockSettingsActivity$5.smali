.class Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;
.super Ljava/lang/Object;
.source "ClockSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v5, 0x7f0a008a

    const v6, 0x7f0a0086

    const/4 v7, 0x0

    .line 390
    const v2, 0x7f0900fa

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 391
    .local v1, "selectedImage":Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, p3

    .line 393
    .local v0, "selectedClockType":Ljava/lang/String;
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    .line 395
    const-string v2, "Weather Grid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isLocalWeatherEnabled()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V

    .line 468
    :goto_0
    return-void

    .line 407
    :cond_0
    const-string v2, "Stocks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isStockExists()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0087

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 419
    :cond_1
    const-string v2, "World Time"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isCitiesExists()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 422
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0088

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 431
    :cond_2
    const-string v2, "Activity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isActivityOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 434
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a008d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 443
    :cond_3
    const-string v2, "Degrees"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isLocalWeatherEnabled()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 445
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 454
    :cond_4
    const v2, 0x7f020118

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 456
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 462
    :cond_5
    const v2, 0x7f02013c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 464
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockSettingsSelectionMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Ljava/util/HashMap;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->updateMaxClockSelectionPromptView(Ljava/util/HashMap;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method
