.class Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;
.super Ljava/lang/Object;
.source "MusicControlUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->sendKeyCodeToComponent(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)V
    .locals 0

    .prologue
    .line 911
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 915
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 917
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$000(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 924
    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->recentKeyCode:I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$100()I

    move-result v2

    const/16 v3, 0x55

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$200(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$200(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.nullsoft.winamp"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 931
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$200(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v2, "Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Service name added unSupportedAppsMap :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " recentKeyCode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->recentKeyCode:I
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$100()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 942
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    const-string v2, "com.google.android.music"

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 944
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 961
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 950
    :cond_2
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->unSupportedAppsMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$200(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    const-string v2, "Music"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Service name removed unSupportedAppsMap :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->mSelectedAppEntry:Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;->access$300(Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils;)Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/utils/MusicControlUtils$AppEntry;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
