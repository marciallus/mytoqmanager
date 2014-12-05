.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWdCardLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 444
    return-void
.end method
