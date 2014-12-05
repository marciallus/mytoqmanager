.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$1;
.super Ljava/lang/Object;
.source "ActivityDashboardScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityDashboardScreenActivity;->finish()V

    .line 162
    return-void
.end method
