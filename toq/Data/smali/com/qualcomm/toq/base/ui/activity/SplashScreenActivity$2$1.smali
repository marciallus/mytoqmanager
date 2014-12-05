.class Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 116
    const-string v0, "SplashScreenActivity"

    const-string v1, "Background threads queue is empty.Removing the handler calbacks."

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v1, v1, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iput-object v2, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 123
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iput-object v2, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundRunnable:Ljava/lang/Runnable;

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2$1;->this$1:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    iput-object v2, v0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->mBackgroundLooper:Landroid/os/Looper;

    .line 133
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
