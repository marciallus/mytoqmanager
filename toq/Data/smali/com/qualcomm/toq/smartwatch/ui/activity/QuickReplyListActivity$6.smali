.class Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;
.super Ljava/lang/Object;
.source "QuickReplyListActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;


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
    .line 574
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 3
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 576
    const-string v0, "QuickReplyListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " DropListener from = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->moveListItem(II)V

    .line 584
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mCurrentQuickReplys:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->setUpdateList(Ljava/util/ArrayList;)V

    .line 588
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mQuickReplyAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/QuickReplyAdapter;->notifyDataSetChanged()V

    .line 591
    :cond_0
    return-void
.end method
