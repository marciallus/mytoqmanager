.class Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;
.super Ljava/util/TimerTask;
.source "CurrentCityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 147
    const-string v2, "CurrentCityProvider"

    const-string v3, "Timer called for removing the Location Updates"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 152
    .local v1, "location":Landroid/location/Location;
    if-eqz v1, :cond_1

    .line 153
    const-string v2, "CurrentCityProvider"

    const-string v3, "getLastKnownLocation() used and onLocationChanged() is called"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$302(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Ljava/util/Timer;)Ljava/util/Timer;

    .line 162
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$300(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Ljava/util/Timer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    # getter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocParseTimer:Ljava/util/Timer;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$300(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;)Ljava/util/Timer;

    move-result-object v2

    new-instance v3, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1$1;

    invoke-direct {v3, p0}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1$1;-><init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v2, v1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->onLocationChanged(Landroid/location/Location;)V

    .line 207
    :goto_0
    return-void

    .line 192
    :cond_1
    const-string v2, "CurrentCityProvider"

    const-string v3, "Failed to retrieve the location values"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    const/4 v3, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z
    invoke-static {v2, v3}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$102(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Z)Z

    .line 197
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v3, v3, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 199
    const-string v2, "weather"

    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 203
    .local v0, "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    const/4 v2, 0x0

    const-string v3, "Local City"

    const-string v4, "Default Admin,Default Country"

    invoke-virtual {v0, v2, v3, v4}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onCurrencityNameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
