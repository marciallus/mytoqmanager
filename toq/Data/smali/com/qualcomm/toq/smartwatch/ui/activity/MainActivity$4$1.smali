.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$1;
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
    .line 2045
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2048
    iget-object v2, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;

    iget-object v2, v2, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$4;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->getWhatsNewCardLayout()Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->access$300(Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2052
    invoke-static {}, Lcom/qualcomm/toq/ToqApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "take_tour_prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2055
    .local v1, "prefs":Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 2056
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2057
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "whats_new_card_hidden_1_6"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2059
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2062
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
