.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;
.super Ljava/lang/Object;
.source "DeviceStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

.field final synthetic val$mTCPPortEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;->val$mTCPPortEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 414
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    .line 417
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;->val$mTCPPortEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 421
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_PORT:I

    .line 422
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const-string v3, "Valid TCP/IP Port Number "

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;)V

    .line 424
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 427
    .local v0, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "phub_tcp_port"

    sget v3, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_PORT:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    const/4 v2, 0x1

    .line 439
    .end local v0    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 434
    .restart local v1    # "str":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;->val$mTCPPortEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const-string v4, "ERROR - Invalid TCP/IP Port number "

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
