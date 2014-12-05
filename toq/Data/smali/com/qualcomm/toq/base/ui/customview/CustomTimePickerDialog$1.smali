.class Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;
.super Ljava/lang/Object;
.source "CustomTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;->this$0:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 78
    packed-switch p2, :pswitch_data_0

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;->this$0:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;->this$0:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->dismiss()V

    .line 99
    :cond_0
    return-void

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;->this$0:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    invoke-virtual {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->getTimePicker()Landroid/widget/TimePicker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 86
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;->this$0:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    # getter for: Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->timePickerInterface:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->access$000(Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;->onPositiveButtonClicked()V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v0, p0, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$1;->this$0:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;

    # getter for: Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->timePickerInterface:Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;
    invoke-static {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;->access$000(Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog;)Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/qualcomm/toq/base/ui/customview/CustomTimePickerDialog$CustomTimePickerDialogInterface;->onNegetiveButtonClicked()V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
