.class Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;
.super Ljava/lang/Object;
.source "AdvancedScreenSettingsActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setListenerToLanguageAutoSwitch()V
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
    .line 1107
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1115
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1116
    .local v2, "newIndex":I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1117
    .local v1, "locale":Ljava/lang/String;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1119
    .local v0, "languageIndex":I
    if-eqz p2, :cond_1

    .line 1120
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    const/4 v4, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isAutoLanguageOn:Z
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;Z)Z

    .line 1123
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1124
    move v2, v0

    .line 1133
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->setNewValueChecked(I)V

    .line 1134
    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$802(I)I

    .line 1135
    return-void

    .line 1128
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    const/4 v4, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isAutoLanguageOn:Z
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;Z)Z

    .line 1129
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v4

    const-string v5, "locale_key"

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method public setNewValueChecked(I)V
    .locals 6
    .param p1, "newIndex"    # I

    .prologue
    const v5, 0x7f090237

    .line 1139
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$800()I

    move-result v1

    .line 1141
    .local v1, "previousSelectedIndex":I
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1142
    .local v2, "previousView":Landroid/view/View;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, "newView":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1144
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 1145
    .local v3, "radioButton":Landroid/widget/RadioButton;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1147
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_0
    if-eqz v0, :cond_1

    .line 1148
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 1149
    .restart local v3    # "radioButton":Landroid/widget/RadioButton;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1151
    .end local v3    # "radioButton":Landroid/widget/RadioButton;
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->enableOrDisableManualLanguageSelection()V
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    .line 1152
    return-void
.end method
