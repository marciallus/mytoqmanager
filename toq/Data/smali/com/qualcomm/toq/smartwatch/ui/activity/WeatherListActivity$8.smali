.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$8;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->showWeatherChangeUnitsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)V
    .locals 0

    .prologue
    .line 1570
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)I

    move-result v1

    invoke-static {v1}, Lcom/qualcomm/toq/base/utils/Utils;->getTemperatureUnitFromIndex(I)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mWeatherTemperatureUnit:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2202(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1575
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$8;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1576
    return-void
.end method
