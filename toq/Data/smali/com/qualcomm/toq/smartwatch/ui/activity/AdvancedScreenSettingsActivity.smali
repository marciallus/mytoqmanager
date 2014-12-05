.class public Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;
.super Landroid/app/Activity;
.source "AdvancedScreenSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AdvancedScreenSettingsActivity"

.field private static sAdvancedListItemTag:Ljava/lang/String;

.field private static sInitialValue:I

.field private static sPrefsKey:Ljava/lang/String;


# instance fields
.field private dialogButtonsListener:Landroid/view/View$OnClickListener;

.field private dialogItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private isAutoLanguageOn:Z

.field private isCommunicationItem:Z

.field private mAdvancedSettingsBackLayout:Landroid/widget/LinearLayout;

.field private mAdvancedSettingsDialog:Landroid/app/Dialog;

.field private mAdvancedSettingsDialogList:Landroid/widget/ListView;

.field private mCallHistoryLayout:Landroid/widget/LinearLayout;

.field private mCallHistorySecondaryText:Landroid/widget/TextView;

.field private mCallHistoryTitle:Landroid/widget/TextView;

.field private mClockTimeoutLayout:Landroid/widget/LinearLayout;

.field private mClockTimeoutSecondaryText:Landroid/widget/TextView;

.field private mClockTimeoutTitle:Landroid/widget/TextView;

.field private mDefaultLanguage:Ljava/lang/String;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDoubleTapSpeedLayout:Landroid/widget/LinearLayout;

.field private mDoubleTapSpeedSecondaryText:Landroid/widget/TextView;

.field private mDoubleTapSpeedTitle:Landroid/widget/TextView;

