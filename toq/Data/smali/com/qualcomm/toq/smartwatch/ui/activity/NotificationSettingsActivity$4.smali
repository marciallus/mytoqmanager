.class Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$4;
.super Ljava/lang/Object;
.source "NotificationSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 649
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 650
    .local v0, "resId":I
    packed-switch v0, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 653
    :pswitch_0
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->initiateDoneChanges()V
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/NotificationSettingsActivity;)V

    goto :goto_0

    .line 650
    :pswitch_data_0
    .packed-switch 0x7f0901af
        :pswitch_0
    .end packed-switch
.end method
