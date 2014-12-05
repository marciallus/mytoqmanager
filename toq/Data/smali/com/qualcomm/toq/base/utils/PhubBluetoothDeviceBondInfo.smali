.class public Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;
.super Ljava/lang/Object;
.source "PhubBluetoothDeviceBondInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhubBluetoothDeviceBondInfo"

.field private static mInstance:Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->mInstance:Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->mInstance:Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    invoke-direct {v0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;-><init>()V

    sput-object v0, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->mInstance:Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    .line 40
    :cond_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->mInstance:Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    return-object v0
.end method


# virtual methods
.method public disassociateEarPieces(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "endPointType"    # I

    .prologue
    const/4 v5, 0x1

    .line 858
    const-string v2, "PhubBluetoothDeviceBondInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New supported ear piece found in the paired list. So disassociating with the current cache headset if any. endPointType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v2, v3, v5, v5, v4}, Lcom/qualcomm/toq/base/utils/Utils;->updateStatus(Ljava/lang/String;Ljava/lang/String;IIB)V

    .line 864
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v0

    .line 865
    .local v0, "connectionFactory":Lcom/qualcomm/toq/base/factory/ConnectionFactory;
    and-int/lit8 v2, p3, 0x1

    if-ne v2, v5, :cond_0

    .line 866
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_l_device_name"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_l_device_address"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 872
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 874
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->disassociatePhoneEPLeft()V

    .line 887
    :cond_0
    :goto_0
    and-int/lit8 v2, p3, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 888
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_r_device_name"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "associated_ep_r_device_address"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 894
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 896
    invoke-virtual {v0}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnManager()Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/qualcomm/toq/base/connectionmanager/IConnectionManager;->disassociatePhoneEPRight()V

    .line 909
    :cond_1
    :goto_1
    return-void

    .line 878
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 881
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "associated_ep_l_device_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    const-string v2, "associated_ep_l_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 883
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 900
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 903
    .restart local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "associated_ep_r_device_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 904
    const-string v2, "associated_ep_r_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 905
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public getAssociatedEPLDeviceAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 706
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_l_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_l_device_address"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    :cond_0
    return-object v0
.end method

.method public getAssociatedEPLDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 693
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_l_device_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 697
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_l_device_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 702
    :cond_0
    return-object v0
.end method

.method public getAssociatedEPRDeviceAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 732
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_r_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 736
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_r_device_address"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 741
    :cond_0
    return-object v0
.end method

.method public getAssociatedEPRDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 719
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_r_device_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 723
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_ep_r_device_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    :cond_0
    return-object v0
.end method

.method public getAssociatedWDDeviceAddress()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 678
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_address"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_address"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 688
    :cond_0
    return-object v0
.end method

.method public getAssociatedWDDeviceName()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 662
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_name"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 666
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "associated_wd_device_name"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    :cond_0
    return-object v0
.end method

.method public getDeviceState(I)I
    .locals 1
    .param p1, "endPointType"    # I

    .prologue
    .line 745
    packed-switch p1, :pswitch_data_0

    .line 753
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 747
    :pswitch_0
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getWDState()I

    move-result v0

    goto :goto_0

    .line 749
    :pswitch_1
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPLState()I

    move-result v0

    goto :goto_0

    .line 751
    :pswitch_2
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPRState()I

    move-result v0

    goto :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEPConnectedProfiles(I)Ljava/util/List;
    .locals 4
    .param p1, "endpointType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 816
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 818
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 819
    .local v1, "deviceName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 820
    .local v0, "deviceAddress":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 821
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceAddress()Ljava/lang/String;

    move-result-object v0

    .line 828
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->isA2DPConnected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 832
    const-string v3, "A2DP"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->getInstance(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/qualcomm/toq/earpiece/utils/BTProfilesUtil;->isHeadsetProfileConnected(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 836
    const-string v3, "HFP"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_2
    return-object v2

    .line 824
    :cond_3
    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    .line 825
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 826
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEPLState()I
    .locals 5

    .prologue
    .line 612
    const/4 v2, -0x1

    .line 614
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 616
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    .line 618
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 621
    .local v1, "epLeftEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 622
    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v2

    .line 632
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v1    # "epLeftEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_0
    return v2

    .line 625
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v1    # "epLeftEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_0
    const-string v3, "PhubBluetoothDeviceBondInfo"

    const-string v4, "Either of connectionHandler or EPLEndPoint is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 629
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v1    # "epLeftEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_1
    const-string v3, "PhubBluetoothDeviceBondInfo"

    const-string v4, "Either of EPL device name or device address is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEPRState()I
    .locals 5

    .prologue
    .line 637
    const/4 v2, -0x1

    .line 639
    .local v2, "state":I
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 641
    invoke-static {}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v0

    .line 643
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v1

    .line 646
    .local v1, "epRightEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 647
    invoke-interface {v1}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v2

    .line 657
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v1    # "epRightEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_0
    return v2

    .line 650
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v1    # "epRightEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_0
    const-string v3, "PhubBluetoothDeviceBondInfo"

    const-string v4, "Either of connectionHandler or EPREndPoint is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 654
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v1    # "epRightEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_1
    const-string v3, "PhubBluetoothDeviceBondInfo"

    const-string v4, "Either of EPR device name or device address is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getWDState()I
    .locals 5

    .prologue
    .line 588
    const/4 v1, -0x1

    .line 589
    .local v1, "state":I
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceAddress()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 591
    invoke-static {}, Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;->getConnectionHandler()Lcom/qualcomm/toq/smartwatch/handler/ToqConnectionHandlerImpl;

    move-result-object v0

    .line 593
    .local v0, "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    invoke-static {}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getConnectionFactory()Lcom/qualcomm/toq/base/factory/ConnectionFactory;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/factory/ConnectionFactory;->getEndPoint(I)Lcom/qualcomm/toq/base/endpoint/IEndPoint;

    move-result-object v2

    .line 596
    .local v2, "wdEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 597
    invoke-interface {v2}, Lcom/qualcomm/toq/base/endpoint/IEndPoint;->getType()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/qualcomm/toq/base/handler/IConnectionHandler;->getState(I)I

    move-result v1

    .line 607
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v2    # "wdEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :goto_0
    return v1

    .line 600
    .restart local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .restart local v2    # "wdEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_0
    const-string v3, "PhubBluetoothDeviceBondInfo"

    const-string v4, "Either of connectionHandler or WdEndPoint is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 604
    .end local v0    # "connectionHandler":Lcom/qualcomm/toq/base/handler/IConnectionHandler;
    .end local v2    # "wdEndPoint":Lcom/qualcomm/toq/base/endpoint/IEndPoint;
    :cond_1
    const-string v3, "PhubBluetoothDeviceBondInfo"

    const-string v4, "Either of WD device name or device address is null"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isEPDeviceConnectedAnyProfile(Ljava/lang/String;)Z
    .locals 5
    .param p1, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 843
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceName()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "epLName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceName()Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "epRName":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 846
    invoke-virtual {p0, v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPConnectedProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 852
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 846
    goto :goto_0

    .line 848
    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 849
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPConnectedProfiles(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    .line 852
    goto :goto_0
.end method

.method public isEPEndPointType(I)Z
    .locals 2
    .param p1, "endPointType"    # I

    .prologue
    const/4 v0, 0x1

    .line 811
    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEPModelSupported(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "endPointType"    # I

    .prologue
    .line 780
    const/4 v3, 0x0

    .line 781
    .local v3, "support":Z
    packed-switch p2, :pswitch_data_0

    .line 799
    :cond_0
    :goto_0
    return v3

    .line 783
    :pswitch_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PRODUCT_MODEL_EPL:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 784
    .local v4, "supportedName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 785
    const/4 v3, 0x1

    .line 786
    goto :goto_0

    .line 783
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 791
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "supportedName":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PRODUCT_MODEL_EPR:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 792
    .restart local v4    # "supportedName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 793
    const/4 v3, 0x1

    .line 794
    goto :goto_0

    .line 791
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 781
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isEPNameSupported(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "endPointType"    # I

    .prologue
    .line 757
    const/4 v3, 0x0

    .line 758
    .local v3, "support":Z
    packed-switch p2, :pswitch_data_0

    .line 776
    :cond_0
    :goto_0
    return v3

    .line 760
    :pswitch_0
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_LEFT_EAR_PIECE:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 761
    .local v4, "supportedName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 762
    const/4 v3, 0x1

    .line 763
    goto :goto_0

    .line 760
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 768
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "supportedName":Ljava/lang/String;
    :pswitch_1
    sget-object v0, Lcom/qualcomm/toq/base/utils/Constants;->PERSONALHUB_RIGHT_EAR_PIECE:[Ljava/lang/String;

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 769
    .restart local v4    # "supportedName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 770
    const/4 v3, 0x1

    .line 771
    goto :goto_0

    .line 768
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 758
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isLeftEPBonded()Z
    .locals 15

    .prologue
    .line 277
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 279
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 281
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v10

    .line 283
    .local v10, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v10, :cond_b

    .line 285
    const-string v9, ""

    .line 286
    .local v9, "name":Ljava/lang/String;
    const-string v0, ""

    .line 287
    .local v0, "address":Ljava/lang/String;
    const/4 v4, 0x0

    .line 288
    .local v4, "cachedAddressExistsInPairedList":Z
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "associated_ep_l_device_address"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 292
    .local v7, "leftEPAddress":Ljava/lang/String;
    const/4 v8, 0x0

    .line 293
    .local v8, "leftEPDeviceCountInPairingList":I
    const/4 v11, 0x0

    .line 295
    .local v11, "rightEPDeviceCountInPairingList":I
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 297
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_0

    .line 298
    if-eqz v7, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 301
    const-string v12, "PhubBluetoothDeviceBondInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cached Left EP found in paired list with name  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const/4 v4, 0x1

    .line 305
    const/4 v12, 0x1

    .line 401
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "cachedAddressExistsInPairedList":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "leftEPAddress":Ljava/lang/String;
    .end local v8    # "leftEPDeviceCountInPairingList":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v11    # "rightEPDeviceCountInPairingList":I
    :goto_1
    return v12

    .line 307
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "cachedAddressExistsInPairedList":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "leftEPAddress":Ljava/lang/String;
    .restart local v8    # "leftEPDeviceCountInPairingList":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v11    # "rightEPDeviceCountInPairingList":I
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 309
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v12

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 312
    add-int/lit8 v8, v8, 0x1

    const/4 v12, 0x1

    if-le v8, v12, :cond_2

    .line 313
    const-string v12, "PhubBluetoothDeviceBondInfo"

    const-string v13, "More than one supported EPL device found in paired list. So returning true."

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v12, 0x1

    goto :goto_1

    .line 317
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 318
    const-string v12, "PhubBluetoothDeviceBondInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "First Left EP found in paired list. Bonded Device Name  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    .line 322
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 325
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v12

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 328
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 333
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const/4 v12, 0x1

    if-le v11, v12, :cond_7

    .line 334
    const-string v13, "PhubBluetoothDeviceBondInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "More than one supported EPR device found in paired list. So returning "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v12, 0x1

    if-ne v8, v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " in isLeftEPBonded."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const/4 v12, 0x1

    if-ne v8, v12, :cond_6

    .line 340
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 334
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 343
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 346
    :cond_7
    if-nez v4, :cond_b

    .line 347
    if-eqz v9, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 349
    const-string v12, "from isLeftEPBonded"

    const-string v13, "from isLeftEPBonded"

    const/4 v14, 0x1

    invoke-virtual {p0, v12, v13, v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->disassociateEarPieces(Ljava/lang/String;Ljava/lang/String;I)V

    .line 352
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 353
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "associated_ep_l_device_address"

    invoke-interface {v12, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "associated_ep_l_device_address"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    .line 361
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 364
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v12, "associated_ep_l_device_name"

    invoke-interface {v5, v12, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    const-string v12, "associated_ep_l_device_address"

    invoke-interface {v5, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    const-string v12, "PhubBluetoothDeviceBondInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New Left EP cached in local data. Trying to associate with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", if service is running: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-boolean v12, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    if-eqz v12, :cond_8

    .line 376
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v2

    .line 377
    .local v2, "btConnectionManager":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v2, :cond_8

    .line 378
    invoke-virtual {v2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->associatePhoneEPLeft()V

    .line 383
    .end local v2    # "btConnectionManager":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 386
    :cond_9
    const-string v12, "PhubBluetoothDeviceBondInfo"

    const-string v13, "Associated Device Preference is Null for left EP"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 396
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "cachedAddressExistsInPairedList":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "leftEPAddress":Ljava/lang/String;
    .end local v8    # "leftEPDeviceCountInPairingList":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v11    # "rightEPDeviceCountInPairingList":I
    :cond_a
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceAddress()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 398
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 401
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public isMoreThanOneEarPiecesHeadsetPaired()Z
    .locals 12

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 536
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 537
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v4, 0x0

    .line 538
    .local v4, "leftEPCounter":I
    const/4 v6, 0x0

    .line 540
    .local v6, "rightEPCounter":I
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 542
    const-string v10, "PhubBluetoothDeviceBondInfo"

    const-string v11, "BT is enabled"

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    .line 544
    .local v5, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v5, :cond_1

    .line 546
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 548
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 549
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 551
    add-int/lit8 v4, v4, 0x1

    .line 552
    if-le v4, v9, :cond_0

    .line 570
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    :goto_0
    if-gt v4, v9, :cond_2

    if-le v6, v9, :cond_3

    .line 571
    :cond_2
    new-instance v2, Landroid/content/Intent;

    sget-object v10, Lcom/qualcomm/toq/base/utils/Constants;->ACTION_EP_MORE_HEADSETS_FOUND_UPDATE:Ljava/lang/String;

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 572
    .local v2, "epMoreHeadsetsFoundUpdateIntent":Landroid/content/Intent;
    const-string v11, "endpointtype"

    if-le v4, v9, :cond_5

    move v10, v9

    :goto_1
    if-le v6, v9, :cond_6

    :goto_2
    or-int/2addr v7, v10

    invoke-virtual {v2, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v8, v9

    .line 582
    .end local v2    # "epMoreHeadsetsFoundUpdateIntent":Landroid/content/Intent;
    :cond_3
    return v8

    .line 556
    .restart local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v7}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 558
    add-int/lit8 v6, v6, 0x1

    .line 559
    if-le v6, v9, :cond_0

    goto :goto_0

    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v2    # "epMoreHeadsetsFoundUpdateIntent":Landroid/content/Intent;
    :cond_5
    move v10, v8

    .line 572
    goto :goto_1

    :cond_6
    move v7, v8

    goto :goto_2
.end method

.method public isOtherEPBonded(I)Z
    .locals 2
    .param p1, "endPointType"    # I

    .prologue
    .line 803
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v0

    .line 807
    .local v0, "otherEndpointTypeBonded":Z
    :goto_0
    return v0

    .line 803
    .end local v0    # "otherEndpointTypeBonded":Z
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v0

    goto :goto_0
.end method

.method public isRightEPBonded()Z
    .locals 15

    .prologue
    .line 407
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 409
    .local v1, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 411
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v9

    .line 413
    .local v9, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v9, :cond_b

    .line 415
    const-string v8, ""

    .line 416
    .local v8, "name":Ljava/lang/String;
    const-string v0, ""

    .line 417
    .local v0, "address":Ljava/lang/String;
    const/4 v4, 0x0

    .line 418
    .local v4, "cachedAddressExistsInPairedList":Z
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "associated_ep_r_device_address"

    const-string v14, ""

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 422
    .local v10, "rightEPAddress":Ljava/lang/String;
    const/4 v7, 0x0

    .line 423
    .local v7, "leftEPDeviceCountInPairingList":I
    const/4 v11, 0x0

    .line 425
    .local v11, "rightEPDeviceCountInPairingList":I
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 427
    .local v3, "btDevice":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_0

    .line 428
    if-eqz v10, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 431
    const-string v12, "PhubBluetoothDeviceBondInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cached Right EP found in paired list with name  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v4, 0x1

    .line 435
    const/4 v12, 0x1

    .line 531
    .end local v0    # "address":Ljava/lang/String;
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "cachedAddressExistsInPairedList":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "leftEPDeviceCountInPairingList":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v10    # "rightEPAddress":Ljava/lang/String;
    .end local v11    # "rightEPDeviceCountInPairingList":I
    :goto_1
    return v12

    .line 437
    .restart local v0    # "address":Ljava/lang/String;
    .restart local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "cachedAddressExistsInPairedList":Z
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "leftEPDeviceCountInPairingList":I
    .restart local v8    # "name":Ljava/lang/String;
    .restart local v9    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v10    # "rightEPAddress":Ljava/lang/String;
    .restart local v11    # "rightEPDeviceCountInPairingList":I
    :cond_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 439
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v12

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v12, v13, v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 442
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x1

    if-le v11, v12, :cond_2

    .line 443
    const-string v12, "PhubBluetoothDeviceBondInfo"

    const-string v13, "More than one supported EPR device found in paired list. So returning true."

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/4 v12, 0x1

    goto :goto_1

    .line 447
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 448
    const-string v12, "PhubBluetoothDeviceBondInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "First Right EP found in paired list. Bonded Device Name  : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    .line 452
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 455
    :cond_3
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v12

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isEPNameSupported(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 458
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 463
    .end local v3    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_4
    const/4 v12, 0x1

    if-le v7, v12, :cond_7

    .line 464
    const-string v13, "PhubBluetoothDeviceBondInfo"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "More than one supported EPL device found in paired list. So returning "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v12, 0x1

    if-ne v7, v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " in isLeftEPBonded."

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 470
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 464
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 473
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 476
    :cond_7
    if-nez v4, :cond_b

    .line 477
    if-eqz v8, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_b

    .line 479
    const-string v12, "from isRightEPBonded"

    const-string v13, "from isRightEPBonded"

    const/4 v14, 0x2

    invoke-virtual {p0, v12, v13, v14}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->disassociateEarPieces(Ljava/lang/String;Ljava/lang/String;I)V

    .line 482
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 483
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "associated_ep_r_device_address"

    invoke-interface {v12, v13}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_8

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    const-string v13, "associated_ep_r_device_address"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_8

    .line 491
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v12

    invoke-virtual {v12}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 494
    .local v5, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v12, "associated_ep_r_device_name"

    invoke-interface {v5, v12, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 496
    const-string v12, "associated_ep_r_device_address"

    invoke-interface {v5, v12, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 498
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 500
    const-string v12, "PhubBluetoothDeviceBondInfo"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "New Right EP cached in local data. Trying to associate with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", if service is running: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    sget-boolean v12, Lcom/qualcomm/toq/base/service/PHubBaseService;->isPHubBaseServiceRunning:Z

    if-eqz v12, :cond_8

    .line 506
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;

    move-result-object v2

    .line 507
    .local v2, "btConnectionManager":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    if-eqz v2, :cond_8

    .line 508
    invoke-virtual {v2}, Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;->associatePhoneEPRight()V

    .line 513
    .end local v2    # "btConnectionManager":Lcom/qualcomm/toq/base/connectionmanager/bluetooth/BTConnectionManager;
    .end local v5    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 516
    :cond_9
    const-string v12, "PhubBluetoothDeviceBondInfo"

    const-string v13, "Associated Device Preference is Null for Right EP"

    invoke-static {v12, v13}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 526
    .end local v0    # "address":Ljava/lang/String;
    .end local v4    # "cachedAddressExistsInPairedList":Z
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "leftEPDeviceCountInPairingList":I
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v10    # "rightEPAddress":Ljava/lang/String;
    .end local v11    # "rightEPDeviceCountInPairingList":I
    :cond_a
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceAddress()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 528
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 531
    :cond_b
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public isWDBonded()Z
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 45
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 47
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 49
    const-string v7, "PhubBluetoothDeviceBondInfo"

    const-string v10, "Inside isWDBonded()"

    invoke-static {v7, v10}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    .line 52
    .local v5, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v6, "toqPairedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 57
    .local v1, "btDevice":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isWDNameSupported(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 60
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    .end local v1    # "btDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 66
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 70
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "associated_wd_device_address"

    invoke-interface {v7, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v10, "associated_wd_device_address"

    const/4 v11, 0x0

    invoke-interface {v7, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    .line 78
    const-string v10, "PhubBluetoothDeviceBondInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BT Preference is empty.Updating the preference with WD data : BT Address : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v10, "PhubBluetoothDeviceBondInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "BT Preference is empty.Updating the preference with WD data : BT Address : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 90
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "associated_wd_device_name"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    const-string v10, "associated_wd_device_address"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v7, v8

    .line 253
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6    # "toqPairedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :goto_1
    return v7

    .line 104
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .restart local v6    # "toqPairedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 110
    const-string v7, "PhubBluetoothDeviceBondInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "BT Preference is non empty and the same is present in paired list : BT Address :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v8

    .line 114
    goto :goto_1

    .line 104
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 127
    :cond_4
    sget-boolean v7, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v7, :cond_5

    .line 128
    const-string v7, "PhubBluetoothDeviceBondInfo"

    const-string v10, "BT Preference is non empty.But the address in the preference is not in the paired list.Overwriting the old data with new address"

    invoke-static {v7, v10}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v7, "PhubBluetoothDeviceBondInfo"

    const-string v10, "BT Preference is non empty.But the address in the preference is not in the paired list.Overwriting the old data with new address"

    invoke-static {v7, v10}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 137
    .restart local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "associated_wd_device_name"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 139
    const-string v10, "associated_wd_device_address"

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_5
    move v7, v8

    .line 144
    goto/16 :goto_1

    .line 149
    .end local v3    # "i":I
    :cond_6
    const-string v7, "PhubBluetoothDeviceBondInfo"

    const-string v8, "Associated Device Preference is Null for WD"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v9

    .line 150
    goto/16 :goto_1

    .line 163
    :cond_7
    const-string v7, "PhubBluetoothDeviceBondInfo"

    const-string v8, "Paired list is empty"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-boolean v7, Lcom/qualcomm/toq/smartwatch/service/PHubService;->isPHubServiceRunning:Z

    if-nez v7, :cond_9

    .line 165
    const-string v7, "PhubBluetoothDeviceBondInfo"

    const-string v8, "Removing the prefernce as no device is paired"

    invoke-static {v7, v8}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 169
    .restart local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v7, "associated_wd_device_name"

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    const-string v7, "associated_wd_device_address"

    invoke-interface {v2, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 172
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v7, v9

    .line 173
    goto/16 :goto_1

    .line 246
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6    # "toqPairedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_8
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedWDDeviceAddress()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 248
    const/4 v0, 0x0

    move v7, v8

    .line 249
    goto/16 :goto_1

    .line 252
    :cond_9
    const/4 v0, 0x0

    move v7, v9

    .line 253
    goto/16 :goto_1
.end method

.method public isWDNameSupported(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "deviceName"    # Ljava/lang/String;
    .param p2, "endPointType"    # I

    .prologue
    .line 257
    const/4 v3, 0x0

    .line 258
    .local v3, "support":Z
    if-eqz p1, :cond_0

    .line 259
    packed-switch p2, :pswitch_data_0

    .line 272
    :cond_0
    :goto_0
    return v3

    .line 261
    :pswitch_0
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getProjectConfig()Lcom/qualcomm/toq/base/utils/ProjectConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qualcomm/toq/base/utils/ProjectConfig;->getWristDisplayDeviceName()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 263
    .local v4, "supportedName":Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 265
    const/4 v3, 0x1

    .line 266
    goto :goto_0

    .line 261
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
