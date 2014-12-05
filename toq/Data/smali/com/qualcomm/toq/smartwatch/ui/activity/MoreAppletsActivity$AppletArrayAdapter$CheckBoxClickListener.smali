.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "MoreAppletsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private appletDetails:Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;)V
    .locals 0
    .param p2, "appletDetails"    # Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;->appletDetails:Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    .line 483
    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;
    .param p3, "x2"    # Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$1;

    .prologue
    .line 476
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 490
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;->appletDetails:Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AppletDetails;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "packageName":Ljava/lang/String;
    move-object v2, p1

    .line 492
    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    const-string v2, "DeckOfCards"

    const-string v3, "MoreAppletsActivity.AppletArrayAdapter.checkBoxClickListener.onClick - isChecked, install..."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 502
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.qualcomm.toq.smartwatch.install.applet"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-virtual {v2, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 521
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 511
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const-string v2, "DeckOfCards"

    const-string v3, "MoreAppletsActivity.AppletArrayAdapter.checkBoxClickListener.onClick - !isChecked, uninstall..."

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 518
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter$CheckBoxClickListener;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$AppletArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->showUninstallDialog(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
