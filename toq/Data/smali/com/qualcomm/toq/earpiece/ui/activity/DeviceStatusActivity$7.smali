.class Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)V
    .locals 0

    .prologue
    .line 846
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 851
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 852
    .local v1, "popup":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 853
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v2, 0x7f0c0001

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 855
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    const v4, 0x7f090271

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mLogItem:Landroid/view/MenuItem;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$1202(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;

    .line 856
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->setLogMenu()V

    .line 858
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 859
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    const v3, 0x7f090273

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 862
    :cond_0
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 863
    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 905
    return-void
.end method
