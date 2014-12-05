.class Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "FindWDActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x3

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "action":Ljava/lang/String;
    :try_start_0
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_FOUND_WD_REQUEST:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 190
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->finish()V

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_BLUETOOTH_NOT_ENABLED:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    const-string v4, "FindWDActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 196
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_CONNECTION_STATE_CHANGE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 197
    const-string v4, "FindWDActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 199
    .local v3, "state":I
    const-string v4, "endpointtype"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 200
    .local v2, "endPointType":I
    if-eq v2, v7, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    const/4 v4, 0x1

    if-eq v2, v4, :cond_0

    .line 204
    if-eq v3, v7, :cond_0

    .line 206
    :try_start_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindWDActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 209
    :catch_1
    move-exception v1

    .line 210
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "FindWDActivity"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method
