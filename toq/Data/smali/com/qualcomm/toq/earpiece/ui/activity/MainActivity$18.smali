.class Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 4652
    iput-object p1, p0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 26
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4658
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 5212
    :goto_0
    :sswitch_0
    return-void

    .line 4662
    :sswitch_1
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4663
    .local v20, "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4664
    const/high16 v2, 0x10000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4665
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4670
    .end local v20    # "intent":Landroid/content/Intent;
    :sswitch_2
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4671
    .restart local v20    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4672
    const/high16 v2, 0x10000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4673
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 4704
    .end local v20    # "intent":Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "eula_dialog_check_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 4708
    .local v21, "prefs":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->getEulaVersion()Ljava/lang/String;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Ljava/lang/String;

    move-result-object v19

    .line 4709
    .local v19, "eulaVersion":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 4710
    .local v12, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "eula_accepted"

    const/4 v3, 0x1

    invoke-interface {v12, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4711
    const-string v2, "eula_version"

    move-object/from16 v0, v19

    invoke-interface {v12, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4712
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 4717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const/4 v3, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4902(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 4719
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 4720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4722
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 4727
    :cond_2
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 4731
    .local v22, "prefs1":Landroid/content/SharedPreferences;
    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 4732
    .local v13, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ep_firstTime"

    const/4 v3, 0x0

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4733
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 4740
    .end local v12    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v13    # "editor1":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "eulaVersion":Ljava/lang/String;
    .end local v21    # "prefs":Landroid/content/SharedPreferences;
    .end local v22    # "prefs1":Landroid/content/SharedPreferences;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4741
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4900(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 4742
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const/4 v3, 0x0

    # setter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v2, v3}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4902(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 4744
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4747
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 4748
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5000(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 4750
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->dismissActivity()V
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5100(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    .line 4752
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "app_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v23

    .line 4756
    .local v23, "prefs11":Landroid/content/SharedPreferences;
    invoke-interface/range {v23 .. v23}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v14

    .line 4757
    .local v14, "editor11":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ep_firstTime"

    const/4 v3, 0x1

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 4758
    invoke-interface {v14}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 4762
    .end local v14    # "editor11":Landroid/content/SharedPreferences$Editor;
    .end local v23    # "prefs11":Landroid/content/SharedPreferences;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 4765
    :sswitch_6
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4766
    .restart local v20    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4767
    const/high16 v2, 0x10000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4768
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4772
    .end local v20    # "intent":Landroid/content/Intent;
    :sswitch_7
    const/4 v5, -0x1

    .line 4774
    .local v5, "endpointType":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f090260

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    .line 4776
    .local v25, "title":Ljava/lang/String;
    const/4 v9, -0x1

    .line 4777
    .local v9, "otherEndpointType":I
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4778
    const/4 v5, 0x1

    .line 4779
    const/4 v9, 0x2

    .line 4786
    :cond_6
    :goto_1
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_8

    .line 4788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v3, "Configuration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not connected. Please connect it to role change."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Ok"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4781
    :cond_7
    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4782
    const/4 v5, 0x2

    .line 4783
    const/4 v9, 0x1

    goto :goto_1

    .line 4796
    :cond_8
    const/4 v2, 0x1

    if-ne v5, v2, :cond_9

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isRightEPBonded()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v2, 0x2

    if-ne v5, v2, :cond_b

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_a

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->isLeftEPBonded()Z

    move-result v2

    if-nez v2, :cond_b

    .line 4802
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v3, "Configuration"

    const-string v4, "Require other ear piece to role change."

    const-string v6, "Ok"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4811
    :cond_b
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_16

    .line 4818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Operational"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndpointMode(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Operational"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 4823
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f090265

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/Button;

    .line 4824
    .local v24, "roleSwitchButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 4829
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4831
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const-string v3, "SecondaryProcessingRequest"

    invoke-virtual {v2, v5, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 4834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const-string v3, "PrimaryProcessingRequest"

    invoke-virtual {v2, v9, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 4861
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLPrimarySecondaryIcon:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 4862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPLPrimarySecondaryIcon:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5200(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4864
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRPrimarySecondaryIcon:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 4865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEPRPrimarySecondaryIcon:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4870
    :cond_d
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPLDeviceName()Ljava/lang/String;

    move-result-object v15

    .line 4872
    .local v15, "epLdeviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPLState()I

    move-result v16

    .line 4874
    .local v16, "epLstate":I
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getAssociatedEPRDeviceName()Ljava/lang/String;

    move-result-object v17

    .line 4876
    .local v17, "epRdeviceName":Ljava/lang/String;
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getEPRState()I

    move-result v18

    .line 4879
    .local v18, "epRstate":I
    if-eqz v15, :cond_e

    .line 4880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move/from16 v0, v16

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V
    invoke-static {v2, v15, v0}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V

    .line 4882
    :cond_e
    if-eqz v17, :cond_f

    .line 4883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    move-object/from16 v0, v17

    move/from16 v1, v18

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->updateEarPieceState(Ljava/lang/String;I)V
    invoke-static {v2, v0, v1}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;Ljava/lang/String;I)V

    .line 4894
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 4895
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->handleEPRoleConfigurationRev3(II)Z

    .line 4898
    move v5, v9

    .line 4966
    .end local v15    # "epLdeviceName":Ljava/lang/String;
    .end local v16    # "epLstate":I
    .end local v17    # "epRdeviceName":Ljava/lang/String;
    .end local v18    # "epRstate":I
    .end local v24    # "roleSwitchButton":Landroid/widget/Button;
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$4700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 4838
    .restart local v24    # "roleSwitchButton":Landroid/widget/Button;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEndPointRole(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Primary"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 4840
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "SecondaryProcessingRequest"

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 4845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "PrimaryProcessingRequest"

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4850
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switch to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 4852
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x1

    const-string v4, "PrimaryProcessingRequest"

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    .line 4855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "SecondaryProcessingRequest"

    invoke-virtual {v2, v3, v4}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->setEndPointRole(ILjava/lang/String;)V

    goto/16 :goto_2

    .line 4900
    .restart local v15    # "epLdeviceName":Ljava/lang/String;
    .restart local v16    # "epLstate":I
    .restart local v17    # "epRdeviceName":Ljava/lang/String;
    .restart local v18    # "epRstate":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->epConnectionHandler:Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$3400(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/earpiece/handler/EPConnectionHandlerImpl;->getEPDependendentOnPrimaryFlag(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 4901
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->handleEPRoleConfigurationRev3(II)Z

    goto/16 :goto_3

    .line 4908
    :cond_14
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->handleEPRoleConfigurationRev3(II)Z

    .line 4911
    invoke-static {}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->getEPCommunicationController()Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v9}, Lcom/qualcomm/toq/earpiece/controller/EPCommunicationController;->handleEPRoleConfigurationRev3(II)Z

    goto/16 :goto_3

    .line 4918
    .end local v15    # "epLdeviceName":Ljava/lang/String;
    .end local v16    # "epLstate":I
    .end local v17    # "epRdeviceName":Ljava/lang/String;
    .end local v18    # "epRstate":I
    .end local v24    # "roleSwitchButton":Landroid/widget/Button;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v3, "Configuration"

    const-string v4, "Both Earpieces are not in same(Operational) state. Please keep both in Operational state to role change."

    const-string v6, "Ok"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4928
    :cond_16
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_17

    .line 4935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v3, "Upgrade Software"

    const-string v4, "No ear piece is connected. Please connect ear piece to cofigure role"

    const-string v6, "Ok"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4941
    :cond_17
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_18

    .line 4945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v3, "Upgrade Software"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Require both the headsets for role change. Connect"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "to role change."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Ok"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4953
    :cond_18
    invoke-static {}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getInstance()Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/qualcomm/toq/base/utils/PhubBluetoothDeviceBondInfo;->getDeviceState(I)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_10

    .line 4957
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    const-string v7, "Upgrade Software"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Require both the headsets for role change. Connect"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;->values()[Lcom/qualcomm/toq/base/utils/Constants$EndPointEnum;

    move-result-object v3

    aget-object v3, v3, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "to role change."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v10, "Ok"

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->showDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 5157
    .end local v5    # "endpointType":I
    .end local v9    # "otherEndpointType":I
    .end local v25    # "title":Ljava/lang/String;
    :sswitch_8
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.settings.BLUETOOTH_SETTINGS"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5158
    .restart local v20    # "intent":Landroid/content/Intent;
    const/high16 v2, 0x40000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5159
    const/high16 v2, 0x10000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5160
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5163
    .end local v20    # "intent":Landroid/content/Intent;
    :sswitch_9
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "[BassBoost] Clicked Adjust Bass"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5164
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_19

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5166
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "[BassBoost] Already showing progress bar...so no need to proceed returning"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5171
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performBassBoostAction()V
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5600(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 5176
    :sswitch_a
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Clicked Software Update"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5177
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1a

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5179
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Already showing progress bar...so no need to proceed returning"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5184
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performSoftwareUpdateAction()V
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5700(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 5189
    :sswitch_b
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Clicked View Status"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5190
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1b

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5192
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Already showing progress bar...so no need to proceed returning"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5197
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performRefreshStatusAction()V
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$1300(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 5201
    :sswitch_c
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Clicked Change Roles"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5202
    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_1c

    # getter for: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->mEarpieceProgressDialog:Landroid/app/Dialog;
    invoke-static {}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5500()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 5204
    sget-object v2, Lcom/qualcomm/toq/base/utils/Constants;->EP_TAG:Ljava/lang/String;

    const-string v3, "Already showing progress bar...so no need to proceed returning"

    invoke-static {v2, v3}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5209
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity$18;->this$0:Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->performChangeRoleAction()V
    invoke-static {v2}, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;->access$5800(Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 4658
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900c1 -> :sswitch_0
        0x7f0900c7 -> :sswitch_2
        0x7f0900cd -> :sswitch_1
        0x7f0900d3 -> :sswitch_6
        0x7f090145 -> :sswitch_8
        0x7f090147 -> :sswitch_b
        0x7f09014b -> :sswitch_c
        0x7f09014e -> :sswitch_a
        0x7f090151 -> :sswitch_a
        0x7f09015e -> :sswitch_b
        0x7f09015f -> :sswitch_c
        0x7f090160 -> :sswitch_9
        0x7f090195 -> :sswitch_4
        0x7f090196 -> :sswitch_3
        0x7f090265 -> :sswitch_7
        0x7f090268 -> :sswitch_5
    .end sparse-switch
.end method
