.class Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;
.super Ljava/lang/Object;
.source "SplashScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v1

    if-nez v1, :cond_1

    .line 41
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;->finish()V

    .line 57
    return-void

    .line 44
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 45
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    const-class v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 48
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 49
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/SplashScreenActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
