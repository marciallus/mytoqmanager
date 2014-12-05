.class Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$3;
.super Ljava/lang/Object;
.source "AboutScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showLicenseAgreement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

.field final synthetic val$licAgrDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 633
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$3;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$3;->val$licAgrDialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 636
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$3;->val$licAgrDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 637
    return-void
.end method
