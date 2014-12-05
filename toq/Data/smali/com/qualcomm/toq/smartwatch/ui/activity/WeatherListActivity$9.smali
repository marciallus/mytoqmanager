.class Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;
.super Ljava/lang/Object;
.source "WeatherListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

.field final synthetic val$weatherUnitsListView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;->val$weatherUnitsListView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const v4, 0x7f090237

    .line 1592
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;->val$weatherUnitsListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2300(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1593
    .local v1, "previousItemView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1594
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1598
    :cond_0
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity$9;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->mTempeartureUnitSelectedIndex:I
    invoke-static {v2, p3}, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;->access$2302(Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;I)I

    .line 1599
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 1600
    .local v0, "itemRadioButton":Landroid/widget/RadioButton;
    if-eqz v0, :cond_1

    .line 1601
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1604
    :cond_1
    return-void
.end method
