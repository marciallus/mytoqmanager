.class Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$4;
.super Ljava/lang/Thread;
.source "CalendarChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->initiateDoneChanges()V
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
    .line 524
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->refreshCalendarEvents()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)V

    .line 528
    return-void
.end method
