.class Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;
.super Ljava/lang/Object;
.source "FavoriteAppLauncherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    .line 457
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 459
    :pswitch_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 460
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 462
    :cond_0
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->finish()V

    goto :goto_0

    .line 467
    :pswitch_1
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "favorite_apps_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 471
    .local v2, "prefs":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 472
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 473
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mHomeAppPosition:I
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;

    invoke-virtual {v3, v6}, Lcom/qualcomm/toq/smartwatch/utils/AppletInfo;->setHomeTitle(Z)V

    .line 477
    :cond_1
    const-string v3, "FavoriteAppLauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ArrayList ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    if-eqz v2, :cond_2

    :try_start_0
    const-string v3, "favorite_apps_types"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 484
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 485
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "favorite_apps_types"

    iget-object v4, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->carouselViewsAppInfoList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$2000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lcom/qualcomm/toq/smartwatch/utils/ObjectSerializer;->serialize(Ljava/io/Serializable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 487
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 489
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->updateFavoriteApps()V
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$2100(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    .line 490
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 491
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->dialog:Landroid/app/Dialog;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1800(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 493
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 494
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$1900(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00fe

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 501
    :cond_4
    iget-object v3, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-virtual {v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 504
    :catch_0
    move-exception v0

    .line 505
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "FavoriteAppLauncherActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qualcomm/toq/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x7f09010a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
