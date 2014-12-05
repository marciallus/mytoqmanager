.class Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$3;
.super Ljava/lang/Object;
.source "CalendarChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$3;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->initiateDoneChanges()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V

    .line 184
    return-void
.end method
