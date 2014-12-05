.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;)V
    .locals 0

    .prologue
    .line 3704
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3709
    const-string v0, "MainActivity"

    const-string v1, "[BassBoost] dismiss dialog box"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3712
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1$1;->this$2:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceBassBoostDialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3714
    :cond_0
    return-void
.end method
