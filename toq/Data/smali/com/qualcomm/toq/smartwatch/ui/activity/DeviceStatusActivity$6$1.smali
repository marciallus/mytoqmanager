.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6$1;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;)V
    .locals 0

    .prologue
    .line 584
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 597
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mFileDetailsLogDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 601
    :cond_0
    return-void
.end method
