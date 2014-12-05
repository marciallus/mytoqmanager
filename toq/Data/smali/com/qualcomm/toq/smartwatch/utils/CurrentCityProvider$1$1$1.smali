.class Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1$1;
.super Ljava/util/TimerTask;
.source "CurrentCityProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1$1;->this$2:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 167
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1$1;->this$2:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    const/4 v2, 0x0

    # setter for: Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->mLocalUpdateFlag:Z
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->access$102(Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;Z)Z

    .line 169
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1$1;->this$2:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v1, v1, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;->getLocationManger()Landroid/location/LocationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1$1;->this$2:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1$1;->this$1:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider$1;->this$0:Lcom/qualcomm/toq/smartwatch/utils/CurrentCityProvider;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 171
    const-string v1, "weather"

    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/controller/AmbientController;->getController(Ljava/lang/String;)Lcom/qualcomm/toq/smartwatch/controller/AmbientController;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;

    .line 181
    .local v0, "controller":Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;
    const/4 v1, 0x0

    const-string v2, "Local City"

    const-string v3, "Default Admin,Default Country"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/ambient/WeatherController;->onCurrencityNameReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method
