.class Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;
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

.field final synthetic val$mTCPAddressEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->val$mTCPAddressEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 369
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x42

    if-ne p2, v4, :cond_0

    .line 372
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->val$mTCPAddressEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 374
    sget-object v4, Landroid/util/Patterns;->IP_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 375
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    move-result-object v3

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->stopConnection(Ljava/lang/String;)V

    .line 378
    sput-object v2, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    .line 380
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "valid TCP/IP Address "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;)V

    .line 381
    invoke-static {}, Lcom/qualcomm/toq/base/utils/ToqData;->getInstance()Lcom/qualcomm/toq/base/utils/ToqData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/utils/ToqData;->getAssociatedDevicePrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 384
    .local v1, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "phub_tcp_address"

    sget-object v4, Lcom/qualcomm/toq/base/utils/Constants;->PHUB_TCP_INTERFACE:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 388
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->getConnectionManager(Landroid/content/Context;)Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/connectionmanager/tcp/TCPConnectionManager;->associatePhoneWD()V

    .line 391
    const/4 v3, 0x1

    .line 406
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    .end local v1    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 394
    .restart local v0    # "matcher":Ljava/util/regex/Matcher;
    .restart local v2    # "str":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const-string v5, "ERROR - Invalid TCP/IP Address "

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;)V

    .line 395
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->val$mTCPAddressEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 400
    .end local v0    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->val$mTCPAddressEditText:Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/base/ui/customview/PhubEditTextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;

    const-string v5, "ERROR - Invalid TCP/IP Address "

    invoke-virtual {v4, v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/DeviceStatusActivity;->showToastMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
