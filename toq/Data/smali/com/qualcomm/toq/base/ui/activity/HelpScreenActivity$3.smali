.class Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$3;
.super Ljava/lang/Object;
.source "HelpScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->showSendAppLogInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$3;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$3;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$500(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 213
    return-void
.end method