.field private mLanguageAutoOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private mLanguageLocaleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageNamesArray:[Ljava/lang/String;

.field private mLanguageSettingLayout:Landroid/widget/LinearLayout;

.field private mLanguageSettingSecondaryText:Landroid/widget/TextView;

.field private mLanguageSettingTitle:Landroid/widget/TextView;

.field private mLightDurationLayout:Landroid/widget/LinearLayout;

.field private mLightDurationSecondaryText:Landroid/widget/TextView;

.field private mLightDurationTitle:Landroid/widget/TextView;

.field private mMessageHistoryLayout:Landroid/widget/LinearLayout;

.field private mMessageHistorySecondaryText:Landroid/widget/TextView;

.field private mMessageHistoryTitle:Landroid/widget/TextView;

.field private mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

.field private mPrivacySettingsLayout:Landroid/widget/LinearLayout;

.field private mPrivateNotificationSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private mResources:Landroid/content/res/Resources;

.field private mToqTalkDivider:Landroid/view/View;

.field private mToqTalkLayout:Landroid/widget/LinearLayout;

.field private mToqTalkSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private mUsageLogLayout:Landroid/widget/LinearLayout;

.field private mUsageLogSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

.field private mVibratingAlertsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I

    .line 56
    const-string v0, ""

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sPrefsKey:Ljava/lang/String;

    .line 60
    const-string v0, ""

    sput-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sAdvancedListItemTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 113
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageNamesArray:[Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;

    .line 787
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->dialogButtonsListener:Landroid/view/View$OnClickListener;

    .line 876
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->dialogItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->updateAdvanceSettingsJson()V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sPrefsKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->updateCommunicationHub()V

    return-void
.end method

.method static synthetic access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->updateSecondaryTextInListItems()V

    return-void
.end method

.method static synthetic access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->changeLanguageAutoSwitchState(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->enableOrDisableManualLanguageSelection()V

    return-void
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isCommunicationItem()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sAdvancedListItemTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isAutoLanguageOn:Z

    return v0
.end method

.method static synthetic access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isAutoLanguageOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I

    return v0
.end method

.method static synthetic access$802(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 45
    sput p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I

    return p0
.end method

.method static synthetic access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setLocaleToPref()V

    return-void
.end method

.method private changeLanguageAutoSwitchState(Z)V
    .locals 3
    .param p1, "isInitialization"    # Z

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1160
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v1, "language_setting_auto_button_checked"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isAutoLanguageOn:Z

    .line 1163
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageAutoOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iget-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isAutoLanguageOn:Z

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 1164
    return-void
.end method

.method private enableOrDisableManualLanguageSelection()V
    .locals 2

    .prologue
    .line 1167
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isAutoLanguageOn:Z

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1169
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    const v1, 0x3e99999a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    .line 1175
    :goto_0
    return-void

    .line 1172
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 1173
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAlpha(F)V

    goto :goto_0
.end method

.method private getCallHistoryLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistoryLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 236
    const v0, 0x7f090061

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistoryLayout:Landroid/widget/LinearLayout;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistoryLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getCallHistorySecondaryText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistorySecondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getCallHistoryLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistorySecondaryText:Landroid/widget/TextView;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistorySecondaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getCallHistoryTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistoryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 199
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getCallHistoryLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistoryTitle:Landroid/widget/TextView;

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mCallHistoryTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private getClockTimeoutLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 258
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutLayout:Landroid/widget/LinearLayout;

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getClockTimeoutSecondaryText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutSecondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getClockTimeoutLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutSecondaryText:Landroid/widget/TextView;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutSecondaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getClockTimeoutTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getClockTimeoutLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutTitle:Landroid/widget/TextView;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mClockTimeoutTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDoubleTapSpeedLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 222
    const v0, 0x7f090060

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedLayout:Landroid/widget/LinearLayout;

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getDoubleTapSpeedSecondaryText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedSecondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 152
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getDoubleTapSpeedLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedSecondaryText:Landroid/widget/TextView;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedSecondaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getDoubleTapSpeedTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 207
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getDoubleTapSpeedLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedTitle:Landroid/widget/TextView;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDoubleTapSpeedTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private getLanguageNamesArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1085
    .local p1, "wdSupportedLanguagesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 1087
    .local v4, "wdSupportedLanguagesArray":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1090
    .local v3, "localeKey":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1092
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getNormalizedLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v2

    .line 1094
    .local v2, "locale":Ljava/util/Locale;
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 1096
    .local v1, "indexOfList":I
    invoke-virtual {v2, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 1098
    const-string v5, "AdvancedScreenSettingsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Language "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1102
    .end local v1    # "indexOfList":I
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "localeKey":Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method private getLanguageSettingLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 250
    const v0, 0x7f090063

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingLayout:Landroid/widget/LinearLayout;

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getLanguageSettingSecondaryText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingSecondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLanguageSettingLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingSecondaryText:Landroid/widget/TextView;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingSecondaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getLanguageSettingTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLanguageSettingLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingTitle:Landroid/widget/TextView;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageSettingTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private getLightDurationLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 229
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationLayout:Landroid/widget/LinearLayout;

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getLightDurationSecondaryText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationSecondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLightDurationLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationSecondaryText:Landroid/widget/TextView;

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationSecondaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getMessageHistoryLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistoryLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 243
    const v0, 0x7f090062

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistoryLayout:Landroid/widget/LinearLayout;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistoryLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getMessageHistorySecondaryText()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistorySecondaryText:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getMessageHistoryLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090067

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistorySecondaryText:Landroid/widget/TextView;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistorySecondaryText:Landroid/widget/TextView;

    return-object v0
.end method

.method private getMessageHistoryTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistoryTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 183
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getMessageHistoryLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistoryTitle:Landroid/widget/TextView;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mMessageHistoryTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private getPrivacySettingsLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPrivacySettingsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 270
    const v0, 0x7f090059

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPrivacySettingsLayout:Landroid/widget/LinearLayout;

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPrivacySettingsLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getToqTalkLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 277
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkLayout:Landroid/widget/LinearLayout;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getUsageLogLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mUsageLogLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 284
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mUsageLogLayout:Landroid/widget/LinearLayout;

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mUsageLogLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getValueFromPrefs(Ljava/lang/String;I)I
    .locals 2
    .param p1, "prefsKey"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 504
    const/4 v0, 0x0

    .line 505
    .local v0, "prefsValue":I
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 506
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    invoke-virtual {v1, p1, p2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 508
    :cond_0
    return v0
.end method

.method private initPrivateNotificationView()V
    .locals 6

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getPrivacySettingsLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090258

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1020
    .local v0, "primaryText":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getPrivacySettingsLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090259

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1021
    .local v2, "secondaryText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1022
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v3, :cond_0

    .line 1024
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v4, "private_notification_key"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1026
    .local v1, "privacyOn":Z
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getPrivateNotificationSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 1029
    .end local v1    # "privacyOn":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getPrivateNotificationSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$7;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$7;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1047
    return-void
.end method

.method private initToqTalkView()V
    .locals 4

    .prologue
    .line 951
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v1, :cond_0

    .line 952
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v2, "toq_talk_on_off_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 954
    .local v0, "toqTalkOn":Z
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getToqTalkSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 957
    .end local v0    # "toqTalkOn":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getToqTalkSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$5;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$5;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 970
    return-void
.end method

.method private initUsageView()V
    .locals 6

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getUsageLogLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090258

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 975
    .local v0, "primaryText":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getUsageLogLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    const v4, 0x7f090259

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 976
    .local v1, "secondaryText":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00ad

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v3, :cond_0

    .line 980
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v4, "usage_log_on_off_key"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 982
    .local v2, "usageLogOn":Z
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getUsageLogSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 985
    .end local v2    # "usageLogOn":Z
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getUsageLogSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    new-instance v4, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$6;

    invoke-direct {v4, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$6;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1016
    return-void
.end method

.method private initializeAdvancedSettings()V
    .locals 3

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    .line 366
    invoke-static {p0}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getPhubPreference(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    .line 368
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    .line 370
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 373
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 375
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 377
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getWDSupportedLanguages()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    .line 380
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLanguageNamesArray(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageNamesArray:[Ljava/lang/String;

    .line 382
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v1, "default_locale_key"

    const-string v2, "en_US"

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;

    .line 384
    return-void
.end method

.method private isCommunicationItem()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isCommunicationItem:Z

    return v0
.end method

.method private setCommunicationItem(Z)V
    .locals 0
    .param p1, "isCommunicationItem"    # Z

    .prologue
    .line 126
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isCommunicationItem:Z

    .line 127
    return-void
.end method

.method private setListenerToLanguageAutoSwitch()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageAutoOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$8;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1154
    return-void
.end method

.method private setLocaleToPref()V
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 1050
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v2, :cond_1

    .line 1052
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v4, "locale_key"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    sget v5, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    const-string v3, "AdvancedScreenSettingsActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App Language set : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    sget v5, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->getAndroidUtils()Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/AndroidUtils;->updateToqLanguage()V

    .line 1061
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->getInstance()Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;

    move-result-object v1

    .line 1065
    .local v1, "toqNotificationManager":Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
    const-string v2, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_CLICK"

    invoke-virtual {v1, v2, v6}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->isToqNotificationVisible(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "com.qualcomm.toq.smartwatch.action.TOQ_NOTIFICATION_ON_DELETE"

    invoke-virtual {v1, v2, v6}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->isToqNotificationVisible(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 1070
    .local v0, "isNotificationVisible":Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getDeviceType()I

    move-result v2

    if-nez v2, :cond_0

    .line 1073
    const-string v2, "AdvancedScreenSettingsActivity"

    const-string v3, "BT disconnection notification is visible"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;->showWatchBTDisconnectNotification()V

    .line 1078
    :cond_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->recreate()V

    .line 1081
    .end local v0    # "isNotificationVisible":Z
    .end local v1    # "toqNotificationManager":Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
    :cond_1
    return-void

    .line 1065
    .restart local v1    # "toqNotificationManager":Lcom/qualcomm/toq/smartwatch/notification/ToqNotificationManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUpInitialSettings()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 395
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getVibratingAlertsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v2, "vibrating_alerts_key"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 400
    :cond_0
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkDivider:Landroid/view/View;

    .line 402
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getToqTalkLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 403
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkDivider:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 404
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->initToqTalkView()V

    .line 406
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLanguageSettingLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getUsageLogLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getClockTimeoutTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLightDurationTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getDoubleTapSpeedTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a00a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getCallHistoryTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getMessageHistoryTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLanguageSettingTitle()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f0a00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->updateSecondaryTextInListItems()V

    .line 436
    return-void
.end method

.method private showDialogForAdvancedList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .param p1, "dialogTitle"    # Ljava/lang/String;
    .param p2, "dialogDescText"    # Ljava/lang/String;
    .param p3, "indexFromPrefs"    # I
    .param p4, "prefsKey"    # Ljava/lang/String;

    .prologue
    .line 674
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    if-eqz v8, :cond_4

    .line 676
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f03000c

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 679
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v9, v9, -0x32

    const/4 v10, -0x2

    invoke-virtual {v8, v9, v10}, Landroid/view/Window;->setLayout(II)V

    .line 684
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f090069

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 685
    .local v5, "dialogTitleTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f09006a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 686
    .local v4, "dialogSecondaryTextView":Landroid/widget/TextView;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f090072

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 687
    .local v2, "buttonLayout":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f090075

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 688
    .local v7, "separateCancelButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f090073

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 689
    .local v3, "cancelButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f090074

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 690
    .local v6, "saveButton":Landroid/widget/Button;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f09006d

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    .line 696
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->isCommunicationItem()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 697
    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 698
    if-eqz p1, :cond_5

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a00b0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 700
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    const v9, 0x7f09006b

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 701
    .local v1, "autoTextAndSwitchLayout":Landroid/widget/RelativeLayout;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 702
    const v8, 0x7f09006c

    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageAutoOnOffSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 703
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->changeLanguageAutoSwitchState(Z)V

    .line 704
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setListenerToLanguageAutoSwitch()V

    .line 705
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageNamesArray:[Ljava/lang/String;

    .line 706
    .local v0, "array":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->enableOrDisableManualLanguageSelection()V

    .line 729
    .end local v1    # "autoTextAndSwitchLayout":Landroid/widget/RelativeLayout;
    :goto_0
    if-eqz p1, :cond_0

    .line 730
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 735
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 737
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 739
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v8

    invoke-virtual {v8}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 745
    :cond_1
    sput p3, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I

    .line 746
    if-eqz p4, :cond_2

    .line 747
    sput-object p4, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sPrefsKey:Ljava/lang/String;

    .line 749
    :cond_2
    if-eqz p1, :cond_3

    .line 750
    sput-object p1, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sAdvancedListItemTag:Ljava/lang/String;

    .line 754
    :cond_3
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    new-instance v9, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->sInitialValue:I

    invoke-direct {v9, v10, v0, v11}, Lcom/qualcomm/toq/smartwatch/ui/adapter/AdvancedSettingsDialogListAdapter;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 758
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialogList:Landroid/widget/ListView;

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->dialogItemsClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 759
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 762
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->dialogButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 763
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->dialogButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->dialogButtonsListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 766
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "buttonLayout":Landroid/widget/LinearLayout;
    .end local v3    # "cancelButton":Landroid/widget/Button;
    .end local v4    # "dialogSecondaryTextView":Landroid/widget/TextView;
    .end local v5    # "dialogTitleTextView":Landroid/widget/TextView;
    .end local v6    # "saveButton":Landroid/widget/Button;
    .end local v7    # "separateCancelButton":Landroid/widget/Button;
    :cond_4
    return-void

    .line 709
    .restart local v2    # "buttonLayout":Landroid/widget/LinearLayout;
    .restart local v3    # "cancelButton":Landroid/widget/Button;
    .restart local v4    # "dialogSecondaryTextView":Landroid/widget/TextView;
    .restart local v5    # "dialogTitleTextView":Landroid/widget/TextView;
    .restart local v6    # "saveButton":Landroid/widget/Button;
    .restart local v7    # "separateCancelButton":Landroid/widget/Button;
    :cond_5
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const/high16 v9, 0x7f060000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "array":[Ljava/lang/String;
    goto :goto_0

    .line 714
    .end local v0    # "array":[Ljava/lang/String;
    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 716
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 719
    if-eqz p2, :cond_7

    .line 720
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    :cond_7
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f0a00a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 723
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f060002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "array":[Ljava/lang/String;
    goto/16 :goto_0

    .line 726
    .end local v0    # "array":[Ljava/lang/String;
    :cond_8
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v9, 0x7f060001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "array":[Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private updateAdvanceSettingsJson()V
    .locals 2

    .prologue
    .line 941
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 942
    const-string v0, "AdvancedScreenSettingsActivity"

    const-string v1, "storeUpdateUserSettingsToFile() called from AdvancedSettingsActivity"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->getUserSettingsController()Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;

    move-result-object v0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/smartwatch/controller/UserSettingsController;->sendUserSettingsToWD(Landroid/content/Context;)V

    .line 948
    :cond_0
    return-void
.end method

.method private updateCommunicationHub()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 773
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    iget-boolean v0, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreCreation:Z

    if-nez v0, :cond_0

    .line 774
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreCreation:Z

    .line 775
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->storeCommHubToFile()V

    .line 780
    :goto_0
    return-void

    .line 778
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->getCommHubController()Lcom/qualcomm/toq/smartwatch/controller/CommHubController;

    move-result-object v0

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/controller/CommHubController;->bCommHubStoreUpdateCalled:Z

    goto :goto_0
.end method

.method private updateSecondaryTextInListItems()V
    .locals 10

    .prologue
    const/16 v9, 0x1f4

    const/16 v8, 0x14

    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 446
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getClockTimeoutSecondaryText()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "clock_timeout_key"

    invoke-direct {p0, v1, v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getValueFromPrefs(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getClockTimeoutSecondaryText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLightDurationSecondaryText()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "light_duration_key"

    invoke-direct {p0, v1, v7}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getValueFromPrefs(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getLightDurationSecondaryText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getDoubleTapSpeedSecondaryText()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "double_tap_speed_key"

    invoke-direct {p0, v1, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getValueFromPrefs(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getLightDoubleTapSpeedSecondaryText(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getCallHistorySecondaryText()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "CALL_HISTORY"

    invoke-direct {p0, v1, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getValueFromPrefs(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getCommunicationList(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getMessageHistorySecondaryText()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "DISP_MSG"

    invoke-direct {p0, v1, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getValueFromPrefs(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getCommunicationList(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v2, "locale_key"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 468
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v1, "locale_key"

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLanguageSettingSecondaryText()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageNamesArray:[Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v4, "locale_key"

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const-string v0, "AdvancedScreenSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double tap speed ==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "double_tap_speed_key"

    invoke-virtual {v2, v3, v9}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++Clock  time out==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "clock_timeout_key"

    invoke-virtual {v2, v3, v8}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++ Light duration==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "light_duration_key"

    invoke-virtual {v2, v3, v7}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++ Call history==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "CALL_HISTORY"

    invoke-virtual {v2, v3, v6}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "++Message History ==>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "DISP_MSG"

    invoke-virtual {v2, v3, v6}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method


# virtual methods
.method public advancedItemsOnClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 524
    .local v1, "resId":I
    packed-switch v1, :pswitch_data_0

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 528
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setCommunicationItem(Z)V

    .line 529
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 531
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "DISP_MSG"

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 534
    .local v0, "index":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a00a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "DISP_MSG"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->showDialogForAdvancedList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 540
    const-string v2, "AdvancedScreenSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating the values for showing the dialog for text message historyID==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 550
    .end local v0    # "index":I
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v2

    const-string v3, "release"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 554
    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setCommunicationItem(Z)V

    .line 555
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLanguageLocaleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v4, "locale_key"

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mDefaultLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 560
    .restart local v0    # "index":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a00b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "locale_key"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->showDialogForAdvancedList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 566
    const-string v2, "AdvancedScreenSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating the values for showing the dialog for language settingID==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 574
    .end local v0    # "index":I
    :pswitch_2
    invoke-direct {p0, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setCommunicationItem(Z)V

    .line 575
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "CALL_HISTORY"

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 580
    .restart local v0    # "index":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a00a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const-string v4, "CALL_HISTORY"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->showDialogForAdvancedList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    const-string v2, "AdvancedScreenSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating the values for showing the dialog for call historyID==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 592
    .end local v0    # "index":I
    :pswitch_3
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setCommunicationItem(Z)V

    .line 593
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "clock_timeout_key"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->getClockTimeoutIndex(I)I

    move-result v0

    .line 598
    .restart local v0    # "index":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a00a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a00a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "clock_timeout_key"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->showDialogForAdvancedList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 605
    const-string v2, "AdvancedScreenSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating the values for showing the dialog for clock timeoutID==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 612
    .end local v0    # "index":I
    :pswitch_4
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setCommunicationItem(Z)V

    .line 613
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "light_duration_key"

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->getLightDurationIndex(I)I

    move-result v0

    .line 617
    .restart local v0    # "index":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a00a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a00a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "light_duration_key"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->showDialogForAdvancedList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 623
    const-string v2, "AdvancedScreenSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating the values for showing the dialog for light durationID==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    .end local v0    # "index":I
    :pswitch_5
    invoke-direct {p0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setCommunicationItem(Z)V

    .line 631
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    if-eqz v2, :cond_0

    .line 633
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPreference:Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;

    const-string v3, "double_tap_speed_key"

    const/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/utils/PhubPreference;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->getLightDoubleTapSpeedIndex(I)I

    move-result v0

    .line 635
    .restart local v0    # "index":I
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0a00a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f0a00a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "double_tap_speed_key"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->showDialogForAdvancedList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 639
    const-string v2, "AdvancedScreenSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating the values for showing the dialog for light durationID==>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x7f09005e
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAdvancedSettingsBackLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsBackLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 88
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsBackLayout:Landroid/widget/LinearLayout;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mAdvancedSettingsBackLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getLightDurationTitle()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationTitle:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getLightDurationLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f090066

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationTitle:Landroid/widget/TextView;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mLightDurationTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method public getPrivateNotificationSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPrivateNotificationSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    if-nez v0, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getPrivacySettingsLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPrivateNotificationSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mPrivateNotificationSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method public getToqTalkSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    if-nez v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getToqTalkLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f09025f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mToqTalkSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method public getUsageLogSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mUsageLogSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    if-nez v0, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getUsageLogLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x7f09025a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mUsageLogSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mUsageLogSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method public getVibratingAlertsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mVibratingAlertsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    if-nez v0, :cond_0

    .line 76
    const v0, 0x7f090057

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mVibratingAlertsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->mVibratingAlertsSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 321
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 322
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setContentView(I)V

    .line 324
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->initializeAdvancedSettings()V

    .line 326
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->setUpInitialSettings()V

    .line 328
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 334
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getAdvancedSettingsBackLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->getVibratingAlertsSwitch()Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 355
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->initPrivateNotificationView()V

    .line 356
    invoke-direct {p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AdvancedScreenSettingsActivity;->initUsageView()V

    .line 357
    return-void
.end method
