.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showEarpieceRoleChangeSingleHeadsetDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

.field final synthetic val$cancelButton:Landroid/widget/Button;

.field final synthetic val$prefs2:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/widget/Button;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 3911
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$cancelButton:Landroid/widget/Button;

    iput-object p3, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$prefs2:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3914
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 3915
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$cancelButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 3916
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$cancelButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 3917
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$cancelButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 3918
    const/4 v1, 0x0

    .line 4191
    :goto_0
    return v1

    .line 3920
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 3922
    const/4 v1, 0x1

    sput-boolean v1, Lcom/qualcomm/toq/base/utils/Constants;->isChangeRolesActive:Z

    .line 3923
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text2"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 3927
    .local v17, "rStatus":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text1"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3932
    .local v16, "lStatus":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3934
    :cond_1
    const/4 v7, 0x2

    .line 3935
    .local v7, "otherEndpoint":I
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRolesSingle] RIGHT otherEndpoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3938
    const/4 v1, 0x2

    if-ne v7, v1, :cond_7

    .line 3939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3947
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointConnectedEPAddress(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    .line 3961
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRolesSingle] L emoty  leftEPAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addressAndLinkKeySeperator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", epLinkKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3977
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->checkZerosInBluetoothAddress(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3500(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3978
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] Connected EP is all Zeros so assiging from preference"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3980
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$prefs2:Landroid/content/SharedPreferences;

    const-string v3, "associated_ep_l_device_address"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    .line 3985
    :cond_4
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] Validate Connected address with Paired headset L"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3987
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3988
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$prefs2:Landroid/content/SharedPreferences;

    const-string v3, "associated_ep_l_device_address"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3991
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] L had proper association with R"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4003
    :cond_5
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "last_known_headset_mode"

    const-string v3, "Off"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4006
    .local v15, "PBEValue":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2, v7}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendbassBoostRequest(Ljava/lang/String;II)V

    .line 4014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4017
    .local v5, "my_R_newLinkKey":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v4, v4, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageRoleRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4026
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    const-string v2, "Primary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4027
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BassBoost] Storing primary headset in change roles single headset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rightEPRole = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4032
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "last_known_primary_headset"

    invoke-virtual {v1, v2, v7}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    .line 4037
    :cond_6
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRolesSingle] sendChageRoleRequestMessage rightEPName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rightEPAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", rightEPRole = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", my_R_newLinkKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to enpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4048
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 4052
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v7, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 4055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPRole:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 4058
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text2"

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "Operational"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndpointMode(ILjava/lang/String;)V

    .line 4180
    .end local v5    # "my_R_newLinkKey":Ljava/lang/String;
    .end local v7    # "otherEndpoint":I
    .end local v15    # "PBEValue":Ljava/lang/String;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesUpdateProgressLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4181
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epRolesButtonLayout:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$2200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4183
    const/4 v1, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetSecondsCounter:B
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3602(B)B

    .line 4184
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3702(Landroid/os/Handler;)Landroid/os/Handler;

    .line 4185
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3700()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetTimeTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4186
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3700()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mChangeRoleSingleHeadsetTimeTask:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4189
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 3995
    .restart local v7    # "otherEndpoint":I
    :cond_8
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] Setting Zeros for L"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3997
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] L NOT Associated with R"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v2, "00:00:00:00:00:00"

    iput-object v2, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    goto/16 :goto_1

    .line 4067
    .end local v7    # "otherEndpoint":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_UNABLE_CONNECT:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsLeftEPBonded:Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 4070
    const/4 v14, 0x1

    .line 4072
    .local v14, "currentEndpoint":I
    const/4 v1, 0x1

    if-ne v14, v1, :cond_7

    .line 4073
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRolesSingle] Left currentEndpoint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4077
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    if-eqz v1, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4079
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointConnectedEPAddress(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    .line 4080
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRolesSingle] R empty rightEPAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", addressAndLinkKeySeperator = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", epLinkKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4088
    :cond_c
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRolesSingle] R empty rightEPAddres... = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4091
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 4093
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->checkZerosInBluetoothAddress(Ljava/lang/String;)Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3500(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4094
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] Connected EP is all Zeros so assiging from preference"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4096
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$prefs2:Landroid/content/SharedPreferences;

    const-string v3, "associated_ep_r_device_address"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    .line 4101
    :cond_d
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] Validate Connected address with Paired headset R"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4103
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mIsRightEPBonded:Z
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 4104
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->val$prefs2:Landroid/content/SharedPreferences;

    const-string v3, "associated_ep_r_device_address"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4107
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] R had proper association with L"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4119
    :cond_e
    :goto_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "last_known_headset_mode"

    const-string v3, "Off"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4122
    .restart local v15    # "PBEValue":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v15, v2, v14}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendbassBoostRequest(Ljava/lang/String;II)V

    .line 4127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->addressAndLinkKeySeperator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 4130
    .local v12, "my_L_newLinkKey":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v9, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v10, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v11, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->sendChageRoleRequestMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 4139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v1, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    const-string v2, "Primary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 4140
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BassBoost] Storing primary headset in change roles single headset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", leftEPRole = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4145
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "last_known_primary_headset"

    invoke-virtual {v1, v2, v14}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putInteger(Ljava/lang/String;I)V

    .line 4150
    :cond_f
    const-string v1, "MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ChangeRolesSingle] sendChageRoleRequestMessage leftEPName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", leftEPAddress = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", leftEPRole = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", my_L_newLinkKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to enpoint "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4161
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 4165
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v2, v2, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epLinkKey:Ljava/lang/String;

    invoke-virtual {v1, v14, v2}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointLinkKey(ILjava/lang/String;)V

    .line 4167
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    iget-object v3, v3, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->leftEPRole:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 4170
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->getEarpiecePreference(Landroid/content/Context;)Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;

    move-result-object v1

    const-string v2, "current_status_text1"

    sget-object v3, Lcom/qualcomm/toq/base/utils/Constants;->EP_STATUS_OK:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/utils/EarpiecePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4174
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "Operational"

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndpointMode(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4111
    .end local v12    # "my_L_newLinkKey":Ljava/lang/String;
    .end local v15    # "PBEValue":Ljava/lang/String;
    :cond_10
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] Setting Zeros for R"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4113
    const-string v1, "MainActivity"

    const-string v2, "[ChangeRolesSingle] R NOT Associated with L"

    invoke-static {v1, v2}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4115
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$13;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v2, "00:00:00:00:00:00"

    iput-object v2, v1, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->rightEPAddress:Ljava/lang/String;

    goto/16 :goto_3

    .line 4191
    .end local v14    # "currentEndpoint":I
    .end local v16    # "lStatus":Ljava/lang/String;
    .end local v17    # "rStatus":Ljava/lang/String;
    :cond_11
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
