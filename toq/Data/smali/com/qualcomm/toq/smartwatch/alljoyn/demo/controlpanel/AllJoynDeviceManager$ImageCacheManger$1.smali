.class Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$1;
.super Ljava/lang/Thread;
.source "AllJoynDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$1;->this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 892
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$1;->this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->m_isRunning:Z
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->access$300(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 895
    :try_start_0
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$1;->this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->m_imageDownloadQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;

    .line 896
    .local v0, "cacheObject":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$1;->this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    iget-object v4, v4, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    iget-object v5, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_UUID:Ljava/util/UUID;

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->getDevice(Ljava/util/UUID;)Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;

    move-result-object v1

    .line 897
    .local v1, "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    if-eqz v1, :cond_0

    .line 898
    iget-object v4, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_ImageCacheObjectState:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    sget-object v5, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->ICON_STORED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    if-eq v4, v5, :cond_0

    .line 899
    const-string v4, "AllJoynDeviceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageCacheManger - Retrieving the icon for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_UUID:Ljava/util/UUID;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$1;->this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    iget-object v4, v4, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->this$0:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;->getId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager;->sendIconToWD(Ljava/util/UUID;)Z

    move-result v3

    .line 901
    .local v3, "success":Z
    if-eqz v3, :cond_1

    .line 902
    sget-object v4, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->ICON_STORED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_ImageCacheObjectState:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    .line 903
    const-string v4, "AllJoynDeviceManager"

    const-string v5, "ImageCacheManger - Successfully retrieved icon"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 921
    .end local v0    # "cacheObject":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;
    .end local v1    # "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .end local v3    # "success":Z
    :catch_0
    move-exception v2

    .line 922
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v4, "AllJoynDeviceManager"

    const-string v5, "ImageCacheMangerThread"

    invoke-static {v4, v2, v5}, Lcom/qualcomm/toq/base/utils/Log;->logException(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 906
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "cacheObject":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;
    .restart local v1    # "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .restart local v3    # "success":Z
    :cond_1
    :try_start_1
    iget v4, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_iconAttempts:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_iconAttempts:I

    .line 907
    iget v4, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_iconAttempts:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 909
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$1;->this$1:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;

    # getter for: Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->m_imageDownloadQueue:Ljava/util/concurrent/BlockingQueue;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;->access$400(Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 910
    const-string v4, "AllJoynDeviceManager"

    const-string v5, "ImageCacheManger - Re-attempting to retrieving the icon"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 914
    :cond_2
    sget-object v4, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;->ICON_STORED:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    iput-object v4, v0, Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;->m_ImageCacheObjectState:Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheObjectState;

    .line 915
    const-string v4, "AllJoynDeviceManager"

    const-string v5, "ImageCacheManger - Using the default icon"

    invoke-static {v4, v5}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 925
    .end local v0    # "cacheObject":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDeviceManager$ImageCacheManger$ImageCacheObject;
    .end local v1    # "device":Lcom/qualcomm/toq/smartwatch/alljoyn/demo/controlpanel/AllJoynDevice;
    .end local v3    # "success":Z
    :cond_3
    return-void
.end method
