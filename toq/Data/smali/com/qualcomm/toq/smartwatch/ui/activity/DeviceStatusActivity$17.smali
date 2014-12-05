.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V
    .locals 0

    .prologue
    .line 1406
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1411
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1412
    .local v1, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1413
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0c0001

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1415
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f090271

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 1416
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->setLogMenu()V

    .line 1419
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getCustomsBuildFlag()Z

    move-result v3

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Z)Z

    .line 1421
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f090277

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Enable Custom FW: ON"

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1426
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 1427
    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1495
    return-void

    .line 1421
    :cond_0
    const-string v2, "Enable Custom FW: OFF"

    goto :goto_0
.end method
