.class Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$5;
.super Ljava/lang/Object;
.source "AdvancedScreenSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->initToqTalkView()V
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
    .line 957
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 961
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    const-string v0, "AdvancedScreenSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Toq Talk settings got changed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    const-string v1, "toq_talk_on_off_key"

    invoke-virtual {v0, v1, p2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putBoolean(Ljava/lang/String;Z)V

    .line 965
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V

    .line 968
    :cond_0
    return-void
.end method
