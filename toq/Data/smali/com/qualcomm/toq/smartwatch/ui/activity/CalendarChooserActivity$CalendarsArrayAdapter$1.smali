.class Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter$1;
.super Ljava/lang/Object;
.source "CalendarChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;)V
    .locals 0

    .prologue
    .line 438
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 440
    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    .line 441
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    .line 442
    .local v0, "cal":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->setChecked(Z)V

    .line 443
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->isChecked()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_0
    return-void
.end method
