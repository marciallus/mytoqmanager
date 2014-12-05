.class public Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;
.super Landroid/app/Activity;
.source "HelpScreenActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HelpScreenActivity"


# instance fields
.field helpScreenOnClickListener:Landroid/view/View$OnClickListener;

.field private mAppLogInfoDialog:Landroid/app/Dialog;

.field private mAppLogInfoPrefs:Landroid/content/SharedPreferences;

.field private mHelpScrAppLogLayout:Landroid/widget/LinearLayout;

.field private mHelpScrBackImageLayout:Landroid/widget/LinearLayout;

.field private mHelpScrEmailSupportLayout:Landroid/widget/LinearLayout;

.field private mHelpScrSupportWebLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;

    .line 46
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    .line 48
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrBackImageLayout:Landroid/widget/LinearLayout;

    .line 57
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrSupportWebLayout:Landroid/widget/LinearLayout;

    .line 66
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrEmailSupportLayout:Landroid/widget/LinearLayout;

    .line 75
    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrAppLogLayout:Landroid/widget/LinearLayout;

    .line 123
    new-instance v0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$1;-><init>(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->helpScreenOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->showToqSupportWebsite()V

    return-void
.end method

.method static synthetic access$100(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->showSendAppLogInfoDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->sendAppLogs()V

    return-void
.end method

.method static synthetic access$400(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->sendSupportEmail()V

    return-void
.end method

.method static synthetic access$500(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private getHelpScrAppLogLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrAppLogLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 79
    const v0, 0x7f0901ba

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrAppLogLayout:Landroid/widget/LinearLayout;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrAppLogLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getHelpScrBackImageLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrBackImageLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 52
    const v0, 0x7f0901b7

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrBackImageLayout:Landroid/widget/LinearLayout;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrBackImageLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getHelpScrEmailSupportLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrEmailSupportLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 70
    const v0, 0x7f0901b9

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrEmailSupportLayout:Landroid/widget/LinearLayout;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrEmailSupportLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getHelpScrSupportWebLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrSupportWebLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 61
    const v0, 0x7f0901b8

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrSupportWebLayout:Landroid/widget/LinearLayout;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mHelpScrSupportWebLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private sendAppLogs()V
    .locals 3

    .prologue
    .line 236
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 241
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v1

    const-string v2, "usage_log"

    invoke-virtual {v1, v2}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v0

    .line 244
    .local v0, "usageLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    if-eqz v0, :cond_1

    .line 245
    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;->sendLogs()V

    .line 247
    :cond_1
    return-void
.end method

.method private sendSupportEmail()V
    .locals 7

    .prologue
    .line 250
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v2, "emailIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v3

    const-string v4, "release"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "Toq support request"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :goto_0
    const/4 v1, 0x0

    .line 271
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getAPKVariant()Ljava/lang/String;

    move-result-object v3

    const-string v4, "release"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 275
    const-string v1, "toq.support@qce.qualcomm.com"

    .line 281
    :goto_1
    const-string v3, "HelpScreenActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProjectConfig.getProjectConfig().getIssueLoggerDefaultEmail()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 287
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_2
    return-void

    .line 263
    .end local v1    # "emailAddress":Ljava/lang/String;
    :cond_0
    const-string v3, "android.intent.extra.SUBJECT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Toq support request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qualcomm/toq/base/utils/Constants;->LOG_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 278
    .restart local v1    # "emailAddress":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getIssueLoggerDefaultEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a01ce

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private setListenerForViews()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrBackImageLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->helpScreenOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrSupportWebLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->helpScreenOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrAppLogLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->helpScreenOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrEmailSupportLayout()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->helpScreenOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    return-void
.end method

.method private showSendAppLogInfoDialog()V
    .locals 9

    .prologue
    .line 161
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 163
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v1, 0x0

    .local v1, "appLogInfoCancelButton":Landroid/widget/Button;
    const/4 v3, 0x0

    .line 165
    .local v3, "appLogInfoSendLogButton":Landroid/widget/Button;
    const/4 v2, 0x0

    .line 167
    .local v2, "appLogInfoCheckBox":Landroid/widget/CheckBox;
    const/4 v0, 0x1

    .line 169
    .local v0, "appLogCheckBoxState":Z
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03002e

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 175
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    iget v6, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/lit8 v6, v6, -0x32

    const/4 v7, -0x2

    invoke-virtual {v5, v6, v7}, Landroid/view/Window;->setLayout(II)V

    .line 179
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    const v6, 0x7f0901bb

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "appLogInfoCheckBox":Landroid/widget/CheckBox;
    check-cast v2, Landroid/widget/CheckBox;

    .line 181
    .restart local v2    # "appLogInfoCheckBox":Landroid/widget/CheckBox;
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;

    if-eqz v5, :cond_0

    .line 182
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;

    const-string v6, "app_logs_dialog_checkbox_key"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 185
    :cond_0
    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    new-instance v5, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$2;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$2;-><init>(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 205
    :cond_1
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    const v6, 0x7f0901bc

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "appLogInfoCancelButton":Landroid/widget/Button;
    check-cast v1, Landroid/widget/Button;

    .line 207
    .restart local v1    # "appLogInfoCancelButton":Landroid/widget/Button;
    if-eqz v1, :cond_2

    .line 208
    new-instance v5, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$3;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$3;-><init>(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    :cond_2
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    const v6, 0x7f0901bd

    invoke-virtual {v5, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "appLogInfoSendLogButton":Landroid/widget/Button;
    check-cast v3, Landroid/widget/Button;

    .line 217
    .restart local v3    # "appLogInfoSendLogButton":Landroid/widget/Button;
    if-eqz v3, :cond_3

    .line 218
    new-instance v5, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$4;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity$4;-><init>(Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_3
    iget-object v5, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 228
    :cond_4
    return-void
.end method

.method private showToqSupportWebsite()V
    .locals 5

    .prologue
    .line 303
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://toq.qualcomm.com/app-help?utm_source=app&utm_medium=toq+app&utm_campaign=applink"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 307
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->showBrowserNotInstalledToast()V

    .line 312
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 317
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private updateAppLogsLayoutText()V
    .locals 4

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrAppLogLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0901bf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 348
    .local v0, "appLogsPrimaryText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 349
    const v2, 0x7f0a01c9

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrAppLogLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0901c0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    .local v1, "appLogsSecondaryText":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 354
    const v2, 0x7f0a01ca

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 356
    :cond_1
    return-void
.end method

.method private updateEmailSupportLayoutText()V
    .locals 4

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrEmailSupportLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0901bf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 364
    .local v0, "mailSupportPrimaryText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 365
    const v2, 0x7f0a01cb

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 368
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrEmailSupportLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0901c0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, "mailSupportSecondaryText":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 370
    const v2, 0x7f0a01cc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 372
    :cond_1
    return-void
.end method

.method private updateSupportWebLayoutText()V
    .locals 4

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrSupportWebLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0901bf

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 332
    .local v0, "supportWebPrimaryText":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 333
    const v2, 0x7f0a01c7

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getHelpScrSupportWebLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const v3, 0x7f0901c0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 337
    .local v1, "supportWebSecondaryText":Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 338
    const v2, 0x7f0a01c8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 340
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->setContentView(I)V

    .line 90
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    .line 92
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 95
    const-string v0, "app_logs_dialog_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->mAppLogInfoPrefs:Landroid/content/SharedPreferences;

    .line 98
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->updateSupportWebLayoutText()V

    .line 99
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->updateAppLogsLayoutText()V

    .line 100
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->updateEmailSupportLayoutText()V

    .line 103
    invoke-direct {p0}, Lcom/qualcomm/toq/base/ui/activity/HelpScreenActivity;->setListenerForViews()V

    .line 104
    return-void
.end method
