.class Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7$1;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;)V
    .locals 0

    .prologue
    .line 863
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 867
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v2, v3

    .line 902
    :cond_0
    :goto_0
    return v2

    .line 869
    :pswitch_0
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;

    iget-object v4, v4, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    invoke-static {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$1300(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 870
    const-string v3, "DeviceStatusActivity"

    const-string v4, "Removing the generic log appender from log 4j in order to start logging"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v1

    .line 874
    .local v1, "toqLoggerFactory":Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    if-eqz v1, :cond_1

    .line 875
    const-string v3, "generic_log"

    invoke-virtual {v1, v3}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->configureLogger(Ljava/lang/String;)V

    .line 880
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$1300(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->setGenericToqLoggerEnabled(Z)V

    goto :goto_0

    .line 883
    .end local v1    # "toqLoggerFactory":Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    :cond_2
    const-string v4, "DeviceStatusActivity"

    const-string v5, "Removing the generic log appender from log 4j in order to stop logging"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    const-string v5, "genericlog_appender"

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->removeAppender(Ljava/lang/String;)V

    .line 890
    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7$1;->this$1:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;

    iget-object v4, v4, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity$7;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    invoke-static {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;->access$1300(Lcom/qualcomm/toq/earpiece/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->setGenericToqLoggerEnabled(Z)V

    goto :goto_0

    .line 894
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v3

    const-string v4, "generic_log"

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v0

    .line 897
    .local v0, "genericLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    if-eqz v0, :cond_0

    .line 898
    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;->sendLogs()V

    goto :goto_0

    .line 867
    nop

    :pswitch_data_0
    .packed-switch 0x7f090271
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
