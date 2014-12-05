.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$3;
.super Ljava/lang/Object;
.source "ActivityMonitoringActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->initiateDoneChanges()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;)V

    .line 358
    return-void
.end method
