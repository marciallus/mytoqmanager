.class Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CalendarChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    .line 404
    const v0, 0x7f030014

    const v1, 0x7f0900ac

    invoke-direct {p0, p2, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 409
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 410
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x1

    .line 414
    invoke-virtual {p0, p1}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;

    .line 421
    .local v0, "calendars":Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;
    if-nez p2, :cond_3

    .line 422
    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->inflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030014

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 425
    const v5, 0x7f0900ac

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 426
    .local v3, "textView":Landroid/widget/TextView;
    const v5, 0x7f0900ad

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 431
    .local v1, "checkBox":Landroid/widget/CheckBox;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 432
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;

    iget-object v6, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    invoke-direct {v5, v6, v3, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;Landroid/widget/TextView;Landroid/widget/CheckBox;)V

    invoke-virtual {p2, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 437
    :cond_0
    if-eqz v1, :cond_1

    .line 438
    new-instance v5, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter$1;

    invoke-direct {v5, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsArrayAdapter;)V

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 459
    new-instance v2, Ljava/io/File;

    const-string v5, "/data/data/com.qualcomm.toq/shared_prefs/calendars_pref.xml"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 463
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 464
    invoke-virtual {v0, v8}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->setChecked(Z)V

    .line 470
    :goto_1
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->getCalendarName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    return-object p2

    .line 453
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v3    # "textView":Landroid/widget/TextView;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;

    .line 454
    .local v4, "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 455
    .restart local v1    # "checkBox":Landroid/widget/CheckBox;
    invoke-virtual {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    .restart local v3    # "textView":Landroid/widget/TextView;
    goto :goto_0

    .line 467
    .end local v4    # "viewHolder":Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;
    .restart local v2    # "file":Ljava/io/File;
    :cond_4
    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/controller/CalendarController$Calendars;->isChecked()Z

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method
