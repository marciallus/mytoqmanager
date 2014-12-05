.class Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlayerSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V
    .locals 0

    .prologue
    .line 453
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 456
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicPlayerSettingsActivity- Received Intent action : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "packageName":Ljava/lang/String;
    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MusicPlayerSettingsActivity- Package Name :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->initializeMusicSettings()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/MusicPlayerSettingsActivity;)V

    .line 467
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
