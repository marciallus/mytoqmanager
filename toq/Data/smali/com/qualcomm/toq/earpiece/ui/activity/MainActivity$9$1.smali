.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;)V
    .locals 0

    .prologue
    .line 3353
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3353
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 3357
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    new-instance v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1$1;-><init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$9$1;)V

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3409
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3404
    :catch_0
    move-exception v0

    .line 3405
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MainActivity"

    const-string v2, "Exception while closing change Roles dialog"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3407
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
