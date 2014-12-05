.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;)V
    .locals 0

    .prologue
    .line 1427
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1431
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move v4, v3

    .line 1491
    :cond_0
    :goto_0
    return v4

    .line 1433
    :pswitch_0
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->isGenericToqLoggerEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1434
    const-string v3, "DeviceStatusActivity"

    const-string v5, "Removing the generic log appender from log 4j in order to start logging"

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1436
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v2

    .line 1438
    .local v2, "toqLoggerFactory":Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    if-eqz v2, :cond_1

    .line 1439
    const-string v3, "generic_log"

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->configureLogger(Ljava/lang/String;)V

    .line 1444
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->setGenericToqLoggerEnabled(Z)V

    goto :goto_0

    .line 1447
    .end local v2    # "toqLoggerFactory":Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;
    :cond_2
    const-string v5, "DeviceStatusActivity"

    const-string v6, "Removing the generic log appender from log 4j in order to stop logging"

    invoke-static {v5, v6}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1449
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v5

    const-string v6, "genericlog_appender"

    invoke-virtual {v5, v6}, Lorg/apache/log4j/Logger;->removeAppender(Ljava/lang/String;)V

    .line 1454
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->mGenericToqLoggerImpl:Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qualcomm/toq/smartwatch/logger/GenericToqLoggerImpl;->setGenericToqLoggerEnabled(Z)V

    goto :goto_0

    .line 1459
    :pswitch_1
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getInstance()Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;

    move-result-object v3

    const-string v5, "generic_log"

    invoke-virtual {v3, v5}, Lcom/qualcomm/toq/smartwatch/logger/ToqLoggerFactory;->getLoggerInstance(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;

    move-result-object v0

    .line 1462
    .local v0, "genericLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    if-eqz v0, :cond_0

    .line 1463
    invoke-interface {v0}, Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;->sendLogs()V

    goto :goto_0

    .line 1467
    .end local v0    # "genericLogger":Lcom/qualcomm/toq/smartwatch/logger/ToqLogger;
    :pswitch_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->findWristDisplay()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    goto :goto_0

    .line 1470
    :pswitch_3
    const-string v3, "DeviceStatusActivity"

    const-string v5, "Starting ImageSharingActivity Activity"

    invoke-static {v3, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const-class v5, Lcom/qualcomm/toq/smartwatch/ui/activity/ImageSharingActivity;

    invoke-direct {v1, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1473
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    invoke-virtual {v3, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1477
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->printActivityContentDBLogs()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    goto/16 :goto_0

    .line 1481
    :pswitch_5
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showTFTPDialog()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)V

    goto/16 :goto_0

    .line 1484
    :pswitch_6
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v6, v6, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z
    invoke-static {v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Z

    move-result v6

    if-nez v6, :cond_3

    move v3, v4

    :cond_3
    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z
    invoke-static {v5, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1502(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Z)Z

    .line 1485
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v5, v5, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setCustomsBuildFlag(Z)V

    .line 1487
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$17;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->enaleCustomFW:Z
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "Enable Custom FW: ON"

    :goto_1
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_4
    const-string v3, "Enable Custom FW: OFF"

    goto :goto_1

    .line 1431
    :pswitch_data_0
    .packed-switch 0x7f090271
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
