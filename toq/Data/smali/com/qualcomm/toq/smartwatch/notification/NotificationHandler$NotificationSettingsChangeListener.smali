.class Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;
.super Ljava/lang/Object;
.source "NotificationHandler.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationSettingsChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;


# direct methods
.method private constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    .locals 0

    .prologue
    .line 979
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;
    .param p2, "x1"    # Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$1;

    .prologue
    .line 979
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;-><init>(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 988
    const-string v2, "notification_settings_key"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 992
    :try_start_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->getStoredNotificationSettings()Ljava/util/HashMap;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$900(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Ljava/util/HashMap;

    move-result-object v3

    # setter for: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$802(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 994
    const-string v2, "NotificationHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NotificationHandler.NotificationSettingsChangeListener.onSharedPreferenceChanged - updated notification settings map, notificationSettingsMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # getter for: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->notificationSettingsMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$800(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->syncByNotificationSettings()Z
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$1000(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)Z

    move-result v1

    .line 1001
    .local v1, "isChanged":Z
    if-eqz v1, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler$NotificationSettingsChangeListener;->this$0:Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;

    # invokes: Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->storeAndPush()V
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;->access$1100(Lcom/qualcomm/toq/smartwatch/notification/NotificationHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    .end local v1    # "isChanged":Z
    :cond_0
    :goto_0
    return-void

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NotificationHandler"

    const-string v3, "NotificationHandler.NotificationSettingsChangeListener.onSharedPreferenceChanged - an error occurred updating notification settings map"

    invoke-static {v2, v3, v0}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
