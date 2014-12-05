.class Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$5;
.super Ljava/lang/Object;
.source "StockListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;
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
    .line 974
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity$5;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->initiateDoneChanges()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;->access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;)V

    .line 980
    return-void
.end method
