.class Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;
.super Ljava/lang/Object;
.source "AppletMenuActivity.java"

# interfaces
.implements Lcom/qualcomm/toq/smartwatch/utils/quickreplylistview/TouchInterceptor$RemoveListener;


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
    .line 384
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 2
    .param p1, "which"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 390
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuInstalledPackageList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppDetailList:Ljava/util/List;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->updateAppletMenuList(Ljava/util/List;)V

    .line 393
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->mAppletMenuListAdapter:Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AppletMenuActivity;)Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AppletMenuAdapter;->notifyDataSetChanged()V

    .line 396
    :cond_0
    return-void
.end method
