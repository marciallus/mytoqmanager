.class Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$6;
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
    .line 2325
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2330
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2331
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2333
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const-class v2, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2335
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    invoke-virtual {v1, v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 2337
    iget-object v1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity$6;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;

    const v2, 0x7f040003

    const v3, 0x7f040001

    invoke-virtual {v1, v2, v3}, Lcom/qualcomm/toq/smartwatch/ui/activity/MainActivity;->overridePendingTransition(II)V

    .line 2340
    return-void
.end method
