.class Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$3;
.super Ljava/lang/Object;
.source "MoreAppletsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)V
    .locals 0

    .prologue
    .line 733
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->getCustomDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MoreAppletsActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 737
    return-void
.end method
