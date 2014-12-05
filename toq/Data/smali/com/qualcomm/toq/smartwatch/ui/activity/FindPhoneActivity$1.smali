.class Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;
.super Ljava/lang/Object;
.source "FindPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->mAndroidUtils:Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->stopMediaPlayer()V

    .line 115
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    const/4 v3, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->isCancelInitiated:Z
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;Z)Z

    .line 120
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .local v1, "jsonFindReq":Lorg/json/JSONObject;
    :try_start_1
    const-string v2, "result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    const-string v2, "description"

    const-string v3, "Found Phone"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->resetFindPhoneFlags()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;)V

    .line 131
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->foundPhoneReq(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 139
    .end local v1    # "jsonFindReq":Lorg/json/JSONObject;
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->btReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 140
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/FindPhoneActivity;->finish()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 146
    :goto_2
    return-void

    .line 127
    .restart local v1    # "jsonFindReq":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 134
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "jsonFindReq":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FindPhoneActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
