.class Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;
.super Ljava/lang/Object;
.source "HelpScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;
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
    .line 123
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 129
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 131
    :pswitch_0
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->finish()V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->showToqSupportWebsite()V
    invoke-static {v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$000(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;
    invoke-static {v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_logs_dialog_checkbox_key"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 141
    .local v1, "isChecked":Z
    if-eqz v1, :cond_1

    .line 142
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->showSendAppLogInfoDialog()V
    invoke-static {v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$200(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->sendAppLogs()V
    invoke-static {v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$300(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    goto :goto_0

    .line 150
    .end local v1    # "isChecked":Z
    :pswitch_3
    iget-object v2, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # invokes: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->sendSupportEmail()V
    invoke-static {v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$400(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x7f0901b7
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
