.class public Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;)V
    .locals 3
    .param p1, "loader"    # Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    .prologue
    .line 1182
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1183
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    .line 1184
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1186
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1187
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1188
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1190
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1191
    .local v1, "sdFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1192
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1193
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1194
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1198
    const-string v1, "NotificationSettingsActivity"

    const-string v2, "Inside on receive"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1203
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/notification/NotificationUtils;->updateHashMapOnAppPackageUpdate(Ljava/lang/String;)V

    .line 1206
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$PackageIntentReceiver;->mLoader:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$AppListLoader;->onContentChanged()V

    .line 1207
    return-void
.end method
