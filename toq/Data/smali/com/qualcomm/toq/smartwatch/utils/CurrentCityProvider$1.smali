.class Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;
.super Ljava/lang/Object;
.source "CurrentCityProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getCurrentCityName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x15f90

    const/4 v1, 0x1

    .line 102
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    .line 105
    .local v7, "criteria":Landroid/location/Criteria;
    invoke-virtual {v7, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 106
    invoke-virtual {v7, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 107
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 108
    invoke-virtual {v7, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 109
    invoke-virtual {v7, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 110
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v9

    .line 113
    .local v9, "locationProvider":Ljava/lang/String;
    const-string v0, "CurrentCityProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Criteria queried locationProvider = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "CurrentCityProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLocationManger().isProviderEnabled(LocationManager.NETWORK_PROVIDER) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string v0, "CurrentCityProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Utils.isNetworkConnectivityAvailable(mContext) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$000(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$000(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qualcomm/toq/base/utils/Utils;->isNetworkConnectivityAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    const-string v0, "CurrentCityProvider"

    const-string v1, "Trying to fetch Location from Network Provider"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    const/4 v1, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$102(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Z)Z

    .line 130
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$202(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Ljava/util/Timer;)Ljava/util/Timer;

    .line 144
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$200(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;)V

    invoke-virtual {v0, v1, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 228
    .end local v7    # "criteria":Landroid/location/Criteria;
    .end local v9    # "locationProvider":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 135
    .restart local v7    # "criteria":Landroid/location/Criteria;
    .restart local v9    # "locationProvider":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 136
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$202(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Ljava/util/Timer;)Ljava/util/Timer;

    .line 144
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$200(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;

    invoke-direct {v1, p0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;)V

    invoke-virtual {v0, v1, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0

    .line 140
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$202(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Ljava/util/Timer;)Ljava/util/Timer;

    .line 144
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mTimer:Ljava/util/Timer;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$200(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;

    invoke-direct {v2, p0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;)V

    invoke-virtual {v1, v2, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    throw v0

    .line 215
    :cond_1
    const-string v0, "CurrentCityProvider"

    const-string v1, "No providers available sending default image"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v0, "weather"

    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v6

    check-cast v6, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 221
    .local v6, "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    const/4 v0, 0x0

    const-string v1, "Local City"

    const-string v2, "Default Admin,Default Country"

    invoke-virtual {v6, v0, v1, v2}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onCurrencityNameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
