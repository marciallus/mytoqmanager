.class Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$4;
.super Ljava/lang/Object;
.source "AboutScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;->showToastMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 771
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$4;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$4;->this$0:Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/AboutScreenActivity$4;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 776
    return-void
.end method
