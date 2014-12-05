.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$10;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 1661
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1665
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1666
    const-string v0, "Ambient"

    const-string v1, "WeatherListActivity Touch Listener for down"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$10;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->refreshList()V

    .line 1670
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
