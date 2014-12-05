.class Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2$1;
.super Ljava/lang/Object;
.source "PreferencesListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;


# direct methods
.method constructor <init>(Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2$1;->this$1:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;

    iget-object v0, v0, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity$2;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;

    invoke-virtual {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/PreferencesListActivity;->finish()V

    .line 495
    return-void
.end method
