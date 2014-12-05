.class public Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
.super Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;
.source "EPConnectionHandlerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EPConnectionHandlerImpl"

.field private static mInstance:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;


# instance fields
.field private connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

.field private context:Landroid/content/Context;

.field private isEPLeftSoftwareUpgradeOnProcess:Z

.field private isEPRightSoftwareUpgradeOnProcess:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->context:Landroid/content/Context;

    .line 39
    iput-boolean v1, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEPRightSoftwareUpgradeOnProcess:Z

    .line 40
    iput-boolean v1, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEPLeftSoftwareUpgradeOnProcess:Z

    return-void
.end method

.method public static getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->mInstance:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    invoke-direct {v0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->mInstance:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    .line 46
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->mInstance:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    return-object v0
.end method


# virtual methods
.method public getBassBoostMode(I)Ljava/lang/String;
    .locals 5
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 786
    const-string v2, "EPConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BassBoost] getBassBoostMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 790
    .local v0, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_bass_boost_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 793
    .local v1, "str":Ljava/lang/String;
    const-string v2, "EPConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BassBoost] getBassBoostMode returning  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    .end local v1    # "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 796
    :cond_0
    const-string v2, "EPConnectionHandlerImpl"

    const-string v3, "[BassBoost] getBassBoostMode returning NULL"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 816
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->context:Landroid/content/Context;

    .line 818
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getController(II)Lcom/qualcomm/toq/base/controller/IController;
    .locals 4
    .param p1, "appID"    # I
    .param p2, "endPointType"    # I

    .prologue
    .line 127
    const-string v1, "EPConnectionHandlerImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dest appID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    .line 129
    .local v0, "controller":Lcom/qualcomm/toq/base/controller/IController;
    if-nez p1, :cond_2

    .line 130
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->getEPVersionController()Lcom/qualcomm/toq/earpiece/controller/EPVersionController;

    move-result-object v0

    .line 136
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 137
    invoke-super {p0, p1, p2}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getController(II)Lcom/qualcomm/toq/base/controller/IController;

    move-result-object v0

    .line 139
    .end local v0    # "controller":Lcom/qualcomm/toq/base/controller/IController;
    :cond_1
    return-object v0

    .line 132
    .restart local v0    # "controller":Lcom/qualcomm/toq/base/controller/IController;
    :cond_2
    const/16 v1, 0x13

    if-ne p1, v1, :cond_0

    .line 133
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v0

    goto :goto_0
.end method

.method public getEPDependendentOnPrimaryFlag(I)Z
    .locals 4
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 722
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 725
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 734
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    .line 727
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "epLDependendentOnPrimaryFlag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 730
    :pswitch_1
    const-string v2, "epRDependendentOnPrimaryFlag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 725
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEndPointForceUpgradeRequestFlag(I)Z
    .locals 4
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 764
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 765
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 767
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 776
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return v1

    .line 769
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "ep_l_force_upgrade_Flag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 772
    :pswitch_1
    const-string v2, "ep_r_force_upgrade_Flag"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEndPointLinkKey(I)Ljava/lang/String;
    .locals 4
    .param p1, "endPointType"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 575
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 584
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 577
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v1, "ep_l_device_linkkey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 580
    :pswitch_1
    const-string v1, "ep_r_device_linkkey"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 575
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEndPointRole(I)Ljava/lang/String;
    .locals 4
    .param p1, "endPointType"    # I

    .prologue
    .line 531
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 534
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 543
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 536
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v1, "ep_l_device_role"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 539
    :pswitch_1
    const-string v1, "ep_r_device_role"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 534
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEndpointCommonLinkKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 677
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 679
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "ep_common_device_linkkey"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getEndpointConnectedEPAddress(I)Ljava/lang/String;
    .locals 4
    .param p1, "endpointType"    # I

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 656
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 658
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 667
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 660
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v1, "ep_l_device_connected_ep"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 663
    :pswitch_1
    const-string v1, "ep_r_device_connected_ep"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEndpointMode(I)Ljava/lang/String;
    .locals 4
    .param p1, "endPointType"    # I

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "app_pref"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 597
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 606
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const-string v1, ""

    :goto_0
    return-object v1

    .line 599
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v1, "ep_l_device_mode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 602
    :pswitch_1
    const-string v1, "ep_r_device_mode"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEpBatteryIndPercentage(I)Ljava/lang/String;
    .locals 5
    .param p1, "endPointType"    # I

    .prologue
    const/4 v1, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 490
    .local v0, "prefs":Landroid/content/SharedPreferences;
    packed-switch p1, :pswitch_data_0

    .line 501
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    :goto_0
    return-object v1

    .line 492
    .restart local v0    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_battery_level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 496
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_battery_level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 490
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getState(I)I
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->getState(I)I

    move-result v0

    return v0
.end method

.method public handleControllerData(IIILjava/lang/Object;II)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "srcAdd"    # I
    .param p3, "destAdd"    # I
    .param p4, "payloadData"    # Ljava/lang/Object;
    .param p5, "messageType"    # I
    .param p6, "transactionId"    # I

    .prologue
    .line 421
    invoke-super/range {p0 .. p6}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->handleControllerData(IIILjava/lang/Object;II)V

    .line 427
    return-void
.end method

.method public handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "endPoint"    # Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    .prologue
    .line 149
    invoke-super {p0, p1, p2}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->handleMessage([BLcom/qualcomm/toq/base/endpoint/IEndPoint;)V

    .line 150
    return-void
.end method

.method public initiateConnectionMgr(Landroid/content/Context;I)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "endPointType"    # I

    .prologue
    const/16 v9, 0x65

    const/4 v8, -0x1

    const/4 v7, 0x2

    .line 50
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->context:Landroid/content/Context;

    .line 51
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    .line 55
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isMoreThanOneEarPiecesHeadsetPaired()Z

    move-result v0

    .line 57
    .local v0, "areMoreEarPiecesBonded":Z
    if-eqz v0, :cond_1

    .line 58
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    const-string v4, "from ConnectionFactory - initializeMgr"

    const-string v5, "-"

    const/4 v6, 0x3

    invoke-virtual {v3, v4, v5, v6}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->disassociateEarPieces(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v4, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4, v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 74
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v1

    .line 76
    .local v1, "isEPLeftBonded":Z
    const-string v3, "EPConnectionHandlerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeConnMgr(): isEPLeftBonded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    if-eqz v3, :cond_0

    .line 80
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setConnManager(Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V

    .line 84
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneEPLeft()V

    .line 85
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v4, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    invoke-virtual {v3, v9, v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    goto :goto_0

    .line 97
    .end local v1    # "isEPLeftBonded":Z
    :cond_2
    if-ne p2, v7, :cond_0

    .line 99
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v2

    .line 101
    .local v2, "isEPRightBonded":Z
    const-string v3, "EPConnectionHandlerImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeConnMgr(): isEPRightBonded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    if-eqz v3, :cond_0

    .line 106
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->setConnManager(Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;)V

    .line 109
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->connManager:Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    invoke-interface {v3}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->associatePhoneEPRight()V

    .line 110
    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v4, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    invoke-virtual {v3, v9, v8}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    goto/16 :goto_0
.end method

.method public isEpSoftwareUpgradeOnProcess(I)Z
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 447
    packed-switch p1, :pswitch_data_0

    .line 453
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 449
    :pswitch_0
    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEPLeftSoftwareUpgradeOnProcess:Z

    goto :goto_0

    .line 451
    :pswitch_1
    iget-boolean v0, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEPRightSoftwareUpgradeOnProcess:Z

    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setBassBoostMode(ILjava/lang/String;)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 801
    const-string v2, "EPConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BassBoost] setBassBoostMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 804
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 806
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 807
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_bass_boost_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 809
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 810
    const-string v2, "EPConnectionHandlerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BassBoost] setBassBoostMode value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setEPDependendentOnPrimaryFlag(IZ)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "status"    # Z

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 704
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 706
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 707
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 717
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 719
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 709
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "epLDependendentOnPrimaryFlag"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 713
    :pswitch_1
    const-string v2, "epRDependendentOnPrimaryFlag"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEndPointForceUpgradeRequestFlag(IZ)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "flag"    # Z

    .prologue
    .line 745
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 746
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 748
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 749
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 759
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 761
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 751
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "ep_l_force_upgrade_Flag"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 755
    :pswitch_1
    const-string v2, "ep_r_force_upgrade_Flag"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 749
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEndPointLinkKey(ILjava/lang/String;)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 553
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 556
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 557
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 567
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 569
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 559
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "ep_l_device_linkkey"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 563
    :pswitch_1
    const-string v2, "ep_r_device_linkkey"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEndPointRole(ILjava/lang/String;)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "roleValue"    # Ljava/lang/String;

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 515
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 516
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 526
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 528
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 518
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "ep_l_device_role"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 522
    :pswitch_1
    const-string v2, "ep_r_device_role"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEndpointCommonLinkKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "linkKey"    # Ljava/lang/String;

    .prologue
    .line 686
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 689
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 690
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ep_common_device_linkkey"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 692
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 694
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setEndpointConnectedEPAddress(ILjava/lang/String;)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "connecteEPAddress"    # Ljava/lang/String;

    .prologue
    .line 636
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 639
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 640
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 650
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 652
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 642
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "ep_l_device_connected_ep"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 646
    :pswitch_1
    const-string v2, "ep_r_device_connected_ep"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 640
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEndpointMode(ILjava/lang/String;)V
    .locals 5
    .param p1, "endpointType"    # I
    .param p2, "modeValue"    # Ljava/lang/String;

    .prologue
    .line 610
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 613
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 614
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 624
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 626
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 616
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    const-string v2, "ep_l_device_mode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 620
    :pswitch_1
    const-string v2, "ep_r_device_mode"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 614
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEpBatteryIndPercentage(ILjava/lang/String;)V
    .locals 5
    .param p1, "endPointType"    # I
    .param p2, "percentage"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 465
    invoke-virtual {p0}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 467
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 468
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    packed-switch p1, :pswitch_data_0

    .line 480
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 483
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    return-void

    .line 470
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "prefs":Landroid/content/SharedPreferences;
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_battery_level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 475
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ep_battery_level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEpSoftwareUpgradeOnProcess(IZ)V
    .locals 0
    .param p1, "endPointType"    # I
    .param p2, "status"    # Z

    .prologue
    .line 436
    packed-switch p1, :pswitch_data_0

    .line 444
    :goto_0
    return-void

    .line 438
    :pswitch_0
    iput-boolean p2, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEPLeftSoftwareUpgradeOnProcess:Z

    goto :goto_0

    .line 441
    :pswitch_1
    iput-boolean p2, p0, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->isEPRightSoftwareUpgradeOnProcess:Z

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateState(II)V
    .locals 8
    .param p1, "endPointType"    # I
    .param p2, "state"    # I

    .prologue
    const/16 v7, 0x66

    const/4 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v5, 0x2

    .line 154
    invoke-super {p0, p1, p2}, Lcom/qualcomm/toq/base/handler/ConnectionHandlerImpl;->updateState(II)V

    .line 156
    if-ne p1, v4, :cond_6

    .line 157
    if-ne p2, v3, :cond_1

    .line 167
    sput v3, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPL_CONNECT_ATTEMPT:I

    .line 169
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 178
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const-string v2, "UPDATE_HEADSET"

    const v3, 0x7f0a018d

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 188
    const-string v1, "EPConnectionHandlerImpl"

    const-string v2, "EPL Disconnected. If required, change status of secondary ep"

    invoke-static {v1, v2, p1, v4, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 195
    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operational"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 199
    const-string v1, "EPConnectionHandlerImpl"

    const-string v2, "EPL Disconnected. Secondary ep status changed to disconnected"

    invoke-static {v1, v2, p1, v4, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 218
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firmware_progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v1, "PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 248
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const-string v2, "UPDATE_HEADSET"

    const v3, 0x7f0a0190

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->setController(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 236
    :cond_3
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_FAILURE,RESPONSE_CODE_BT_DISCONNECT"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 243
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    goto :goto_1

    .line 255
    .end local v0    # "str":Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_0

    .line 260
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 261
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_status_text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_status_subtext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 277
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 281
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-nez v1, :cond_5

    .line 282
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastEPFirmwareUpdateFailed(I)V

    .line 287
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->setController(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 291
    :cond_6
    if-ne p1, v5, :cond_0

    .line 292
    if-ne p2, v3, :cond_8

    .line 302
    sput v3, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/receiver/HandleMessageService;->COUNT_EPR_CONNECT_ATTEMPT:I

    .line 304
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_SUCCESS,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 312
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const-string v2, "UPDATE_HEADSET"

    const v3, 0x7f0a0193

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 413
    :cond_7
    :goto_2
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->setController(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 317
    :cond_8
    const/4 v1, 0x4

    if-ne p2, v1, :cond_b

    .line 320
    const-string v1, "EPConnectionHandlerImpl"

    const-string v2, "EPR Disconnected. If required, change status of secondary ep"

    invoke-static {v1, v2, p1, v4, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 327
    invoke-virtual {p0, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Operational"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 331
    const-string v1, "EPConnectionHandlerImpl"

    const-string v2, "EPR Disconnected. Secondary ep status changed to disconnected"

    invoke-static {v1, v2, p1, v4, v3}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 343
    :cond_9
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "firmware_progress"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .restart local v0    # "str":Ljava/lang/String;
    if-eqz v0, :cond_a

    const-string v1, "PROGRESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 350
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 357
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 377
    :goto_3
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const-string v2, "UPDATE_HEADSET"

    const v3, 0x7f0a0196

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->updateEarpieceUIBroadcast(ILjava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/controller/EPVersionController;->setController(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 362
    :cond_a
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_FAILURE,RESPONSE_CODE_BT_DISCONNECT"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 369
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v7, v2}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    goto :goto_3

    .line 384
    .end local v0    # "str":Ljava/lang/String;
    :cond_b
    if-nez p2, :cond_7

    .line 386
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    .line 387
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_status_text"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current_status_subtext"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_SUBSTATUS_UNABLE_CONNECT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v2, "SUB_STATE_FAILURE,RESPONSE_CODE_NONE"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/qualcomm/toq/base/utils/Utils;->printEarpieceLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 403
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1, v7, v6}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastResponsetoHeadset(II)V

    .line 407
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getCurrentAction()I

    move-result v1

    if-nez v1, :cond_7

    .line 408
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->broadcastEPFirmwareUpdateFailed(I)V

    goto/16 :goto_2
.end method
