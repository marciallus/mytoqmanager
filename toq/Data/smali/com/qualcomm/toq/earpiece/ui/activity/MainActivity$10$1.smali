.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;
.super Ljava/util/TimerTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;)V
    .locals 0

    .prologue
    .line 3700
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3704
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;

    iget-object v0, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    new-instance v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$10$1;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3716
    return-void
.end method
