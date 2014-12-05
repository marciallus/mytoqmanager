.class public Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
.super Landroid/app/TimePickerDialog;
.source "CustomTimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;
    }
.end annotation


# static fields
.field private static final NUMBER_PICKER_HOUR_MAX_VALUE:I = 0x17

.field private static final NUMBER_PICKER_MINUTE_MAX_VALUE:I = 0x3b

.field private static final NUMBER_PICKER_MIN_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CustomTimePickerDialog"


# instance fields
.field private mTimePicker:Landroid/widget/TimePicker;

.field private timePickerInterface:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;

.field private timePickerdialogButtonsListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/TimePickerDialog$OnTimeSetListener;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "positiveButtonText"    # Ljava/lang/String;
    .param p5, "negetiveButtonText"    # Ljava/lang/String;
    .param p6, "is24HourView"    # Z

    .prologue
    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 45
    new-instance v1, Landroid/view/ContextThemeWrapper;

    const v0, 0x7f0b0007

    invoke-direct {v1, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v3, 0x17

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v4, 0x3b

    :goto_1
    move-object v0, p0

    move-object v2, p2

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 73
    new-instance v0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;-><init>(Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)V

    iput-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->timePickerdialogButtonsListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->updateTime(II)V

    .line 61
    check-cast p1, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->timePickerInterface:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;

    .line 63
    invoke-virtual {p0, p3}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0, v6}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->setCancelable(Z)V

    .line 65
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->timePickerdialogButtonsListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p4, v1}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 68
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->timePickerdialogButtonsListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p5, v1}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 71
    return-void

    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    move v3, v6

    .line 45
    goto :goto_0

    :cond_1
    move v4, v6

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->timePickerInterface:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;

    return-object v0
.end method

.method private setTimePicker(Landroid/widget/TimePicker;)V
    .locals 0
    .param p1, "timePicker"    # Landroid/widget/TimePicker;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 39
    return-void
.end method


# virtual methods
.method public getTimePicker()Landroid/widget/TimePicker;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    return-object v0
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "timePicker"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 187
    const-string v0, "CustomTimePickerDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " OnTimeChanged called ==> changed hour : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and changed minute : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    invoke-direct {p0, p1}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->setTimePicker(Landroid/widget/TimePicker;)V

    .line 192
    :cond_0
    return-void
.end method

.method public show()V
    .locals 14

    .prologue
    .line 104
    invoke-super {p0}, Landroid/app/TimePickerDialog;->show()V

    .line 108
    move-object v1, p0

    .line 109
    .local v1, "dialog":Landroid/app/Dialog;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/titleDivider"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 114
    .local v3, "divierId":I
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 115
    .local v2, "divider":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 116
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, 0x5

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    :cond_0
    invoke-virtual {v1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/alertTitle"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 131
    .local v9, "titleId":I
    invoke-virtual {v1, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 132
    .local v7, "textView":Landroid/widget/TextView;
    const/4 v10, -0x1

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 133
    .local v6, "saveButton":Landroid/widget/Button;
    const/4 v10, -0x2

    invoke-virtual {p0, v10}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 137
    .local v0, "cancelButton":Landroid/widget/Button;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 138
    if-eqz v7, :cond_1

    .line 139
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getMediumTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 142
    :cond_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v10

    invoke-virtual {v10}, Lcom/qualcomm/toq/base/utils/ToqData;->getRegularTypeFace()Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    :cond_2
    if-eqz v7, :cond_3

    .line 150
    const/high16 v10, 0x41b00000

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    :cond_3
    const/high16 v10, 0x41800000

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 153
    const/high16 v10, 0x41800000

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setTextSize(F)V

    .line 155
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const/16 v11, 0xb

    invoke-virtual {v10, v11}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    const/16 v12, 0xc

    invoke-virtual {v11, v12}, Ljava/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->updateTime(II)V

    .line 161
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-le v10, v11, :cond_4

    .line 163
    invoke-virtual {p0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "android:id/done_button"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 168
    .local v8, "timePickerDoneButtonId":I
    invoke-virtual {p0, v8}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 170
    .local v4, "doneButton":Landroid/widget/Button;
    if-eqz v4, :cond_4

    .line 171
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "divider":Landroid/view/View;
    .end local v3    # "divierId":I
    .end local v4    # "doneButton":Landroid/widget/Button;
    .end local v6    # "saveButton":Landroid/widget/Button;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "timePickerDoneButtonId":I
    .end local v9    # "titleId":I
    :cond_4
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v5

    .line 177
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 178
    const-string v10, "CustomTimePickerDialog"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
