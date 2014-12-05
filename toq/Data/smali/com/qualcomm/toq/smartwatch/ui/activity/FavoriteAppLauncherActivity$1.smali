.class Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$1;
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
    .line 205
    iput-object p1, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity$1;->this$0:Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;

    # invokes: Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->removeApplet()V
    invoke-static {v0}, Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;->access$000(Lcom/qualcomm/toq/smartwatch/ui/activity/FavoriteAppLauncherActivity;)V

    .line 209
    return-void
.end method
