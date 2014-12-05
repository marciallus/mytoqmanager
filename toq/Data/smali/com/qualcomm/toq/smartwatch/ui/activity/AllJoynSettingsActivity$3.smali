.class Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$3;
.super Ljava/lang/Object;
.source "AllJoynSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->initiateDoneChanges()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/AllJoynSettingsActivity;)V

    .line 138
    return-void
.end method
