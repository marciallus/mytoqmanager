.class Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;
.super Ljava/lang/Object;
.source "AppletMenuActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public drop(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 346
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->moveListItem(II)V

    .line 347
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->updateAppletMenuList(Ljava/util/List;)V

    .line 349
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->notifyDataSetChanged()V

    .line 351
    :cond_0
    return-void
.end method
