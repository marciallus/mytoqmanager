.class Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;
.super Ljava/util/TimerTask;
.source "AmbientAppUpgradeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->getAmbientAppUpgradeUtilsPref()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 332
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_2

    .line 333
    const-string v3, "ambient_app_upgrade_utils_update_success"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 335
    .local v0, "isUpdateSuccessfull":Z
    const-string v3, "ambient_app_upgrade_utils_timer_retry"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 336
    .local v2, "retryCounter":I
    const-string v3, "AmbientAppUpgradeUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isUpdateSuccessfull state is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "and number of retries: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    if-eqz v0, :cond_3

    .line 341
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->access$000(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;)Ljava/util/Timer;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 342
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->access$000(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 343
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    # getter for: Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->access$000(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;)Ljava/util/Timer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Timer;->purge()I

    .line 344
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    const/4 v4, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->mCityNameUpdaterTimer:Ljava/util/Timer;
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->access$002(Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;Ljava/util/Timer;)Ljava/util/Timer;

    .line 346
    :cond_1
    const-string v3, "AmbientAppUpgradeUtils"

    const-string v4, "Killing mCityNameUpdaterTimer"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    .end local v0    # "isUpdateSuccessfull":Z
    .end local v2    # "retryCounter":I
    :cond_2
    :goto_0
    return-void

    .line 348
    .restart local v0    # "isUpdateSuccessfull":Z
    .restart local v2    # "retryCounter":I
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->isWeatherScreenActive:Z

    if-nez v3, :cond_2

    .line 350
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils$1;->this$0:Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/ambient/AmbientAppUpgradeUtils;->updateOldVersionCity(Landroid/content/Context;)V

    goto :goto_0
.end method
