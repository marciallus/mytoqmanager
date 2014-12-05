.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$11;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->initViews()V
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
    .line 1688
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1692
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity  inside click"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->isFinalzed:Z

    .line 1696
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$11;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->invalidateOptionsMenu()V

    .line 1697
    return-void
.end method
