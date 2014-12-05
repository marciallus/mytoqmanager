.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;)V
    .locals 0

    .prologue
    .line 2218
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$3;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$3;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2223
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$3;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2225
    :cond_0
    return-void
.end method
