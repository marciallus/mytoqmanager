.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;
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
    .line 1433
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "overflowMenu"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1438
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1439
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1440
    .local v0, "popUpList":[Ljava/lang/String;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    new-instance v2, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {v2, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;-><init>(Lcom/qualcomm/toq/base/utils/PopUpWindowUtils$ActivityRef;)V

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-virtual {v2, v0, v3}, Lcom/qualcomm/toq/base/utils/PopUpWindowUtils;->getPopUpWindow([Ljava/lang/String;Landroid/content/Context;)Landroid/widget/PopupWindow;

    move-result-object v2

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1, v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2002(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 1444
    .end local v0    # "popUpList":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mPopUpWindow:Landroid/widget/PopupWindow;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1446
    return-void
.end method
