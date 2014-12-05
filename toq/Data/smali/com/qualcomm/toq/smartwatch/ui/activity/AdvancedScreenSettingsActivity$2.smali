.class Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$2;
.super Ljava/lang/Object;
.source "AdvancedScreenSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->onResume()V
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
    .line 341
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 347
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    const-string v1, "vibrating_alerts_key"

    invoke-virtual {v0, v1, p2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putBoolean(Ljava/lang/String;Z)V

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->updateAdvanceSettingsJson()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    .line 352
    return-void
.end method
