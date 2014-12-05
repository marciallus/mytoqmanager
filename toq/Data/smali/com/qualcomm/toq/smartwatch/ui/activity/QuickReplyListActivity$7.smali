.class Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;
.super Ljava/lang/Object;
.source "QuickReplyListActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)V
    .locals 0

    .prologue
    .line 599
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 602
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 604
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 606
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 608
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->notifyDataSetChanged()V

    .line 612
    :cond_0
    return-void
.end method
