.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$7;
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
    .line 1555
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getTemperatureUnitsChangeDialog()Landroid/app/Dialog;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1560
    return-void
.end method
