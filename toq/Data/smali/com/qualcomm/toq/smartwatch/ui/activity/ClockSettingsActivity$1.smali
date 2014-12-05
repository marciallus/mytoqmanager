.class Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;
.super Ljava/lang/Object;
.source "ClockSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->showDialogForClockList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

.field final synthetic val$dialogTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    iput-object p2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->val$dialogTitle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 280
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->val$dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0082

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/StockListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 284
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenStockPrefButtonClicked:Z
    invoke-static {v1, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$102(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z

    .line 285
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 317
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 288
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->val$dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 289
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWeatherPrefButtonClicked:Z
    invoke-static {v1, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$302(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z

    .line 293
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 295
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->val$dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 296
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 298
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 299
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenWorldPrefButtonClicked:Z
    invoke-static {v1, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$402(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z

    .line 300
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 302
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->val$dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 303
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/ActivityMonitoringActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 306
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenActivityPrefButtonClicked:Z
    invoke-static {v1, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$502(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z

    .line 307
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 309
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->val$dialogTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mResources:Landroid/content/res/Resources;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/WeatherListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 312
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 313
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # setter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->isOpenDegreePrefButtonClicked:Z
    invoke-static {v1, v4}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$602(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;Z)Z

    .line 314
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;->access$200(Lcom/qualcomm/toq/smartwatch/ui/activity/ClockSettingsActivity;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0
.end method
