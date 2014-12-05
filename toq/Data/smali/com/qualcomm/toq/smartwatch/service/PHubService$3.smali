.class Lcom/qualcomm/toq/smartwatch/service/PHubService$3;
.super Ljava/lang/Object;
.source "PHubService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/service/PHubService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/service/PHubService;)V
    .locals 0

    .prologue
    .line 1353
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1358
    const-string v3, "AmbientController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is a change in LocationService Settings;  mIsNetworkProviderEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1700(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 1362
    .local v1, "locationManager":Landroid/location/LocationManager;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    const-string v4, "ambient__pref"

    invoke-virtual {v3, v4, v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1364
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "WeatherCurrentCityUpdate"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1367
    .local v0, "isCurrentCityUpdateEnabled":Z
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1373
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1700(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1376
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    const/4 v4, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z
    invoke-static {v3, v4}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1702(Lcom/qualcomm/toq/smartwatch/service/PHubService;Z)Z

    .line 1377
    const-string v3, "AmbientController"

    const-string v4, "Calling City Polling as Location Provider is enabled performing Manual Poll"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    const-string v3, "AmbientController"

    const-string v4, "Calling City Polling as Location Provider is enabled performing Manual Poll"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    const-string v3, "weather"

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->processAmbientTask(I)V

    .line 1403
    :goto_0
    return-void

    .line 1385
    :cond_0
    const-string v3, "AmbientController"

    const-string v4, "Current city not enabled or No network "

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1387
    const-string v3, "AmbientController"

    const-string v4, "Current city not enabled or No network "

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->printUsageLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    const-string v3, "AmbientController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IsCurrentCityUpdateEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mIsNetworkProviderEnabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # getter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1700(Lcom/qualcomm/toq/smartwatch/service/PHubService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "isNetworkAvailable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/service/PHubService$3;->this$0:Lcom/qualcomm/toq/smartwatch/service/PHubService;

    # setter for: Lcom/qualcomm/toq/smartwatch/service/PHubService;->mIsNetworkProviderEnabled:Z
    invoke-static {v3, v6}, Lcom/qualcomm/toq/smartwatch/service/PHubService;->access$1702(Lcom/qualcomm/toq/smartwatch/service/PHubService;Z)Z

    goto :goto_0
.end method
