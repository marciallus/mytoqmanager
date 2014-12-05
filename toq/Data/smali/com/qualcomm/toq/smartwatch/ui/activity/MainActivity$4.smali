.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v13, 0x7f02009d

    const/4 v12, 0x1

    const/high16 v11, 0x40000000

    const/high16 v9, 0x10000000

    const/4 v10, 0x0

    .line 2034
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 2267
    :cond_0
    :goto_0
    return-void

    .line 2037
    :sswitch_0
    new-instance v6, Landroid/content/Intent;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-class v9, Lcom/qualcomm/toq/base/ui/activity/WhatsNewActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2039
    .local v6, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v8, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2043
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_1
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mAnimationBlur:Landroid/view/animation/Animation;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2045
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$1;

    invoke-direct {v9, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$1;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2069
    :sswitch_2
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2070
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2071
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2072
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2077
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_3
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2078
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2079
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2080
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2086
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mAnimationBlur:Landroid/view/animation/Animation;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/view/animation/Animation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2088
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mUiAnimationHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v8

    new-instance v9, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$2;

    invoke-direct {v9, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$2;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 2113
    :sswitch_5
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaActed:Z
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2114
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaActed:Z
    invoke-static {v8, v12}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Z)Z

    .line 2115
    const-string v8, "MainActivity"

    const-string v9, "Accept is clicked"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "eula_dialog_check_prefs"

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 2120
    .local v7, "prefs":Landroid/content/SharedPreferences;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getEulaVersion()Ljava/lang/String;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    .line 2121
    .local v1, "eulaVersion":Ljava/lang/String;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2122
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "eula_accepted"

    invoke-interface {v0, v8, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2123
    const-string v8, "eula_version"

    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2125
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2126
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 2127
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 2129
    :cond_1
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 2130
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2132
    :cond_2
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 2133
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setClickable(Z)V

    .line 2136
    :cond_3
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startBackgroundService()V
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1000(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    goto/16 :goto_0

    .line 2145
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "eulaVersion":Ljava/lang/String;
    .end local v7    # "prefs":Landroid/content/SharedPreferences;
    :sswitch_6
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaActed:Z
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2146
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->isEulaActed:Z
    invoke-static {v8, v12}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Z)Z

    .line 2147
    const-string v8, "MainActivity"

    const-string v9, "Decline  is clicked"

    invoke-static {v8, v9}, Lcom/qualcomm/toq/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2156
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->dismissActivity()V
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    .line 2158
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2159
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    .line 2161
    :cond_4
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 2162
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2164
    :cond_5
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 2165
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mEulaCancelButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/Button;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setClickable(Z)V

    goto/16 :goto_0

    .line 2172
    :sswitch_7
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 2175
    :sswitch_8
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2176
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2177
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2178
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2181
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_9
    new-instance v6, Landroid/content/Intent;

    const-string v8, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2182
    .restart local v6    # "intent":Landroid/content/Intent;
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2183
    invoke-virtual {v6, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2184
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2188
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_a
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->initializeCardDetailsDialog()V
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)V

    .line 2192
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ListView;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 2193
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->setWatchDetailsListContent(I)V
    invoke-static {v8, v10}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;I)V

    .line 2194
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    new-instance v9, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListTitles:Ljava/util/ArrayList;
    invoke-static {v11}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1700(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object v12, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWatchDetailsListContents:Ljava/util/ArrayList;
    invoke-static {v12}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Lcom/qualcomm/toq/base/ui/adapter/WDEPDetailsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;
    invoke-static {v8, v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1602(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 2197
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsDialogListView:Landroid/widget/ListView;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1400(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ListView;

    move-result-object v8

    iget-object v9, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPDetailsListAdapter:Landroid/widget/ListAdapter;
    invoke-static {v9}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1600(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/ListAdapter;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2199
    :cond_6
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mWDEPCardDetailsDialog:Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1200(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 2203
    :sswitch_b
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    const v9, 0x7f090102

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2204
    .local v5, "hideHeadsetDialogTitle":Landroid/widget/TextView;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a013d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2208
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    const v9, 0x7f090108

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2209
    .local v4, "hideHeadsetDialogContent":Landroid/widget/TextView;
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a013e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2213
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    const v9, 0x7f090104

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 2216
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    const v9, 0x7f09010a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2217
    .local v2, "hideHeadsetCardCancelButton":Landroid/widget/Button;
    invoke-virtual {v2, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2218
    new-instance v8, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$3;

    invoke-direct {v8, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$3;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;)V

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2227
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    const v9, 0x7f09010b

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 2228
    .local v3, "hideHeadsetCardOkButton":Landroid/widget/Button;
    invoke-virtual {v3, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2229
    const-string v8, "OK"

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2230
    new-instance v8, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;

    invoke-direct {v8, p0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$4;-><init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;)V

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2259
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getHideHeadsetCardDialog()Landroid/app/Dialog;
    invoke-static {v8}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/app/Dialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 2262
    .end local v2    # "hideHeadsetCardCancelButton":Landroid/widget/Button;
    .end local v3    # "hideHeadsetCardOkButton":Landroid/widget/Button;
    .end local v4    # "hideHeadsetDialogContent":Landroid/widget/TextView;
    .end local v5    # "hideHeadsetDialogTitle":Landroid/widget/TextView;
    :sswitch_c
    new-instance v6, Landroid/content/Intent;

    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-class v9, Lcom/qualcomm/toq/earpiece/ui/activity/MainActivity;

    invoke-direct {v6, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2264
    .restart local v6    # "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v8, v6}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2034
    :sswitch_data_0
    .sparse-switch
        0x7f0900c1 -> :sswitch_4
        0x7f0900c2 -> :sswitch_0
        0x7f0900c4 -> :sswitch_1
        0x7f0900c7 -> :sswitch_3
        0x7f0900cd -> :sswitch_2
        0x7f0900d3 -> :sswitch_8
        0x7f0900d8 -> :sswitch_9
        0x7f0900d9 -> :sswitch_a
        0x7f0900df -> :sswitch_c
        0x7f0900e0 -> :sswitch_b
        0x7f090195 -> :sswitch_6
        0x7f090196 -> :sswitch_5
        0x7f090268 -> :sswitch_7
    .end sparse-switch
.end method
