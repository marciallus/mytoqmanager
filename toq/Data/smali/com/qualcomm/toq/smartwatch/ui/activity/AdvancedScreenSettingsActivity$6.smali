.class Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$6;
.super Ljava/lang/Object;
.source "AdvancedScreenSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->initUsageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 989
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 990
    const-string v2, "AdvancedScreenSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Usage Log settings got changed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v2

    const-string v3, "usage_log_on_off_key"

    invoke-virtual {v2, v3, p2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putBoolean(Ljava/lang/String;Z)V

    .line 994
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    const v3, 0x7f0a0004

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "deviceType":Ljava/lang/String;
    const-string v2, "toq"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 998
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v2

    const-string v3, "usage_log"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v1

    .line 1001
    .local v1, "usageLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    if-eqz v1, :cond_0

    .line 1003
    if-eqz p2, :cond_1

    .line 1005
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;->autoUploadLogs()V

    .line 1014
    .end local v0    # "deviceType":Ljava/lang/String;
    .end local v1    # "usageLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    :cond_0
    :goto_0
    return-void

    .line 1009
    .restart local v0    # "deviceType":Ljava/lang/String;
    .restart local v1    # "usageLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    :cond_1
    invoke-interface {v1}, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;->disableAutoUploadLogs()V

    goto :goto_0
.end method
