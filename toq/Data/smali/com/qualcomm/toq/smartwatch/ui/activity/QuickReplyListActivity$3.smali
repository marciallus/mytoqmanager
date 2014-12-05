.class Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$3;
.super Ljava/lang/Object;
.source "QuickReplyListActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 374
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 379
    if-eqz p2, :cond_0

    .line 381
    const-string v0, "QuickReplyListActivity"

    const-string v1, "Edit text is focused"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->mNewQRDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/QuickReplyListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 385
    :cond_0
    return-void
.end method
