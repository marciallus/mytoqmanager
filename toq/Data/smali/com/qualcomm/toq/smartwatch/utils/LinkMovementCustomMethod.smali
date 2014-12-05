.class public Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkMovementCustomMethod.java"


# instance fields
.field private isOnTouchEventEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled:Z

    return-void
.end method


# virtual methods
.method public isOnTouchEventEnabled()Z
    .locals 1

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 31
    :try_start_0
    iget-boolean v2, p0, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled:Z

    if-eqz v2, :cond_0

    .line 32
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 45
    :goto_0
    return v1

    .line 34
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 40
    .local v0, "exception":Ljava/lang/Exception;
    iput-boolean v1, p0, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled:Z

    .line 42
    const-string v2, "LinkMovementCustomMethod"

    const-string v3, "No Web Browser Found that can open the link"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Utils;->showBrowserNotInstalledToast()V

    goto :goto_0
.end method

.method public setOnTouchEventEnabled(Z)V
    .locals 0
    .param p1, "isOnTouchEventEnabled"    # Z

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/qualcomm/toq/smartwatch/utils/LinkMovementCustomMethod;->isOnTouchEventEnabled:Z

    .line 24
    return-void
.end method
