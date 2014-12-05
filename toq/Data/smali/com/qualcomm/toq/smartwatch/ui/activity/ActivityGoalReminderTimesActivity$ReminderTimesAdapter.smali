.class Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "ActivityGoalReminderTimesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReminderTimesAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# instance fields
.field reminderTimesSet:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, "reminderTimesSet":Ljava/util/List;, "Ljava/util/List<Ljava/util/Calendar;>;"
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    .line 286
    const v0, 0x7f030048

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 289
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->reminderTimesSet:Ljava/util/List;

    .line 290
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    .line 302
    move v1, p1

    .line 304
    .local v1, "positionDummy":I
    if-nez p2, :cond_0

    .line 305
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030048

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 309
    new-instance v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;)V

    .line 310
    .local v0, "holder":Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;
    const v2, 0x7f090249

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 311
    const v2, 0x7f090247

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->cancelImageView:Landroid/widget/ImageView;

    .line 312
    const v2, 0x7f09024b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    .line 313
    const v2, 0x7f09008a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    .line 314
    const v2, 0x7f09024a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 315
    const v2, 0x7f09024c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->rightDivider:Landroid/view/View;

    .line 317
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 324
    :goto_0
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->dragImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 326
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 327
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->rightDivider:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 328
    iget-object v3, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->mSimpleDateformat:Ljava/text/SimpleDateFormat;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v5

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->reminderTimesSet:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->reminderTimesSet:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    invoke-static {v2}, Lcom/qualcomm/toq/base/utils/Utils;->getLocalizedAMPMText(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v2, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;->cancelImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    return-object p2

    .line 320
    .end local v0    # "holder":Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter$ViewHolder;
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityGoalReminderTimesActivity$ReminderTimesAdapter;->reminderTimesSet:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 296
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 297
    return-void
.end method
