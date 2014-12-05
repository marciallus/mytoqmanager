.class Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$7;
.super Ljava/lang/Object;
.source "StockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V
    .locals 0

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1348
    const-string v0, "Ambient"

    const-string v1, "StockListActivity inside click"

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    const/4 v1, 0x1

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->isFinalzed:Z
    invoke-static {v0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;Z)Z

    .line 1351
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$7;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->invalidateOptionsMenu()V

    .line 1352
    return-void
.end method
