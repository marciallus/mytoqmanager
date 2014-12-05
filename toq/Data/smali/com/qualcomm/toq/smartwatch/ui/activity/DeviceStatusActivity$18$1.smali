.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18$1;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;)V
    .locals 0

    .prologue
    .line 1509
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1514
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$18;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1517
    :cond_0
    return-void
.end method
