.class Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;
.super Ljava/lang/Object;
.source "CalendarChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsViewHolder"
.end annotation


# instance fields
.field private checkBox:Landroid/widget/CheckBox;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;


# direct methods
.method public constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;Landroid/widget/TextView;Landroid/widget/CheckBox;)V
    .locals 0
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "checkBox"    # Landroid/widget/CheckBox;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 380
    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->textView:Landroid/widget/TextView;

    .line 381
    return-void
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->checkBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/CalendarChooserActivity$CalendarsViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method
