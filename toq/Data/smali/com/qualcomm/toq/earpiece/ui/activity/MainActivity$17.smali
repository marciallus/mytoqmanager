.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 4463
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4467
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 4468
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->initializeCardDetailsDialog(I)V
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    .line 4477
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4478
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDInflatorLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 4479
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->setWatchDetailsListContent(I)V
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    .line 4487
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    new-instance v1, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4402(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 4490
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4492
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4493
    return-void

    .line 4470
    :cond_3
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 4471
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->initializeCardDetailsDialog(I)V
    invoke-static {v0, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    goto :goto_0

    .line 4473
    :cond_4
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4474
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->initializeCardDetailsDialog(I)V
    invoke-static {v0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    goto :goto_0

    .line 4481
    :cond_5
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLInflatorLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 4482
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->setWatchDetailsListContent(I)V
    invoke-static {v0, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    goto :goto_1

    .line 4484
    :cond_6
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRInflatorLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4485
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$17;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->setWatchDetailsListContent(I)V
    invoke-static {v0, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    goto :goto_1
.end method
