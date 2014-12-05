.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->initializeListener()V
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
    .line 674
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 676
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 677
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 682
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 683
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "Force Push Firmware Upgrade"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 684
    const-string v1, "Do you really want to force push the firmware upgrade to Toq ?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 685
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 686
    const-string v1, "OK"

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 839
    const-string v1, "CANCEL"

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$2;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 847
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 848
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->alert:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 849
    return-void
.end method
