.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;)V
    .locals 0

    .prologue
    .line 2088
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$2;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2092
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$2;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2093
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$2;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # getter for: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->mQuickTourLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$500(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2096
    :cond_0
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "take_tour_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2100
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2101
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "take_tour_hidden"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2104
    return-void
.end method
