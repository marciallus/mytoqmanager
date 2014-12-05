.class Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$1;
.super Ljava/lang/Object;
.source "CalendarChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 112
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "item"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mCalendarListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    .line 117
    .local v0, "calendar":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->toggleChecked()V

    .line 121
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;

    .line 122
    .local v1, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;
    invoke-virtual {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 124
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->mAvailableCalendarIds:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

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

    .line 132
    .end local v1    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v2, "CalendarChooserActivity"

    const-string v3, "Calendar is null"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
