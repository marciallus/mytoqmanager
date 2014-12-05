.class Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$2;
.super Ljava/lang/Object;
.source "HelpScreenActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->showSendAppLogInfoDialog()V
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
    .line 188
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 194
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$2;->this$0:Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    # getter for: Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->access$100(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 197
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "app_logs_dialog_checkbox_key"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
