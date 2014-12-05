.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

.field final synthetic val$cancelButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 3134
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->val$cancelButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const v8, 0x7f07001f

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3138
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 3139
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 3140
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 3141
    iget-object v2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->val$cancelButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 3241
    :cond_0
    :goto_0
    return v1

    .line 3145
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 3147
    sput-boolean v2, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    .line 3148
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 3151
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRoleFirst:Ljava/lang/String;

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v4, v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRoleFirst:Ljava/lang/String;

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v4, v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isLinkKeyGenerated:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3156
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v3

    const-string v4, "last_known_headset_mode"

    const-string v5, "Off"

    invoke-virtual {v3, v4, v5}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3159
    .local v0, "PBEValue":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendbassBoostRequest(Ljava/lang/String;II)V

    .line 3163
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v6}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendbassBoostRequest(Ljava/lang/String;II)V

    .line 3168
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissEarpieceRoleChangeDialog()V
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3169
    const-string v3, "MainActivity"

    const-string v4, "[ChangeRoles] No need to change roles, You already have the same roles"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3175
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->unRegisterHeadsetActionResponseReceiver()V

    .line 3177
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->setCurrentAction(I)V

    .line 3178
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->closePendingActions()V
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3180
    invoke-static {}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->getInstance()Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/earpiece/utils/HeadsetAction;->quitLooper()V

    .line 3182
    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->avoidStyledDataFlag:Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1702(Z)Z

    .line 3184
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateUI()V
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 3185
    iget-object v1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarpieceUI()V
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    move v1, v2

    .line 3186
    goto/16 :goto_0

    .line 3193
    .end local v0    # "PBEValue":Ljava/lang/String;
    :cond_2
    const-string v3, "MainActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ChangeRoles] rightEPRole = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v5, v5, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3194
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const-string v4, "Primary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3195
    const-string v3, "MainActivity"

    const-string v4, "[ChangeRoles] sendChageRoleRequestToHeadset to left <<1>>"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3197
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->sendChageRoleRequestToHeadset(I)V
    invoke-static {v3, v6}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    .line 3205
    :goto_1
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesUpdateProgressLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3206
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesButtonLayout:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3208
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLeftLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 3210
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRightLabel:Lcom/qualcomm/toq/base/ui/customview/PhubTextView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubTextView;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubTextView;->setTextColor(I)V

    .line 3214
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-boolean v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->isJellyBean:Z

    if-eqz v3, :cond_4

    .line 3215
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3216
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-virtual {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3217
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setEnabled(Z)V

    .line 3233
    :goto_2
    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSecondsCounter:B
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2702(B)B

    .line 3234
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2802(Landroid/os/Handler;)Landroid/os/Handler;

    .line 3235
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2800()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleTimeTask:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3236
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2800()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleTimeTask:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move v1, v2

    .line 3239
    goto/16 :goto_0

    .line 3200
    :cond_3
    const-string v3, "MainActivity"

    const-string v4, "[ChangeRoles] sendChageRoleRequestToHeadset to Right <<1>>"

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3202
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->sendChageRoleRequestToHeadset(I)V
    invoke-static {v3, v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;I)V

    goto/16 :goto_1

    .line 3225
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    .line 3226
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setVisibility(I)V

    .line 3228
    :cond_5
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitchDisabled:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setVisibility(I)V

    .line 3229
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitchDisabled:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitch:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v4}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2500(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setChecked(Z)V

    .line 3230
    iget-object v3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epChangeRolesSwitchDisabled:Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;
    invoke-static {v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/qualcomm/toq/base/ui/customview/PhubCustomSwitchView;->setEnabled(Z)V

    goto :goto_2
.end method
