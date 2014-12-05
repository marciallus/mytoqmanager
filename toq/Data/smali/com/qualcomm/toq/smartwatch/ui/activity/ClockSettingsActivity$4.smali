.class Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;
.super Ljava/lang/Object;
.source "ClockSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mClockNames:[Ljava/lang/String;
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->initiateDoneChanges()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->finish()V

    goto :goto_0
.end method
